# coding: utf-8
require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))
version = package['version']

Pod::Spec.new do |s|

  s.name         = "RNBleManager"
  s.version      = version
  s.summary      = package["description"]
  s.description  = <<-DESC
                    蓝牙，React Native版。
                   DESC

  s.homepage     = "https://github.com/keleibobo/ut-ble-manager"
  s.license      = package["license"]
  s.author       = { "zhenghui" => "zhenghui@ut.cn" }
  s.platform     = :ios, "8.2"
  s.source       = { :git => "https://github.com/keleibobo/ut-ble-manager", :tag => "#{s.version}" }
  s.source_files  = "ios/*.{h,m}"
  # s.exclude_files = ""
  # s.public_header_files = ""
  s.vendored_frameworks = ""
  s.frameworks = ""
  s.libraries = ""

  s.dependency 'React'
end
