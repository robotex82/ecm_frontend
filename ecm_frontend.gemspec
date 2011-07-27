# Provide a simple gemspec so you can easily use your enginex
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.authors = "Roberto Vasquez Angel"
  s.name = "ecm_frontend"
  s.summary = "Insert EcmFrontend summary."
  s.description = "Insert EcmFrontend description."
  s.files = Dir["{app,lib,config}/**/*"] + ["MIT-LICENSE", "Rakefile", "Gemfile", "README.rdoc"]
  s.version = "0.0.7"
  s.add_dependency("ecm_core")
  s.add_dependency("simple-navigation")
end
