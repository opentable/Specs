version = '0.0.1'
version_tag = 'v0.0.1'

Pod::Spec.new do |s|
  s.name          = 'OTKit'
  s.version       = version
  s.platform      = :ios
  s.author        = { 'OpenTable' => 'iOS@opentable.com' }
  s.license       = { :type => 'OpenTable', :file => 'License.txt'}
  s.homepage      = 'http://github.com/opentable/OTKit.git'
  s.summary       = <<-DESC
Core UI library used by all of OpenTable's iOS apps.
                    DESC
  s.description   = <<-DESC
Core components include notably:
- Carousel
- Pull to refresh...
                    DESC
  s.source        = { :git => 'git@github.com:olarivain/OTKit.git', :tag => version_tag }
  s.requires_arc  = true
  s.source_files  = ["OTKit/**/*.{h,m}"]
  s.dependency    'OTFoundation', '~> 0.0.1'
end