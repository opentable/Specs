version = '1.11.11'

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
  s.dependency    'OTFoundation', '~> 2.5.0'
  s.dependency    'ECSlidingViewController-OT', '~> 2.0.2'
  s.dependency    'PubNub', '~> 3.6.0'
  s.frameworks    = 'CoreLocation'
  s.frameworks	  = 'CoreText'
  s.frameworks    = 'Accounts'
  s.frameworks    = 'Social'
  s.prefix_header_file = "OTCommon/Classes/OTCommon.h"

end
