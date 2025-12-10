#  
#  Copyright © 2023 Medallia. Use subject to licensing terms.
#
#
# Be sure to run `pod lib lint medallia-dxa-ios-objc-sdk.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "medallia-dxa-ios-objc-sdk"
  s.version          = "3.7.0"
  s.summary          = "Medallia DXA iOS SDK (Objective-C Wrapper)"
  s.description      = "Objective-C wrapper for Medallia DXA iOS SDK. Supports iOS 13.0 and above."
  s.homepage         = "https://github.com/medallia/dxa-ios-sdk"

  s.license          = { 
    :type => "Commercial",
    :text => "Use subject to licensing terms."
  }

  s.authors          = { "Medallia" => "cocoapods-dxa@medallia.com" }

  s.source           = {
    :http => "https://repository.medallia.com/artifactory/public-cocoapods/com/medallia/mobile/sdk/dxa-objc/{s.version}/medallia-dxa-ios-objc-sdk-v{s.version}.tar.gz"
  }

  s.platform         = :ios, "13.0"
  s.ios.vendored_frameworks = "MedalliaDXAObjc.xcframework"
  s.exclude_files = "MedalliaDXAObjc.xcframework/**/*.plist"
end

