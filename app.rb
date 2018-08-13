class Logger
  def initialize
    #a - append method
    @f = File.open 'log.txt','a'
  end

  def self.say_smth
    puts "Aha"
  end

  def log_smth what
    #def self.log_smth what
    #f = File.open 'log.txt','a'
    #f.puts what
    @f.puts what
    @f.close
  end
end

Logger.say_smth
logger = Logger.new
logger.log_smth 'wazzzaaap!!!'
#logger.say_smth
