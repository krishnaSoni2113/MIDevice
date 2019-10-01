Pod::Spec.new do |spec|

  spec.name         = "MIDevice"
  spec.version      = "0.0.1"
  spec.summary      = "A CocoaPods library written in Swift"
  spec.description  = <<-DESC
This CocoaPods library helps you perform calculation.
                   DESC
  spec.homepage     = "https://github.com/krishnaSoni2113/MIDevice"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "krishnasoni" => "krishnasoni2113@gmail.com" }
  spec.ios.deployment_target = "12.1"
  spec.swift_version = "4.2"
  spec.source        = { :git => "https://github.com/krishnaSoni2113/MIDevice.git", :tag => "#{spec.version}" }
  spec.source_files  = "MIDevice/**/*.{h,m,swift}"

end