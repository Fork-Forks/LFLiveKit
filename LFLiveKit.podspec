
Pod::Spec.new do |s|

  s.name         = "LFLiveKit"
  s.version      = "2.8"
  s.summary      = "LaiFeng ios Live. LFLiveKit."
  s.homepage     = "https://github.com/chenliming777"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "chenliming" => "chenliming777@qq.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => 'http://192.168.8.20/vender-ios/LFLiveKit.git', :branch => 'master' }

  s.source_files  = "LFLiveKit/LFLiveKit.h", "Source/*.{h,m}", "Source/**/*.{h,m,mm}", "Source/coder/H264/*.{h,m,mm,cpp}", "Vendor/OpenSSL/include/openssl/*.h", "Vendor/pili-librtmp/*.{h,c}"

  s.public_header_files = ['LFLiveKit/LFLiveKit.h', 'Source/*.h', 'Source/objects/*.h', 'Source/configuration/*.h']

  s.frameworks = "VideoToolbox", "AudioToolbox","AVFoundation","Foundation","UIKit"
  s.libraries = "c++", "z"

  s.requires_arc = true

  s.subspec 'OpenSSL' do |openssl|
    openssl.private_header_files = 'Vendor/OpenSSL/include/openssl/*.h'
    openssl.header_mappings_dir = 'Vendor/OpenSSL/include'
    openssl.vendored_libraries = 'Vendor/OpenSSL/lib/libcrypto.a', 'Vendor/OpenSSL/lib/libssl.a'
    openssl.xcconfig = { 
      "HEADER_SEARCH_PATHS" => "${PODS_ROOT}/#{s.name}/Vendor/OpenSSL/include"
  }
  end

end
