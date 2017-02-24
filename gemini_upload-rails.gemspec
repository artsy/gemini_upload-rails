# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gemini_upload/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "gemini_upload-rails"
  spec.version       = GeminiUpload::Rails::VERSION
  spec.authors       = ["Matthew Zikherman"]
  spec.email         = ["matt@bestvendor.com"]
  spec.description   = "Packages up gemini upload widget"
  spec.summary       = "Gemini upload widget for Rails"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files = Dir["{lib,vendor}/**/*"] + ["LICENSE.txt", "README.md"]  
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency "railties", ">= 4.0"
end
