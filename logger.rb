class Logger
  def initialize
    #a - append method
    @f = File.open 'log.txt','a'
  end

  @@x = Logger.new

  def self.instance
    return @@x
  end

  #class method
  def self.say_smth
    puts "Aha"
  end

  #instance method
  def log_smth what
    @f.puts what
  end

  private_class_method :new
end

