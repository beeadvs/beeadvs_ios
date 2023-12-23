#
# Be sure to run `pod lib lint beeadvsSDK.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |spec|
    spec.name             = 'beeadvsSDK'
    spec.version          = '0.1.0'
  spec.ios.deployment_target = '11.0'
  spec.platform     = :ios, "11.0"
  spec.requires_arc = true

  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.summary      = "beeadvsSDK for iOS"
  spec.description  = <<-DESC
  欢迎大家使用beeadvsSDK, 提供成熟聚合方案。
  为开发者提供便利，快速集成。
  DESC

  spec.homepage     = "https://github.com/beeadvs/beeadvs_ios"

  spec.author       = { "beeadvs" => "beeadvs@126.com" }
  spec.source       = { :git => "https://github.com/beeadvs/beeadvs_ios.git", :tag => "#{spec.version}" }
  
  spec.user_target_xcconfig = {'OTHER_LDFLAGS' => ['-ObjC']}
  spec.info_plist = {'GADApplicationIdentifier' => 'ca-app-pub-3940256099942544~1458002511'}

  valid_archs = ['i386', 'armv7', 'x86_64', 'arm64']

  spec.pod_target_xcconfig = { 'ENABLE_BITCODE' => 'NO'}
  spec.user_target_xcconfig = { 'ENABLE_BITCODE' => 'NO'}
  
#  spec.default_subspec = 'Core'
  
  spec.requires_arc = true
#  spec.static_framework = true  #是否为静态库
  

#  spec.subspec 'Core' do |core|
#    core.source_files = 'BjmobAdsSDK/**/*.{h,m}'
#    core.frameworks = 'UIKit', 'Foundation', 'AdSupport'
#  end
#
#  spec.subspec 'Adspot' do |adspot|
#    adspot.dependency 'BjmobAdsSDK/Core'
#    adspot.source_files = 'BjmobAdsSDK/**/*.{h,m}'
#  end
  spec.resource = 'beeadvsSDK/Resources/GGResource.bundle'


  spec.vendored_frameworks = [
    'beeadvsSDK/Frameworks/Adspot/BJAdsAdspot.xcframework',
    'beeadvsSDK/Frameworks/core/BJAdsCore.xcframework',
    'beeadvsSDK/Frameworks/Adapter/BJAdsAdapter_CSJ.xcframework',
    'beeadvsSDK/Frameworks/Adapter/BJAdsAdapter_GDT.xcframework',
    'beeadvsSDK/Frameworks/Adapter/BJAdsAdapter_GG.xcframework'
  ]
  
  spec.dependency 'Ads-CN'
  spec.dependency 'BaiduMobAdSDK'
  spec.dependency 'GDTMobSDK'
  spec.dependency 'Google-Mobile-Ads-SDK'
  
  spec.frameworks = 'CoreLocation', 'SystemConfiguration', 'CoreGraphics', 'CoreMotion', 'CoreTelephony', 'AdSupport', 'SystemConfiguration', 'QuartzCore', 'WebKit', 'MessageUI','SafariServices','AVFoundation','EventKit','QuartzCore','CoreMedia','StoreKit'
  spec.libraries     = 'c++'
  spec.weak_frameworks = "WebKit"
  valid_archs = ['armv7', 'armv7s', 'x86_64', 'arm64']

#  spec.subspec 'CSJ' do |csj|
#      csj.dependency 'BjmobAdsSDK/Core'
#      csj.dependency 'BjmobAdsSDK/Adspot'
#      csj.dependency 'Ads-CN'
#      csj.source_files = 'BjmobAdsSDK/**/*.{h,m}'
#      csj.frameworks = 'UIKit', 'MapKit', 'WebKit', 'MediaPlayer', 'CoreLocation', 'AdSupport', 'CoreMedia', 'AVFoundation', 'CoreTelephony', 'StoreKit', 'SystemConfiguration', 'MobileCoreServices', 'CoreMotion', 'Accelerate','AudioToolbox','JavaScriptCore','Security','CoreImage','AudioToolbox','ImageIO','QuartzCore','CoreGraphics','CoreText'
#      csj.libraries = 'c++', 'resolv', 'z', 'sqlite3', 'bz2', 'xml2', 'iconv', 'c++abi'
#      #    valid_archs = ['armv7', 'i386', 'x86_64', 'arm64']
#  end

  

  spec.xcconfig = {
    'VALID_ARCHS' =>  valid_archs.join(' '),
  }

end
