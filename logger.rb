require 'singleton'

class Logger
  include Singleton

  def initialize
    #a - append method
    @f = File.open 'log.txt','a'
  end

  #instance method
  def log_smth what
    @f.puts what
    @f.flush
  end
end

