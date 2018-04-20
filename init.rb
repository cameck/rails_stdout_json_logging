# only applies when used as a plugin
case Rails::VERSION::MAJOR
when 2
  require 'rails_stdout_json_logging/rails2'
  RailsStdoutJsonLogging::Rails2.set_logger
when 3
  require 'rails_stdout_json_logging/rails3'
  RailsStdoutJsonLogging::Rails3.set_logger
end
