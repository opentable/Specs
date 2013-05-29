Pod::Spec.new do |s|
  s.name     = 'AFOAuth2Client-OpenTable'
  s.version  = '0.1.1'
  s.license  = 'MIT'
  s.summary  = 'AFNetworking Extension for OAuth 2 Authentication.'
  s.homepage = 'https://github.com/opentable/AFOAuth2Client'
  s.author   = { 'Mattt Thompson' => 'm@mattt.me' }
  s.source   = { :git => 'https://github.com/opentable/AFOAuth2Client.git',
                 :tag => "#{s.version}-OpenTable" }
  s.source_files = 'AFOAuth2Client'
  s.requires_arc = true

  s.ios.deployment_target = '5.0'
  s.osx.deployment_target = '10.7'
  
  s.dependency 'AFNetworking-OpenTable', '~>1.0'
  s.header_dir = 'AFOAuth2Client' 
  s.ios.frameworks = 'Security'

  s.prefix_header_contents = <<-EOS
#ifdef __OBJC__
  #import <Security/Security.h>
#endif /* __OBJC__*/
EOS
end
