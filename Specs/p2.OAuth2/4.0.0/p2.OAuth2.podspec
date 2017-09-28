Pod::Spec.new do |s|
  s.name         = 'p2.OAuth2'
  s.version      = '4.0.0'
  s.summary      = 'OAuth2 framework for macOS, iOS and tvOS, written in Swift.'
  s.description  = 'OAuth2 frameworks for macOS, iOS and tvOS written in Swift.\n\nA flexible framework supporting standards-compliant _implicit_ and _code_ grant flows. Some\nwebsites like Facebook may use slightly differring OAuth2 implementations, for those the\nframework aims to provide specific subclasses handling these differences.\n\nStart with `import p2_OAuth2` in your source files. Code documentation is available from within\nXcode (ALT + click on symbols) and on [p2.github.io/OAuth2/](http://p2.github.io/OAuth2/).'
  s.homepage     = 'https://github.com/p2/OAuth2'
  s.documentation_url = 'http://p2.github.io/OAuth2/'
  s.license      = 'Apache 2'
  s.author       = { 'Pascal Pfiffner' => 'phase.of.matter@gmail.com' }
  s.platform     = :ios, '9.0'
  s.requires_arc = true
  s.source       = { :git => 'https://github.com/p2/OAuth2.git', :tag => '4.0.0', :submodules => true }
  s.source_files = 'SwiftKeychain/Keychain/*.swift', 'Sources/Base/*.swift', 'Sources/Flows/*.swift', 'Sources/DataLoader/*.swift'
  s.ios.source_files = 'Sources/iOS/*.swift'
  s.ios.frameworks = 'SafariServices'
  s.pod_target_xcconfig = { 'OTHER_SWIFT_FLAGS' => '-DNO_MODULE_IMPORT -DNO_KEYCHAIN_IMPORT' }
end
