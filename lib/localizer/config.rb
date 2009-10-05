module Localizer
  class Config
    attr_accessor :controllers, :locales
  end
  
  def self.config
    unless @config
      @config = Config.new
      @config.controllers = {}
    end
    
    yield @config if block_given?
    return @config
  end
  
  def self.localize! *pages
    options = pages.last.kind_of?(Hash) ? pages.pop : {}
    raise ArgumentError "Missing oprtion :from => controller" unless options[:from]
    config.controllers[options[:from].to_s] = pages
    Rails.logger.error "******" + @config.inspect
    config.locales = options[:to]
  end
end