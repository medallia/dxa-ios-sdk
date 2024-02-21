#  
#  Copyright © 2023 Medallia. Use subject to licensing terms.
#
#
# Be sure to run `pod lib lint medallia-dxa-ios-sdk.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name                = "medallia-dxa-ios-sdk"
  s.version             = "3.2.2"
  s.summary             = "The MedalliaDXA SDK for iOS."
  s.authors             = { "Medallia" => "cocoapods-dxa@medallia.com" }
  s.homepage            = "https://github.com/medallia/dxa-ios-sdk"
  s.description         = "The MedalliaDXA SDK for iOS. The SDK supports iOS 11.0 and above."
  s.license             = { :type => "Commercial", :text => "Copyright © 2023 Medallia. Use subject to licensing terms." }
  s.source              = { :git => "https://github.com/medallia/dxa-ios-sdk.git", :tag => "#{s.version}" }
  s.platform            = :ios, "11.0"
  s.exclude_files = "MedalliaDXA.xcframework/**/*.plist"
  s.ios.vendored_frameworks = 'MedalliaDXA.xcframework'
end
