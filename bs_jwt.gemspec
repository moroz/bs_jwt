
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "bs_jwt/version"

Gem::Specification.new do |spec|
  spec.name          = "bs_jwt"
  spec.version       = BsJwt::VERSION
  spec.authors       = ["Karol M"]
  spec.email         = ["dmuhafc@gmail.com"]

  spec.summary       = %q{Simple library for verifying Auth0 JWTs.}
  spec.homepage      = "http://buddy.buddyandselly.com"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_dependency "faraday", ">= 0.8"
  spec.add_dependency "json-jwt", "~> 1.9.4"
end
