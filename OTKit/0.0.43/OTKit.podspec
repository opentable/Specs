
version = '0.0.43'

Pod::Spec.new do |s|
  s.name          = 'OTKit'
  s.version       = version
  s.platform      = :ios, "5.0"
  s.author        = { 'OpenTable' => 'iOS@opentable.com' }
  s.license       = { :type => 'OpenTable', :file => 'License.txt'}
  s.homepage      = 'http://github.com/opentable/OTKit.git'
  s.summary       = 
<<-DESC
Core UI library used by all of OpenTable's iOS apps.
DESC
  s.description   = 
<<-DESC
Core components include notably:
- Carousel
- Pull to refresh...
DESC
  s.source        = { :git => 'git@github.com:opentable/OTKit.git', :tag => "v#{s.version}" }
  s.requires_arc  = true
  s.source_files  = ["OTKit/**/*.{h,m,c,mm,cpp}"]
  s.dependency    'OTFoundation', '~> 0.0.1'
end