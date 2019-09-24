require "json"

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))
version = package["version"]

Pod::Spec.new do |s|
  s.name         = "ReactNativePayments"
  s.version      = package['version']
  s.summary      = "react-native-payments"
  s.description  = "Native Payments (Google and Apple Pay) from React-Native"
  s.homepage     = "https://github.com/alexeyz-PE/react-native-payments.git"
  s.license      = package['license']
  s.author       = package['author']
  s.platform     = :ios, "10.0"
  s.source       = { :git => "https://github.com/alexeyz-PE/react-native-payments.git", :tag => version }
  s.source_files  = "lib/ios/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"

end
