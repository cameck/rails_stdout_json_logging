require 'rails_stdout_json_logging/rails3'

module RailsStdoutJsonLogging
  class Railtie < ::Rails::Railtie
    initializer(:rails_stdout_json_logging, before: :initialize_logger) do
      Rails3.set_logger(config)
    end
  end
end
