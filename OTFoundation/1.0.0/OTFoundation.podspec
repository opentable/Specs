Pod::Spec.new do |s|
  s.name          = 'OTFoundation'
  s.version       = '1.0.0'
  s.platform      = :ios
  s.author        = { 'Olivier Larivain' => 'olarivain@opentable.com' }
  s.license       = { :type => 'MIT', :file => 'License.txt'}
  s.homepage      = 'http://github.com/opentable/OTFoundation.git'
  s.summary       = 'meh.'
  s.description   = 'I said meh.'
  s.source        = { :git => 'git@github.com:opentable/OTFoundation.git', :tag => 'v1.0.0' }
  s.requires_arc  = true
  s.source_files  = 'OTFoundation/*.{h,m}'
  s.frameworks    = 'QuartzCore'
end