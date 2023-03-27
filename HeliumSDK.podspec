Pod::Spec.new do |spec|
    spec.name          = "HeliumSDK"
    spec.version       = "1.0.1"
    spec.summary       = "Helium iOS SDK"
    spec.description   = <<-DESC
            This SDK provices all the funcionality needed to interface with Helium.
                     DESC

    spec.homepage      = "https://github.com/AppcentMobile/helium-ios-sdk"  
    spec.license       = { :type => "Apache License, Version 2.0", :file => "LICENCE" }  
    spec.author        = "burak"
    spec.platform      = :ios
    spec.swift_version = '5.0'  
    spec.source        = { :git => "https://github.com/AppcentMobile/helium-ios-sdk.git", :tag => "#{spec.version}" }
    spec.source_files  = "Sources/**/*.{h,m,swift}"
    spec.ios.deployment_target = '13.0'
    spec.dependency 'ACMNetworking', '~> 1.0.1'
  end
