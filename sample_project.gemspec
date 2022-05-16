# frozen_string_literal: true

require_relative "lib/sample_project/version"

Gem::Specification.new do |spec|
  spec.name = "sample_project"
  spec.version = SampleProject::VERSION
  spec.authors = ["albert-axi"]
  spec.email = ["albert@academyxi.com"]

  spec.summary = "Another project example"
  spec.description = "Academy Xi Courses"
  spec.homepage = "https://github.com/albert-axi/sample_website_ft5"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/albert-axi/sample_website_ft5"
  spec.metadata["changelog_uri"] = "https://github.com/albert-axi/sample_website_ft5/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  # spec.bindir = "exe"
  # spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.executables << "sample_project"
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "nokogiri"
  spec.add_dependency "open-uri"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
