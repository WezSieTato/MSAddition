Pod::Spec.new do |spec|
  spec.name = 'MSAddition'
  spec.version = '0.1.1'
  spec.authors = { 'Marcin Stepnowski' => 'le0n.uo@gmail.com' }
  spec.homepage = 'https://github.com/WezSieTato/MSAddition'
  spec.summary = 'Usefull categories with methods you can\'t find in SSToolkit.'
  spec.description      = <<-DESC
                       Usefull categories with methods you can\'t find in SSToolkit.
                        Categories for:
                        * NSObject
                        * NSArray
                        * NSMutableArray
                        * NSDictionary
                        * NSString
                        * NSMutableString
                        * NSDate
                        * UIView
                        * UIScrollView
                        * UIFont
                        * UIPageViewController
                       DESC
  spec.homepage         = "https://github.com/WezSieTato/MSAddition"
  spec.source = { :git => 'https://github.com/WezSieTato/MSAddition.git', :tag => "v#{spec.version}" }
  spec.license = { :type => 'MIT', :file => 'LICENSE' }
  spec.author = { "WezSieTato" => "le0n.uo@gmail.com" }
  spec.requires_arc = true

  spec.platform     = :ios, '7.0'
  spec.requires_arc = true
  
  spec.ios.frameworks = 'UIKit'
  spec.ios.source_files = 'MSAddition/*.{h,m}'

  spec.osx.source_files = 'MSAddition/NS*.{h,m}', 'MSAddition/MSAddition.h'
end
