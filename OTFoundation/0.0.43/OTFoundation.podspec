version = '0.0.43'

Pod::Spec.new do |s|
  s.name          = 'OTFoundation'
  s.version       = version
  s.platform      = :ios, "5.0"
  
  s.author        = { 'OpenTable' => 'iOS@opentable.com' }
  s.license       = { :type => 'OpenTable', :file => 'License.txt'}
  s.homepage      = 'http://github.com/opentable/OTFoundation.git'
  s.summary       = 
<<-DESC
Core library used by all of OpenTable's iOS apps.
DESC
  s.description   = 
<<-DESC
Core components include notably:
- Networking layer
- Image resizing
- Image download service
- Various common categories on NS and UI classes
- Basic dependencies needed by OpenTable apps.
DESC
  s.source        = { :git => 'git@github.com:opentable/OTFoundation.git', :tag => "v#{s.version}" }
  s.requires_arc  = true
  s.source_files  = ["OTFoundation/**/*.{h,m,c,mm,cpp}"]
  s.dependency    'ASIHTTPRequest', '>= 1.8.1'
  s.dependency    'AFNetworking', '>= 1.1.0'
  s.prefix_header_file = "OTFoundation/Supporting Files/OTFoundation-Pod-Prefix.h"
  
  s.ios.frameworks = 'SystemConfiguration', 'MobileCoreServices'
  
end