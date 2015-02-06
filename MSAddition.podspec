Pod::Spec.new do |spec|
  spec.name = 'MSAddition'
  spec.version = '0.0.7.1'
  spec.authors = { 'Marcin Stepnowski' => 'le0n.uo@gmail.com' }
  spec.homepage = 'https://github.com/WezSieTato/MSAddition'
  spec.summary = 'Usefull categories with methods you can\'t find in SSToolkit.'
  spec.source = { :git => 'https://github.com/WezSieTato/MSAddition.git', :tag => "v#{spec.version}" }
  spec.license = { :type => 'MIT', :file => 'LICENSE' }

  spec.requires_arc = true

  spec.ios.frameworks = 'Foundation'
  spec.ios.source_files = 'MSAddition/*.{h,m}'

  spec.osx.source_files = 'MSAddition/NS*.{h,m}', 'MSAddition/MSAddition.h'
end
