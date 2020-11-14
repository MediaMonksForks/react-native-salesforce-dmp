require 'json'
package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name             = "RNSalesforceDMPModule"
  s.version          = package["version"]
  s.description      = package["description"]
  s.summary          = package['description']
  s.homepage         = package['homepage']
  s.license          = package['license']
  s.author           = package['author']
  s.platform         = :ios, "10.3"
  s.source           = { :git => "https://github.com/MediaMonksForks/react-native-salesforce-dmp.git", :tag => "master" }
  s.source_files     = "ios/**/*.{h,m}"
  s.requires_arc     = true

  s.dependency       'React'
  s.vendored_frameworks = 'ios/Frameworks/iOSKruxLibUniversal.framework'
  s.static_framework = true
end
