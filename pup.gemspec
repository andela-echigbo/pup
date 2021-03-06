# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "pup/version"

Gem::Specification.new do |spec|
  spec.name          = "pup"
  spec.version       = Pup::VERSION
  spec.authors       = ["Emmanuel Chigbo"]
  spec.email         = ["emmanuel.chigbo@andela.com"]

  spec.summary       = "A ruby framework for web masters."
  spec.description   = "Pup is a rack based ruby web framework for developing
web applications with ease"
  # spec.homepage      = ""
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  # if spec.respond_to?(:metadata)
  #   spec.metadata["allowed_push_host"] = "http://mygemserver.com"
  # else
  #   raise "RubyGems 2.0 or newer is required to protect against public "\
  #   "gem pushes."
  # end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-nav"
  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "rspec-context-private"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "capybara"
  spec.add_development_dependency "codeclimate-test-reporter"
  spec.add_development_dependency "coveralls"

  spec.add_runtime_dependency "rack"
  spec.add_runtime_dependency "erubis"
  spec.add_runtime_dependency "activesupport"
  spec.add_runtime_dependency "sqlite3"
end
