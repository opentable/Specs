version = '0.0.2'
version_tag = 'v0.0.2'

Pod::Spec.new do |s|
  s.name          = 'OTFoundation'
  s.version       = version
  s.platform      = :ios
  s.author        = { 'OpenTable' => 'iOS@opentable.com' }
  s.license       = { :type => 'OpenTable', :file => 'License.txt'}
  s.homepage      = 'http://github.com/opentable/OTFoundation.git'
  s.summary       = <<-DESC
Core library used by all of OpenTable's iOS apps.
                    DESC
  s.description   = <<-DESC
Core components include notably:
- Networking layer
- Image resizing
- Image download service
- Various common categories on NS and UI classes
- Basic dependencies needed by OpenTable apps
                    DESC
  s.source        = { :git => 'git@github.com:opentable/OTFoundation.git', :tag => version_tag }
  s.requires_arc  = true
  s.source_files  = ["OTFoundation/**/*.{h,m}"]
  s.dependency    'TouchJSON', '>= 1.0'
  s.dependency    'TouchXML', '>= 0.1'
  s.dependency    'ASIHTTPRequest', '>= 1.8.1'
end