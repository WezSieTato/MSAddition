#
# Be sure to run `pod lib lint MSAddition.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "MSAddition"
  s.version          = "0.1.0"
  s.summary          = 'Usefull categories with methods you can\'t find in SSToolkit.'
  s.description      = <<-DESC
                       Usefull categories with methods you can\'t find in SSToolkit.
                        Categories for:
                        * NSObject
                        * NSArray
                        * NSDictionary
                        * NSString
                        * NSMutableString
                        * NSDate
                        * UIView
                       DESC
  s.homepage         = "https://github.com/WezSieTato/MSAddition"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "WezSieTato" => "le0n.uo@gmail.com" }
  s.source           = { :git => "https://github.com/WezSieTato/MSAddition.git", :tag => "v#{s.version}" }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.ios.frameworks = 'UIKit'
  s.ios.source_files = 'Pod/Classes/**/*.{h,m}'
  s.osx.source_files = 'Pod/Classes/**/NS*.{h,m}' 'Pod/Classes/**/MSAddition.h'

  s.resource_bundles = {
    'MSAddition' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
