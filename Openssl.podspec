#
# Be sure to run `pod lib lint Openssl.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Openssl'
  s.version          = '0.0.1'
  s.summary          = 'Openssl加密'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'Openssl加密'

  s.homepage         = 'https://github.com/qiuyh/Openssl'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'qiu' => '1039724903@qq.com' }
  s.source           = { :git => 'https://github.com/qiuyh/Openssl.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'Openssl/Classes/**/*.{h,m}'
  s.requires_arc = true
  s.static_framework = true
  
  s.ios.vendored_libraries = "Openssl/Classes/Openssl/Lib/libcrypto.a","Openssl/Classes/Openssl/Lib/libssl.a"
  #spec.public_header_files = "ConnectionLib/Classes/BLE/ESPBlufi/Openssl/Include/**/*.h"

  #spec.pod_target_xcconfig = {"HEADER_SEARCH_PATHS" => "$(SRCROOT)/../../ConnectionLib/Classes/BLE/ESPBlufi/ESPBlufi/Openssl/include"}
  #spec.prefix_header_file = false
  search_paths = [
  #Podfile使用指定路径链接
  'Openssl/Classes/Openssl/include'
  ]
  s.pod_target_xcconfig = {
    'HEADER_SEARCH_PATHS' => search_paths.join(' '),
  }
  
end
