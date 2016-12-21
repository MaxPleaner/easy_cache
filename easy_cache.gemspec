require_relative './lib/version.rb'
Gem::Specification.new do |s|
  s.name        = "easy_cache"
  s.version     = EasyCache::VERSION
  s.date        = "2016-12-21"
  s.summary     = "super easy way to cache results of a method (saves to yaml file)"
  s.description = ""
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["maxpleaner"]
  s.email       = 'maxpleaner@gmail.com'
  s.homepage    = "http://github.com/maxpleaner/easy_cache"
  s.files       = Dir["lib/**/*.rb", "bin/*", "**/*.md", "LICENSE"]
  s.require_path = 'lib'
  s.required_rubygems_version = ">= 2.5.1"
  s.executables = Dir["bin/*"].map &File.method(:basename)
  s.add_dependency "gemmyrb"
  s.license     = 'MIT'
end
