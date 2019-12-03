
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)


Gem::Specification.new do |spec|
  spec.name          = 'greatest-female-singers-cli'
  spec.version       =  "0.1.0"                                   #GreatestFemaleSingers::VERSION
  spec.authors       = ["'Mary Arbachauskas'"]
  spec.email         = ["'mary.arbachauskas@gmail.com'"]

  spec.summary       = "Top Ten Greatest Female Singers CLI"
  spec.description   = "This Ruby Gem provides a CLI to view the top ten female artists as per the IMDB website."
  spec.homepage      = "https://github.com/MaryArbs/greatest-female-singers-cli"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/MaryArbs/greatest-female-singers-cli"
    spec.metadata["changelog_uri"] = "https://github.com/MaryArbs/greatest-female-singers-cli/commits/master/CHANGELOG.md"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
