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
  s.name             = "medallia-dxa-ios-sdk"
  s.version          = "3.7.1"
  s.summary          = "Medallia DXA iOS SDK"
  s.description      = "Medallia DXA SDK for iOS. Supports iOS 13.0 and above."
  s.homepage         = "https://github.com/medallia/dxa-ios-sdk"

  s.license          = { 
    :type => "Commercial",
    :text => "Use subject to licensing terms."
  }

  s.authors          = { "Medallia" => "cocoapods-dxa@medallia.com" }

  s.source           = {
    :http => "https://repository.medallia.com/artifactory/public-cocoapods/com/medallia/mobile/sdk/dxa/3.7.0/medallia-dxa-ios-sdk-v3.7.1.tar.gz"
  }

  s.platform         = :ios, "13.0"

  # Precompiled framework
  s.ios.vendored_frameworks = "MedalliaDXA.xcframework"

  s.swift_version = "5.0"
end

