Pod::Spec.new do |s|
  s.name             = 'APIVerveCloudCounter'
  s.version          = '1.2.3'
  s.summary          = 'Cloud Counter stores and updates persistent numeric counters by ID without needing a database.'
  s.description      = <<-'DESC'
Cloud Counter stores and updates persistent numeric counters by ID without needing a database. It tracks increments, decrements, and custom values while returning timestamps and number properties like parity and prime status.

This iOS/macOS SDK provides a convenient way to access the Cloud Counter from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/counter?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/counter-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveCloudCounter/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
