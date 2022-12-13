#
#  Be sure to run `pod spec lint LoginovHomework.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|
  spec.name         = "LoginovHomework"
  spec.version      = "0.0.1"
  spec.summary      = "OTUS/GPB LoginovHomework module"

  spec.description  = <<-DESC
  This is the LoginovHomework project for OTUS/GPB Homework
                   DESC

  spec.homepage     = "https://github.com/core133t/LoginovHomework"
  spec.license      = { :type => "MIT" }
  spec.author             = { "Loginov Dmitry" => "gatestreet1337@icloud.com" }

  spec.platform     = :ios, "13.0"
  spec.source       = { :git => "https://github.com/core133t/LoginovHomework.git", :tag => "#{spec.version}" }

  spec.dependency 'SnapKit'
  spec.dependency 'OtusHomework'

  spec.source_files  = "LoginovHomework/**/*.{swift,h,m}"

  spec.public_header_files = "LoginovHomework/**/*.{h}"


  spec.resources = "photo_cat.jpg"
  spec.resources = "Asset/*.jpg"

  spec.swift_version = "5.0" 
end

