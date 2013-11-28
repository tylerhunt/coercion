require './lib/coercion/version'

Gem::Specification.new do |spec|
  spec.name = 'coercion'
  spec.version = Coercion::VERSION
  spec.authors = ['Tyler Hunt']
  spec.summary = 'An ActiveRecord plugin to strip whitespace from strings and coerce empty strings to nil values on assignment.'
  spec.homepage = 'https://github.com/tylerhunt/coercion'
  spec.license = 'MIT'

  spec.add_dependency 'activerecord', '~> 4.0'
  spec.add_dependency 'activesupport', '~> 4.0'
  spec.add_dependency 'railties', '~> 4.0'

  spec.files = `git ls-files`.split($\)
  spec.executables = spec.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
end
