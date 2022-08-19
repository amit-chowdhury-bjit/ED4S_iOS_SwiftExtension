Pod::Spec.new do |spec|
  spec.name          = 'EDiOSSwiftExtension'
  spec.version       = '1.0.0'
  spec.license       = { :type => 'BSD' }
  spec.homepage      = 'https://github.com/amit-chowdhury-bjit/EDiOSSwiftExtension'
  spec.authors       = { 'Amit Chowdhury' => 'amit.chowdhury@bjitgroup.com' }
  spec.summary       = 'UIKit and Foundation framework extensions'
  spec.source        = { :git => 'https://github.com/amit-chowdhury-bjit/EDiOSSwiftExtension.git', :tag => "v#{spec.version}"  }

  spec.swift_version = '5.0'

  spec.ios.deployment_target  = '13.0'
  spec.source_files  = "EDiOSSwiftExtension/**/*.swift"
  spec.framework  = 'UIKit & Foundation'
  spec.platform = :ios

end