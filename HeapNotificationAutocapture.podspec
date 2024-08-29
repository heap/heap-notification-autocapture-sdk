Pod::Spec.new do |s|
  s.name = 'HeapNotificationAutocapture'
  s.version = '0.7.0'
  s.license = { :type => 'MIT' }
  s.summary = 'HeapNotificationAutocapture is an push notification autocapture library for iOS, watchOS, and macOS apps.'
  s.homepage = 'https://heap.io'
  s.author = 'Heap Inc.'
  s.source = { :http => "https://cdn.heapanalytics.com/ios/heap-notification-autocapture-#{s.version}.zip", :type => 'zip' }

  s.requires_arc = true
  s.ios.deployment_target = '12.0'

  s.cocoapods_version = '>= 1.7.0'

  s.dependency 'HeapSwiftCore', '~> 0.7'

  s.source_files = 'Sources/HeapNotificationAutocapture/**/*.swift'
  s.vendored_frameworks = 'HeapNotificationAutocaptureImplementation.xcframework'

  s.swift_versions = ['5.0']
end
