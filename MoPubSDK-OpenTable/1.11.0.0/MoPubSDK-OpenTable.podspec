version = "1.11.0.0"
version_tag = "v#{version}"

Pod::Spec.new do |s|
# basic meta data
  s.name          = 'MoPubSDK-OpenTable'
  s.version       = version
  s.platform      = :ios
  s.author        = { 'MoPub' => 'contact@mopub.com' }
  s.license       = { :type => 'New BSD', :file => 'LICENSE'}
  s.homepage      = 'http://github.com/mopub/mopub-client'
  s.summary       = <<-DESC
Pod for MoPub iOS library.
                    DESC
  s.description   = <<-DESC
Straight port to CocoaPod for MoPub library.
                    DESC
  s.source        = { :git => 'https://github.com/opentable/mopub-client.git', :tag => version_tag }

# only include source files from the proper SDK, not sample App
  s.source_files  = ["MoPubiOS/MoPubSDK/**/*.{h,m}"]
  
# don't forget bundle and such
  s.resources = 'MoPubiOS/MoPubSDK/Resources/*'
  
  s.header_dir = 'MoPubSDK'

# the project is not arcified
  s.requires_arc = false

# pull in TouchJSON since it's needed
  s.dependency    'TouchJSON', '>= 1.0'
end