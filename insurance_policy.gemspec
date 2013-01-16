# -*- encoding: utf-8 -*-
require File.expand_path('../lib/insurance_policy/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["C. Jason Harrelson"]
  gem.email         = ["jason@lookforwardenterprises.com"]
  gem.description   = %q{ActiveRecord extension for managing an insurance policy's attributes.}
  gem.summary       = %q{ActiveRecord extension for managing an insurance policy's attributes. using the composed_of pattern.}
  gem.homepage      = "https://github.com/midas/insurance_policy"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "insurance_policy"
  gem.require_paths = ["lib"]
  gem.version       = InsurancePolicy::VERSION
end
