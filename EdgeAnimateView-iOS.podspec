#
# Be sure to run `pod lib lint EdgeAnimateView-iOS.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "EdgeAnimateView-iOS"
  s.version          = "1.0.0"
  s.summary          = "EdgeAnimateView displays Adobe Edge Animate animations in a WKWebView or a UIWebView depending on the target OS."
  s.description      = <<-DESC
                        EdgeAnimateView provides one-liner support for displaying Adobe Edge Animate compositions on iOS devices.
                        Depending on the target OS (iOS 7, 8 or 9), EdgeAnimateView will pick the right web view and configure it
                        for you. In iOS versions 8 and up, WKWebView is used, which provides native Safari web performance
                        for your animations.
                       DESC

  s.homepage         = "https://github.com/aceontech/EdgeAnimateView-iOS"
  s.screenshots      = "https://github.com/aceontech/EdgeAnimateView-iOS/raw/master/demo.gif"
  s.license          = 'MIT'
  s.author           = { "Alex Manarpies" => "alex@manarpies.com" }
  s.source           = { :git => "https://github.com/aceontech/EdgeAnimateView-iOS.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/aceontech'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'EdgeAnimateView-iOS' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  s.dependency 'AOTToolkit/UI', '~> 0.2.0'
  s.dependency 'POViewFrameBuilder', '~> 1.0.0'

  s.weak_framework = 'WebKit'

end
