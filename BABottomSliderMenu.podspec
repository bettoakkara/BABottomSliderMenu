#
#  Be sure to run `pod spec lint BABottomSliderMenu.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#


Pod::Spec.new do |s|
  s.name             = 'BABottomSliderMenu'
  s.version          = '1.0.1'
  s.summary          = 'BABottomSliderMenu is a customizable bottom slide Menu.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
    BABottomSliderMenu is a customizable bottom slide Menu. This is developed for the easy application development for the iOS Developers.
                       DESC

  s.homepage         = 'https://github.com/bettoakkara/BABottomSliderMenu'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'bettoakkara' => 'bettoakkara1@gmail.com' }
  s.source           = { :git => 'https://github.com/bettoakkara/BABottomSliderMenu.git', :branch => 'master', :tag => s.version.to_s }

  s.swift_version = '5.0'
  s.ios.deployment_target = '13.0'

  s.source_files = 'BABottomSliderMenu/Source/**/*.{h,m,swift,json,strings,xib,storyboard, xcassets}'
  s.resources = ['BABottomSliderMenu/BASliderAssets.xcassets']


end
