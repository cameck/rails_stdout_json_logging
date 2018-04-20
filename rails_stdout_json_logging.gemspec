require File.expand_path('../lib/rails_stdout_json_logging/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['David Dollar', 'Jonathan Dance',
                       'Richard Schneeman', 'Cameron Eckelberry']
  gem.email         = ['david@heroku.com', 'jd@heroku.com',
                       'richard@heroku.com', 'cameck@gmail.com']
  gem.description   = 'Sets Rails to log to stdout'
  gem.summary       = "Overrides Rails' built in logger to send all logs to stdout in JSON"
  gem.homepage      = 'https://github.com/cameck/rails_stdout_json_logging'
  gem.license       = 'MIT'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = 'rails_stdout_json_logging'
  gem.require_paths = ['lib']
  gem.version       = RailsStdoutJsonLogging::VERSION
  gem.add_development_dependency 'test-unit', '~> 3'
end
