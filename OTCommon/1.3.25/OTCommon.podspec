
version = '1.3.25'

Pod::Spec.new do |s|
  s.name          = 'OTCommon'
  s.version       = version
  s.platform      = :ios, "5.0"
  
  s.author        = { 'OpenTable' => 'iOS@opentable.com' }
  s.license       = { :type => 'OpenTable', :file => 'License.txt'}
  s.homepage      = 'http://github.com/opentable/OTCommon.git'
  s.summary       = <<-DESC
OpenTable Domain layer.
                    DESC
  s.description   = <<-DESC
This library contains all business logic for OpenTable's apps.
                    DESC
  s.source        = { :git => 'git@github.com:opentable/OTCommon.git', :tag => "v#{s.version}" }
  s.requires_arc  = true
  s.source_files  = ["OTCommon/**/*.{h,m,c,mm,cpp}"]
  s.dependency    'OTFoundation', '~> 1.1.0'
  s.dependency    'OTTracking', '~> 1.2.0'
  s.dependency 	  'Facebook-iOS-SDK', '~> 3.1.0'
  s.dependency    'OHAttributedLabel', '~> 3.3.0'
  s.dependency    'FSFoundation', '~> 0.0.1'
  s.dependency    'MFSideMenu', '~> 0.5.1'
  s.frameworks    = 'CoreLocation'
  s.prefix_header_file = "OTCommon/Supporting Files/OTCommon-Pod-Prefix.h"

end
