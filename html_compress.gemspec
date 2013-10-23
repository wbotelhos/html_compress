lib = File.expand_path('../lib', __FILE__)

$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'html_compress/version'

Gem::Specification.new do |s|
  s.authors       = ['Washington Botelho']
  s.description   = 'A HTML compress rack middleware'
  s.email         = ['wbotelhos@gmail.com']
  s.executables   = s.files.grep(%r(^bin/)) { |f| File.basename f }
  s.files         = `git ls-files`.split("\n")
  s.homepage      = ''
  s.license       = 'MIT'
  s.name          = 'html_compress'
  s.require_paths = ['lib']
  s.summary       = 'A HTML compress rack middleware'
  s.test_files    = s.files.grep(%r(^(spec)/))
  s.version       = HtmlCompress::VERSION

  s.add_dependency 'html_press', '~> 0.8.2'

  s.add_development_dependency 'bundler', '~> 1.3'
  s.add_development_dependency 'rake'
end
