# require 'cfpropertylist'

# # CocoaPods is messed up, so we have to work out the following:
# # When building locally, pwd will be the same as the file location, which means the version is fetched
# # from the Info.plist (we are building locally, or releasing, and we want the Info.plist to be the authoritative source)
# # When resolving a remote dependency, pwd will be different than the file location (which will be ~.cocoapods/REPO/ARTIFACT/VERSION)
# # and in that case, we wan the version to evaluate to the the version from the folder.

# # it's seriously messed up but I can't see how to get the build number derived from a plist without jumping through these hoops
# local_path = File.expand_path(File.dirname(__FILE__))
# is_local = Dir.pwd.eql? local_path

# puts "Current working: #{Dir.pwd}"
# puts "Local file: #{local_path}"
# puts "we are local #{is_local}"

# if is_local then 
#   # anyway, when resolving the spec locally, read the plist and extract the bundle version
#   plist = CFPropertyList::List.new(:file => "./Resources/Info.plist")
#   data = CFPropertyList.native_types(plist.value)
#   version = data["CFBundleVersion"]
# else 
#   # otherwise, pick the last path component, that's our version
#   version = local_path.split("/").pop
# end

# puts "inspecting version"
# puts version.class
# puts version

version = '0.0.23'

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