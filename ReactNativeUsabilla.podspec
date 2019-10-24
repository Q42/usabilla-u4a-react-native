require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "ReactNativeUsabilla"
  s.version      = package['version']
  s.summary      = package['description']

  s.authors      = "Q42"
  s.homepage     = package['homepage']
  s.license      = package['license']
  s.platform     = :ios, "9.0"

  s.module_name  = 'ReactNativeUsabilla'

  s.source       = { :git => "https://github.com/Q42/usabilla-u4a-react-native.git", :tag => "#{s.version}" }
  s.source_files  = "ios/ReactNativeUsabilla/**/*.{h,m,swift}"

  s.dependency 'React'
  s.dependency 'Usabilla'
  s.frameworks = 'UIKit'
  s.xcconfig = { 'SWIFT_OBJC_BRIDGING_HEADER' => 'ios/ReactNativeUsabilla/ReactNativeUsabilla-Bridging-Header.h' }
end