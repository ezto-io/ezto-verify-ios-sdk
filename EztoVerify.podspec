#
#  Be sure to run `pod spec lint EztoVerify.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "EztoVerify"
  spec.version      = "1.0.0"
  spec.summary      = "A framework for verifying users with EztoVerify solutions."
  spec.description  = "ezto verify is a premier ID Verification solution that streamlines the processes of KYC, KYB, AML, Digital Onboarding, and E-signing, ensuring robust fraud prevention.  This application helps developers explore the capabilities of ezto verify in verifying valid ID cards, biometrics, FIDO, and other cutting-edge verification factors."
  spec.homepage         = 'https://ezto.io/verify'
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Vijay M R" => "vijay.mr@grootan.com" }

  spec.source           = { :http => 'https://github.com/ezto-io/ezto-verify-ios-sdk' }

  #  When using multiple platforms
  spec.ios.deployment_target = "13.0"



  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #

  spec.source_files  = "release/EztoVerify.xcframework", "release/EztoVerify.xcframework/**/*.{h,m}"
  spec.vendored_frameworks = "release/EztoVerify.xcframework"
  

end
