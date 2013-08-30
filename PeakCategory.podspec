Pod::Spec.new do |s|
  s.name         = "PeakCategory"
  s.version      = "0.1.0"
  s.summary      = "常用Category，包括UIView/UIColor/NSString/NSDate等."
  s.homepage     = "https://github.com/conis/PeakCategory"
  s.license      = 'MIT'
  s.author       = { "Conis" => "conis.yi@gmail.com" }
  s.source       = { :git => "https://github.com/conis/PeakCategory.git", :branch => "master"}
  s.platform     = :ios, '5.0'
  s.source_files = 'PeakCategory/*.{h,m}'
  s.framework  = 'UIKit'
  s.requires_arc = true
  
  #添加依赖
  s.dependency  'UIView+Helpers'
end
