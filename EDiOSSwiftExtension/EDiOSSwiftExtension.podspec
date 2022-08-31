
Pod::Spec.new do |spec|


  spec.name         = "EDiOSSwiftExtension"
  spec.version      = "1.0.1"
  spec.summary      = 'UIKit and Foundation framework extensions'
  spec.homepage     = "https://github.com/amit-chowdhury-bjit/EDiOSSwiftExtension"
  spec.license      = "MIT"
  spec.author       = { "Amit Chowdhury" => "amit.chowdhury@bjitgroup.com" }
  spec.platform     = :ios, "13.0"
  spec.source       = { :git => "https://github.com/amit-chowdhury-bjit/EDiOSSwiftExtension.git", :tag => spec.version.to_s}

  spec.source_files  = 'Sources/**/*.swift'

  spec.swift_version = ['5.0']

end


