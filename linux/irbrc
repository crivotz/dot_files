require 'irb/completion'
require 'rubygems'
require 'irb/ext/save-history'
# cool print
require 'awesome_print'
AwesomePrint.irb!
ActiveRecord::Base.logger.level = 1 if defined?(ActiveRecord)
# Overriding Object class
class Object
  # Easily print methods local to an object's class
  def lm
    (methods - Object.instance_methods).sort
  end

  # look up source location of a method
  def sl(method_name)
    self.method(method_name).source_location rescue "#{method_name} not found"
  end

  # open particular method in vim
  def ovim(method_name)
    file, line = self.sl(method_name)
    if file && line
      `tmux split-window -v nvim +'#{line}' '#{file}' -c 'normal zt'`
    else
      "'#{method_name}' not found :(Try #{self.name}.lm to see available methods"
    end
  end

  # display method source in rails console
  def ds(method_name)
    self.method(method_name).source.display
  end

  # open json object in vim
  def oo
    tempfile = File.join(Rails.root.join('tmp'), SecureRandom.hex)
    File.open(tempfile,'w') {|f| f << self.as_json}
    system("#{'nvim'||'nano'} #{tempfile}")
    sleep(1)
    File.delete( tempfile )
  end
end

# history command
def hist(count = 0)
  # Get history into an array
  history_array = Readline::HISTORY.to_a

  # if count is > 0 we'll use it.
  # otherwise set it to 0
  count = count > 0 ? count : 0

  if count > 0
    from = history_array.length - count
    history_array = history_array[from..-1]
  end

  print history_array.join("\n")
end

# copy a string to the clipboard
def cp(string)
  `echo "#{string}" | pbcopy`
  puts "copied in clipboard"
end

# reloads the irb console can be useful for debugging .irbrc
def reload_irb
  load File.expand_path("~/.irbrc")
  # will reload rails env if you are running ./script/console
  reload! if @script_console_running
  puts "Console Reloaded!"
end

# opens irbrc in vim
def edit_irb
  `nvim ~/.irbrc` if system("nvim")
end

def bm
  # From http://blog.evanweaver.com/articles/2006/12/13/benchmark/
  # Call benchmark { } with any block and you get the wallclock runtime
  # as well as a percent change + or - from the last run
  cur = Time.now
  result = yield
  print "#{cur = Time.now - cur} seconds"
  puts " (#{(cur / $last_benchmark * 100).to_i - 100}% change)" rescue puts ""
  $last_benchmark = cur
  result
end

# exit using `q`
alias q exit

# all available methods explaination
def ll
  puts '============================================================================================================='
  puts 'Welcome to rails console. Here are few list of pre-defined methods you can use.'
  puts '============================================================================================================='
  puts 'obj.sl(:method) ------> source location e.g lead.sl(:name)'
  puts 'obj.ovim(:method) ---> open method in vim e.g Lead.first.ovim(:to_label)'
  puts 'obj.dispsoc(:method) -> display method source in rails console e.g lead.dispsoc(:name)'
  puts 'obj.oo ---------------> open object json in vim e.g lead.oo'
  puts 'hist(n) --------------> command history e.g hist(10)'
  puts 'cp(str) --------------> copy string in clipboard e.g cp(lead.name)'
  puts 'bm(block) ------------> benchmarking for block passed as an argument e.g bm { Lead.all.pluck(:stage);0 }'
  puts '============================================================================================================='
end

class String
  def black;          "\e[30m#{self}\e[0m" end
  def red;            "\e[31m#{self}\e[0m" end
  def green;          "\e[32m#{self}\e[0m" end
  def brown;          "\e[33m#{self}\e[0m" end
  def blue;           "\e[34m#{self}\e[0m" end
  def magenta;        "\e[35m#{self}\e[0m" end
  def cyan;           "\e[36m#{self}\e[0m" end
  def gray;           "\e[37m#{self}\e[0m" end

  def bg_black;       "\e[40m#{self}\e[0m" end
  def bg_red;         "\e[41m#{self}\e[0m" end
  def bg_green;       "\e[42m#{self}\e[0m" end
  def bg_brown;       "\e[43m#{self}\e[0m" end
  def bg_blue;        "\e[44m#{self}\e[0m" end
  def bg_magenta;     "\e[45m#{self}\e[0m" end
  def bg_cyan;        "\e[46m#{self}\e[0m" end
  def bg_gray;        "\e[47m#{self}\e[0m" end

  def bold;           "\e[1m#{self}\e[22m" end
  def italic;         "\e[3m#{self}\e[23m" end
  def underline;      "\e[4m#{self}\e[24m" end
  def blink;          "\e[5m#{self}\e[25m" end
  def reverse_color;  "\e[7m#{self}\e[27m" end
end

if defined? Rails
  project_name = File.basename(Dir.pwd)
  prompt       = "#{project_name.cyan}[#{ENV['RAILS_ENV'].red}]"

  IRB.conf[:PROMPT] ||= {}
  IRB.conf[:PROMPT][:RAILS] = {
    :PROMPT_I => "#{prompt} %03n > ",
    :PROMPT_S => "#{prompt} %03n * ",
    :PROMPT_C => "#{prompt} %03n ? ",
    :RETURN => "=> %s\n"
  }

  IRB.conf[:PROMPT_MODE] = :RAILS
end

IRB.conf[:SAVE_HISTORY] = 10000
