#
# Be sure to run `pod lib lint OneWorldSDK-iOS.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "OneWorldSDK-iOS"
  s.version          = "0.1.5"
  s.summary          = "OneWorld SDK for iOS."

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!  
  s.description      = <<-DESC
OneWorld SDK for iOS. It lets developers to earn money by showing polls inside their apps. 
                       DESC

  s.homepage         = "https://cfc.io/"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.license          = { :type => '1world Privacy Policy', :file => 'LICENSE.md'  }
  s.author           = { "amykhajlyshyn" => "amykh2007@gmail.com" }
  s.source           = { :git => "git@redmine.cfc.io:git/CocoaPods/OneWorldSDK-iOS.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.vendored_frameworks = 'OneWorldSDK-iOS.framework'
  s.resources = ['OneWorldSDK-iOS.bundle']
  s.preserve_paths = 'OneWorldSDK-iOS.framework'
  s.public_header_files = 'OneWorldSDK-iOS.framework/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'

  s.dependency 'AFNetworking', '~> 3.0'
  s.dependency 'CocoaLumberjack', '~> 2.2.0'
  s.dependency 'SDWebImage', '~> 3.7.5'
  s.dependency 'GoogleMobileAds', '~> 7.6.0'
end
