Pod::Spec.new do |s|
  s.name          = 'TapkuLibrary-OpenTable'
  s.version       = '2.2.2'
  s.platform      = :ios
  s.author        = { 'Devin Ross' => 'devin@devinsheaven.com' }
  s.license       = { :type => 'MIT', :file => 'License.txt' }
  s.homepage      = 'https://github.com/opentable/tapkulibrary'
  s.summary       = 'tap + haiku = tapku, a well crafted open source iOS framework. This version contains patches from opentable'
  s.description   = 'TapkuLibrary is an iOS library built on Cocoa and UIKit intended for broad ' \
                    'use in applications. If you\'re looking to see what the library can do, check ' \
                    'out the demo project included. Some major components include coverflow, calendar ' \
                    'grid, network requests and progress indicators.'
  s.source        = { :git => 'https://github.com/opentable/tapkulibrary.git', :tag => 'v2.2.1' }
  s.requires_arc  = true
  s.source_files  = 'src/TapkuLibrary/*.{h,m}'
  s.resources     = 'src/TapkuLibrary.bundle'
  s.frameworks    = 'QuartzCore'
end
