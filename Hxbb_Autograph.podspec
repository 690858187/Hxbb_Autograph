#
# Be sure to run `pod lib lint Hxbb_Autograph.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Hxbb_Autograph'
  s.version          = '0.2.2'
  s.summary          = '电子签名'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
   电子签名组件
                       DESC

  s.homepage         = 'https://github.com/690858187/Hxbb_Autograph'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '李宇涵' => '690858187@qq.com' }
  s.source           = { :git => 'https://github.com/690858187/Hxbb_Autograph.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'Hxbb_Autograph/Classes/**/*'
  
  s.resource_bundles = {
    'Hxbb_Autograph' => ['Hxbb_Autograph/Assets/Hxbb_Autograph.bundle/*']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit', 'Foundation', 'CoreGraphics'
  # s.dependency 'AFNetworking', '~> 2.3'
end
