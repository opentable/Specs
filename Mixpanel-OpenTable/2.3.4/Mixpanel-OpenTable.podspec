version = '2.3.4'

Pod::Spec.new do |s|
  s.name         = "Mixpanel-OpenTable"
  s.version      = version
  s.summary      = "iPhone tracking library for Mixpanel Analytics"
  s.homepage     = "http://mixpanel.com"
  s.license      = 'Apache License, Version 2.0'
  s.author       = { "Mixpanel, Inc" => "support@mixpanel.com" }
  s.source       =  { :git => 'git@github.com:opentable/MixPanel.git', :tag => "v#{version}-OpenTable" }
  s.source_files  = 'Mixpanel/**/*.{m,h}'
  s.private_header_files =  'Mixpanel/Library/**/*.h'
  s.resources    = ["Mixpanel/**/*.{png,storyboard}"]
  s.frameworks = 'UIKit', 'Foundation', 'SystemConfiguration', 'CoreTelephony', 'AdSupport', 'Accelerate', 'CoreGraphics', 'QuartzCore'
  s.requires_arc = true
  s.platform     = :ios, '6.0'
  s.header_dir = 'Mixpanel'
end
