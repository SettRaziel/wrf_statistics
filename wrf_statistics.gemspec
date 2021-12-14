Gem::Specification.new do |s|
  s.name          = "wrf_statistics"
  s.version       = "0.0.1"
  s.summary       = "WRF Statistics with ruby"
  s.description   = "Scripts check and compare forecats based on the data of a station meteogram and observation data"
  s.authors       = ["Benjamin Held"]
  s.email         = "me@bheld.eu"
  s.homepage      = "https://github.com/settraziel/wrf_statistics"
  s.licenses      = "MIT"

  s.files         = Dir["lib/**/*.rb"] + ["README.md", "LICENSE"]
  s.require_paths = ["lib"]

  s.required_ruby_version = ">= 2.4"

  s.add_development_dependency "rake", '~> 13.0', '>= 13.0.1'
  s.add_development_dependency "rspec", '~> 3.9', '>= 3.9.0'
  s.add_dependency "wrf_library", '~> 0.3.0', '>= 0.3.0'
end
