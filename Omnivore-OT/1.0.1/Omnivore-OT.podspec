version = '1.0.1'

Pod::Spec.new do |s|
  s.name          = 'Omnivore-OT'
  s.version       = version
  s.platform      = :ios, "8.0"
  s.header_dir = 'ADMS'

  s.author        = { 'OpenTable' => 'iOS@opentable.com' }
  s.license       = { :type => 'OpenTable', :file => 'License.txt'}
  s.homepage      = 'http://github.com/opentable/Omnivore-OT.git'
  s.summary       = <<-DESC
Pod for omniture library
                    DESC
  s.description   = <<-DESC
This library creates a pod for omniture
                    DESC
  s.source        = { :git => 'git@github.com:opentable/Omnivore-OT.git', :tag => "v#{s.version}" }
  s.requires_arc  = true
  s.preserve_paths = "*.a"
  s.source_files = "*.h"
  s.public_header_files = "*.h"
  s.libraries = "ADMS"
  s.xcconfig = { 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/Omnivore-OT"' }

end
