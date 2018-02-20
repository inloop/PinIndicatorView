
Pod::Spec.new do |s|
  s.name         = 'PinIndicatorView'
  s.version      = '1.0.1'
  s.summary      = 'Pin indicator that mimics the lock screen'
  s.description  = <<-DESC
A customisable pin indicator based on the iOS lock screen
                   DESC

  s.homepage     = 'https://github.com/inloop/PinIndicatorView'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'Tomas Hakel' => 'hakel@inloop.eu' }
  s.platform     = :ios
  s.ios.deployment_target = '8.0'
  s.swift_version         = '4.1'

  s.source = { :git => "https://github.com/inloop/PinIndicatorView.git", :tag => "#{s.version}" }

  s.source_files  = "PinIndicatorView/**/*.{swift}"
  s.exclude_files = "Demo"

end
