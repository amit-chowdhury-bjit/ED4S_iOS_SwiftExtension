Pod::Spec.new do |spec|
  spec.name          = 'ED4_iOS_SwiftExtension'
  spec.version       = '1.0.0'
  spec.license       = { :type => 'BSD' }
  spec.homepage      = 'https://github.com/amit-chowdhury-bjit/ED4S_iOS_SwiftExtension'
  spec.authors       = { 'Amit Chowdhury' => 'amit.chowdhury@bjitgroup.com' }
  spec.summary       = 'UIKit and Foundation framework extensions'
  spec.source        = { :git => 'https://github.com/amit-chowdhury-bjit/ED4S_iOS_SwiftExtension.git', :tag => 's.version' }
  spec.module_name   = 'Rich'
  spec.swift_version = '5.0'

  spec.ios.deployment_target  = '13.0'

  spec.ios.source_files   = 'UIKitExtension/*.swift', 'FoundationExtension/*.swift'

  spec.framework      = 'SystemConfiguration'
  spec.ios.framework  = 'UIKit & Foundation'

end