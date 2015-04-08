version = '2.0.97'

Pod::Spec.new do |s|
  s.name          = 'OTFoundation'
  s.version       = version

  # support for both ios and osx
  s.platform      = :ios, "6.1"
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
  s.dependency    'AFNetworking-OpenTable', '~> 1.2.0'
  s.dependency	  'CocoaLumberjack', '>= 1.6'

  s.frameworks	  = 'CoreText', 'SystemConfiguration', 'MobileCoreServices', 'Accelerate'

  s.prefix_header_file = "OTFoundation/Classes/OTFoundation.h"

end