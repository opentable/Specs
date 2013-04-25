version = '1.0.13'
Pod::Spec.new do |s|
  s.name         =  'Mixpanel-OpenTable'
  s.version      =  version
  s.license      =  'Apache License'
  s.summary      =  'iPhone tracking library for Mixpanel Analytics.'
  s.homepage     =  'http://mixpanel.com'
  s.author       =  { 'Mixpanel' => 'support@mixpanel.com' }
  s.source       =  { :git => 'git@github.com:opentable/MixPanel.git', :tag => "v#{version}" }
  s.frameworks   =  'CoreTelephony', 'SystemConfiguration'
  s.platform     =  :ios
  s.source_files =  'Mixpanel/**/*.{h,m}'
end
