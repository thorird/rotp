# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rotp/version"

Gem::Specification.new do |s|
  s.name        = "rotp"
  s.version     = ROTP::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Mark Percival"]
  s.email       = ["mark@markpercival.us"]
  s.homepage    = "http://github.com/thorird/rotp"
  s.summary     = %q{A Ruby library for generating and verifying one time passwords}
  s.description = %q{Works for both HOTP and TOTP, and include QR Code provisioning}

  s.rubyforge_project = "rotp"

  s.add_dependency('junkfood', '0.3.0')

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
