#!/usr/bin/env bash
# Claude Code statusline script
# Reads JSON session info from stdin and prints a single status line.

input=$(cat)

# --- Basic info -----------------------------------------------------------
model=$(echo "$input" | jq -r '.model.display_name // "?"')
cwd=$(echo "$input" | jq -r '.workspace.current_dir // .cwd // "?"')
dir_name=$(basename "$cwd")

# --- Git branch (skip optional locks, fast, no network) -------------------
branch=""
if git -C "$cwd" --no-optional-locks rev-parse --is-inside-work-tree >/dev/null 2>&1; then
  branch=$(git -C "$cwd" --no-optional-locks branch --show-current 2>/dev/null)
  [ -z "$branch" ] && branch=$(git -C "$cwd" --no-optional-locks rev-parse --short HEAD 2>/dev/null)
fi

# --- Context window usage ---------------------------------------------------
ctx_used=$(echo "$input" | jq -r '.context_window.used_percentage // empty')

# --- Claude.ai subscription rate limits (5h session / 7d weekly) ----------
five_pct=$(echo "$input" | jq -r '.rate_limits.five_hour.used_percentage // empty')
week_pct=$(echo "$input" | jq -r '.rate_limits.seven_day.used_percentage // empty')

# --- Color helpers (dim-friendly ANSI codes) -------------------------------
DIM='\033[2m'
CYAN='\033[2;36m'
GREEN='\033[2;32m'
YELLOW='\033[2;33m'
RED='\033[2;31m'
MAGENTA='\033[2;35m'
RESET='\033[0m'

# Pick a color for a percentage: green <60, yellow <85, red >=85
pct_color() {
  local p="$1"
  p=${p%.*}
  if [ -z "$p" ]; then
    echo "$DIM"
  elif [ "$p" -ge 85 ]; then
    echo "$RED"
  elif [ "$p" -ge 60 ]; then
    echo "$YELLOW"
  else
    echo "$GREEN"
  fi
}

parts=()

parts+=("$(printf "${CYAN}%s${RESET}" "$model")")

if [ -n "$branch" ]; then
  parts+=("$(printf "${MAGENTA}%s${RESET} ${DIM}(%s)${RESET}" "$dir_name" "$branch")")
else
  parts+=("$(printf "${MAGENTA}%s${RESET}" "$dir_name")")
fi

if [ -n "$ctx_used" ]; then
  c=$(pct_color "$ctx_used")
  parts+=("$(printf "${c}ctx:%.0f%%${RESET}" "$ctx_used")")
fi

if [ -n "$five_pct" ]; then
  c=$(pct_color "$five_pct")
  parts+=("$(printf "${c}5h:%.0f%%${RESET}" "$five_pct")")
fi

if [ -n "$week_pct" ]; then
  c=$(pct_color "$week_pct")
  parts+=("$(printf "${c}7d:%.0f%%${RESET}" "$week_pct")")
fi

# Join parts with a dim separator
output=""
for p in "${parts[@]}"; do
  if [ -z "$output" ]; then
    output="$p"
  else
    output="$output$(printf " ${DIM}|${RESET} ")$p"
  fi
done

printf "%b\n" "$output"
