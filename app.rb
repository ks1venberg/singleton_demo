class Logger
  def initialize
    #a - append method
    @f = File.open 'log.txt','a'
  end

  @@x = nil

  def self.instance
    #puts "OK"
    if @@x == nil
    @@x = Logger.new
    end

    return @@x
  end

#class method
  def self.say_smth
    puts "Aha"
  end

#instance method
  def log_smth what
    #def self.log_smth what
    #f = File.open 'log.txt','a'
    #f.puts what
    @f.puts what
    #@f.close
  end
end

Logger.say_smth
Logger.instance.log_smth 'Beep1'
Logger.instance.log_smth 'Beep2'

logger = Logger.new
logger.log_smth 'wazzzaaap!!!'
#logger.say_smth
