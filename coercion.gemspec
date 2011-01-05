Gem::Specification.new do |gem|
  gem.name = 'coercion'
  gem.version = '0.0.1'
  gem.summary = 'A plugin for ActiveRecord to strip string and coerce empty strings to nil on assignment.'
  gem.homepage = %q{http://github.com/tylerhunt/coercion}
  gem.authors = ['Tyler Hunt']

  gem.files = Dir['init.rb', 'lib/**/*']
  gem.add_dependency 'activerecord', '~> 3.0.3'
  gem.add_dependency 'activesupport', '~> 3.0.3'
  gem.add_dependency 'railties', '~> 3.0.3'
end
