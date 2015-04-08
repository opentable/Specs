version = '0.0.1'
version_tag = 'v0.0.1'

Pod::Spec.new do |s|
  s.name          = 'OTFoundation'
  s.version       = version
  s.platform      = :ios
  s.author        = { 'Olivier Larivain' => 'olarivain@opentable.com' }
  s.license       = { :type => 'MIT', :file => 'License.txt'}
  s.homepage      = 'http://github.com/opentable/OTFoundation.git'
  s.summary       = 'meh.'
  s.description   = 'I said meh.'
  s.source        = { :git => 'git@github.com:opentable/OTFoundation.git', :tag => version_tag }
  s.requires_arc  = true
  s.source_files  = 'OTFoundation/*.{h,m}'
  s.frameworks    = 'QuartzCore'
end