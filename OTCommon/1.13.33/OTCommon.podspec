version = '1.13.33'

Pod::Spec.new do |s|
  s.name          = 'OTCommon'
  s.version       = version
  s.platform      = :ios, "8.0"
  
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
  s.dependency    'OTFoundation', '~> 2.6.0'
  s.dependency    'AFNetworking-OpenTable', '~> 2.5.1'
  s.dependency    'PubNub-OT', '~> 3.7.0'
  s.dependency    'Stripe/ApplePay', '~> 3.1.0'
  s.frameworks    = 'CoreLocation'
  s.frameworks	  = 'CoreText'
  s.frameworks    = 'Accounts'
  s.frameworks    = 'Social'
  s.frameworks    = 'PassKit'
  s.prefix_header_file = "OTCommon/Supporting Files/OTCommon-Pods-Prefix.h"

end
