# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'workflow_sequel/version'

Gem::Specification.new do |spec|
  spec.name          = "workflow_sequel"
  spec.version       = WorkflowSequel::VERSION
  spec.authors       = ["Vijayanand Nandam"]
  spec.email         = ["vijay@cybrilla.com"]
  spec.description   = %q{sequel adapter for workflow gem}
  spec.summary       = %q{add sequel persistance for workflow gem}
  spec.homepage      = "http://cybrilla.com/"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  
  spec.add_runtime_dependency "workflow", ">= 1.1.0"
  spec.add_runtime_dependency "sequel", ">= 4.6.0"
  spec.add_development_dependency "bundler", ">= 1.3"
  spec.add_development_dependency "rake"
end
