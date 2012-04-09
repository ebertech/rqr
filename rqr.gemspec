# -*- encoding: utf-8 -*-
require File.expand_path('../lib/rqr/version', __FILE__)

RUBYFORGE_PROJECT = 'rqr' # The unix name for your project

Gem::Specification.new do |gem|
  gem.authors       = ['Ryota Maruko', "Andrew Eberbach"]
  gem.email         = ["pools _at_ rubyforge _dot_ org", "andrew@ebertech.ca"]
  gem.description   = %q{A ruby library to create qrcode. Output: PS, JPEG, PNG, EPS, TIFF.}
  gem.summary       = %q{A ruby library to create qrcode. Output: PS, JPEG, PNG, EPS, TIFF.}
  gem.homepage      = "http://#{RUBYFORGE_PROJECT}.rubyforge.org"
  gem.extensions    = "ext/rqr/extconf.rb"
  gem.rdoc_options  = ["--main", "README.txt"]
  gem.extra_rdoc_files = %W{History.txt License.txt Manifest.txt README.txt}

  gem.files         = `git ls-files`.split($\).reject! {|f| f =~ /QR\.so/ }.reject {|f| f =~ %r{^(website|tasks|script)/}} 
  # if PACKAGE_PLATFORM =~ /mswin32/
  #   gem.files = gem.files.reject! {|f| f =~ /extconf\.rb/ }
  # else
  #   gem.files = gem.files.reject! {|f| f =~ /QR\.so/ }
  # end
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "rqr"
  gem.require_paths = ["lib", "ext"]
  gem.version       = Rqr::VERSION
end
