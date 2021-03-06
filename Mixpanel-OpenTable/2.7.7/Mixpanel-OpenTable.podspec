version = '2.7.7'

Pod::Spec.new do |s|
  s.name         = "Mixpanel-OpenTable"
  s.version      = version
  s.summary      = "iPhone tracking library for Mixpanel Analytics"
  s.homepage     = "https://mixpanel.com"
  s.license      = 'Apache License, Version 2.0'
  s.author       = { "Mixpanel, Inc" => "support@mixpanel.com" }
  s.header_dir = 'Mixpanel'
  s.platform     = :ios, '6.0'
  s.source       =  { :git => 'git@github.com:opentable/MixPanel.git', :tag => "v#{version}-OpenTable" }
  s.source_files  = 'Mixpanel/**/*.{m,h}'
  s.preserve_paths = "*.a"
  s.resources    = ["Mixpanel/**/*.{png,storyboard}"]
  s.frameworks = 'UIKit', 'Foundation', 'SystemConfiguration', 'CoreTelephony', 'Accelerate', 'CoreGraphics', 'QuartzCore'
  s.libraries = "icucore", "MPCategoryHelpers"
  s.requires_arc = true
  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/Mixpanel-OpenTable"' }
end
