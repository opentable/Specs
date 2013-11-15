version = '0.1.1'

Pod::Spec.new do |s|
  s.name          = 'FSFoundation'
  s.version       = version
  s.platform      = :ios, "5.0"
  
  s.author        = { 'Foodspotting' => 'http://www.foodspotting.com' }
  s.license       = { :type => 'Foodspotting', :file => 'License.txt'}
  s.homepage      = 'http://github.com/Foodspotting/fs-ios-core.git'
  s.summary       = <<-DESC
Foodspotting Core iOS Framework.
                    DESC
  s.description   = <<-DESC
Adds some base classes for managing Model objects in Foodspotting.
                    DESC
  s.source        = { :git => 'git@github.com:Foodspotting/fs-ios-core.git', :tag => "v#{version}" }
  s.requires_arc  = true
  s.source_files  = ["FSFoundation/FSFoundation/**/*.{h,m,c,mm,cpp}"]

end
