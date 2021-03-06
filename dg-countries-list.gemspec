Gem::Specification.new do |gem|
  gem.authors       = ['Ignat Zakrevsky']
  gem.email         = ['iezakrevsky@gmail.com']
  gem.description   = 'All sorts of useful information about countries used in DG project'
  gem.summary       = 'All sorts of useful information about countries used in DG project'
  gem.homepage      = 'https://github.com/dealglobe/dg-countries-list'

  gem.files         = `git ls-files`.split($OUTPUT_RECORD_SEPARATOR).reject { |f| f.match(%r{^(test|spec|features|)/|\.rspec|README\.md|circle\.yml}) }
  gem.executables   = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = 'dg-countries-list'
  gem.require_paths = ['lib']
  gem.version       = '0.1.2'

  gem.add_development_dependency('rspec', '>= 3')
  gem.add_development_dependency('pry')
  gem.add_development_dependency('codeclimate-test-reporter')
end
