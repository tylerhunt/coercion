require './lib/coercion/version'

Gem::Specification.new do |gem|
  gem.name = 'coercion'
  gem.version = Coercion::VERSION
  gem.summary = 'An ActiveRecord plugin to strip whitespace from strings and coerce empty strings to nil values on assignment.'
  gem.homepage = %q{http://github.com/tylerhunt/coercion}
  gem.authors = ['Tyler Hunt']

  gem.files = Dir['LICENSE', 'lib/**/*']
  gem.add_dependency 'activerecord', '~> 3.0'
  gem.add_dependency 'activesupport', '~> 3.0'
  gem.add_dependency 'railties', '~> 3.0'
end
