# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'video_blur/version'

Gem::Specification.new do |spec|
  spec.name          = "video_blur"
  spec.version       = VideoBlur::VERSION
  spec.authors       = ["Vincent Daubry"]
  spec.email         = ["vdaubry@gmail.com"]
  
  spec.summary       = %q{FFmpeg Ruby wrapper to blur a part of a video }
  spec.description   = %q{video_blur gem is a small Ruby gem to blur a part of a video using FFmpeg. It automates the aspect ratio conversion and the FFmpeg filter parameters }
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "byebug"
end
