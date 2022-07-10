# frozen_string_literal: true

require_relative "lib/nobu_first_gem/version"

Gem::Specification.new do |spec|
  spec.name = "nobu_first_gem"
  spec.version = NobuFirstGem::VERSION
  spec.authors = ["nishihara-tm"]
  spec.email = ["a01252111@yahoo.co.jp"]

  spec.summary = "This is the originally just my hobby gem, so probably not going to be that helpful."
  spec.description = "I haven't deceided yet, what is going to be. you will see this later better version of desc."
  spec.homepage = "https://github.com/nishihara-tm/nobu-first-gem"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/nishihara-tm/nobu-first-gem"
  spec.metadata["changelog_uri"] = "https://github.com/nishihara-tm/nobu-first-gem/README.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
