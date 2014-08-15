#
# DDColorConsoleLogger Pod Spec
# 
# 
# Check the spec with `pod lib lint DDColorConsoleLogger.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "DDColorConsoleLogger"
  s.version          = "0.1.0"
  s.summary          = "A logger for CocoaLumberjack with color output in console."
  s.homepage         = "https://github.com/jozefizso/DDColorConsoleLogger"
  s.license          = 'MIT'
  s.author           = { "Jozef Izso" => "jozef.izso@gmail.com" }
  s.source           = { :git => "https://github.com/jozefizso/DDColorConsoleLogger.git", :tag => s.version.to_s }

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.public_header_files = 'DDColorConsoleLogger/*.h'
  s.source_files = 'DDColorConsoleLogger/*.{h,m}'

  s.dependency 'CocoaLumberjack', '~> 1.9.0'
end
