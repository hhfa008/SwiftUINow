#
# Be sure to run `pod lib lint SwiftUINow.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SwiftUINow'
s.version = '0.1.1'
  s.summary          = 'using SwiftUI in iOS 9 ~ iOS 12 now'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
using SwiftUI in iOS 9 ~ iOS 12 now
                       DESC

  s.homepage         = 'https://github.com/hhfa008/SwiftUINow'

  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'hhfa008' => 'hhfa008@gmail.com' }
  s.source           = { :git => 'https://github.com/hhfa008/SwiftUINow.git', :tag => s.version.to_s }


  s.ios.deployment_target = '9.0'

  s.source_files = 'SwiftUINow/Classes/**/*'
  

   s.dependency 'SnapKit'
end
