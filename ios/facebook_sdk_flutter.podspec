#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint facebookDeepLinks.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'facebook_sdk_flutter'
  s.version          = '0.0.1'
  s.summary          = 'A flutter plugin to get facebook deep links and log app events using the latest Facebook SDK to include support for iOS 14'
  s.description      = <<-DESC
A new flutter plugin project.
                       DESC
  s.homepage         = 'https://saadfarhan.com'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Sadd Farhan' => 'saadfarhan124@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.dependency 'FBSDKCoreKit', '~> 8.0.0'
  s.platform = :ios, '8.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'
end
