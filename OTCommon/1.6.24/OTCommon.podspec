
version = '1.6.24'

Pod::Spec.new do |s|
  s.name          = 'OTCommon'
  s.version       = version
  s.platform      = :ios, "7.0"
  
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
  s.dependency    'OTFoundation', '~> 2.2.0'
  s.dependency 	  'Facebook-iOS-SDK-OT', '~> 3.5.4'
  s.dependency    'FSFoundation', '~> 0.1.0'
  s.frameworks    = 'CoreLocation'
  s.frameworks	  = 'CoreText'
  s.prefix_header_file = "OTCommon/Classes/OTCommon.h"

end
