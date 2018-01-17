Pod::Spec.new do |s|
  s.name             = 'AppDelegateDispatcher'
  s.version          = '0.0.1'
  s.summary          = 'Decouple AppDelegate from services'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/cleexiang/ApplicationModuleDispatcher'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'clee' => 'cleexiang@126.com' }
  s.source           = { :git => 'https://github.com/cleexiang/ApplicationModuleDispatcher.git', :tag => s.version.to_s }

  s.ios.deployment_target = '8.0'

  s.source_files = 'Classes/**/*'
end
