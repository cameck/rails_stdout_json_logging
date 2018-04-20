require 'rails_stdout_json_logging/rails'

module RailsStdoutJsonLogging
  class Rails3 < Rails
    def self.set_logger(config)
      super()
      ::Rails.logger = config.logger = heroku_stdout_logger
    end
  end
end
