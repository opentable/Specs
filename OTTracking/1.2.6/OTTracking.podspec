
version = '1.2.6'

Pod::Spec.new do |s|
  s.name          = 'OTTracking'
  s.version       = version
  s.platform      = :ios, "5.0"
  
  s.author        = { 'OpenTable' => 'iOS@opentable.com' }
  s.license       = { :type => 'OpenTable', :file => 'License.txt'}
  s.homepage      = 'http://github.com/opentable/OTTracking.git'
  s.summary       = <<-DESC
OpenTable Tracking abstraction library
                    DESC
  s.description   = <<-DESC
This library contains an abstraction layer for all tracking providers used by OpenTable.
                    DESC
  s.source        = { :git => 'git@github.com:opentable/OTTracking.git', :tag => "v#{s.version}" }
  s.requires_arc  = true
  s.source_files  = ["OTTracking/**/*.{h,m,c,mm,cpp}", "Frameworks/ADMS_AppLibrary/*.h", "Frameworks/hasOffers/*.h"]
  s.dependency    'OTFoundation', '~> 1.1.0'
  s.dependency    'Mixpanel-OpenTable', '~> 1.0.1'
  s.prefix_header_file = "OTTracking/Supporting Files/OTTracking-Pod-Prefix.h"

end