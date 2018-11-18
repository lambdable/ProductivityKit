
Pod::Spec.new do |s|
  s.name         = "ProductivityKit"
  s.version      = "1.0.0"
  s.summary      = "A repository with nifty Swift extensions to make you more productive!"

  s.description  = <<-DESC
  Helpful Swift extensions that can be added as a whole or by specific class extensions
  that can help boost your development productivity.
                   DESC

  s.homepage         = "https://github.com/zaimramlan/ProductivityKit"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = { "Zaim Ramlan" => "zaimramlan@gmail.com" }
  s.social_media_url = 'https://twitter.com/elkholeel'

  s.platform     = :ios, "10.0"
  s.source       = { :git => "https://github.com/zaimramlan/ProductivityKit.git", :tag => "#{s.version}" }
  s.framework    = "UIKit"

  ss_name = 'NSMutableAttributedString'
  s.subspec "#{ss_name}" do |ss|
      ss.subspec 'Interpolations' do |ssi|
          ssi.source_files = "ProductivityKit/#{ss_name}/#{ss_name}+Interpolations.swift"
      end
  end
  
  ss_name = 'UIColor'
  s.subspec "#{ss_name}" do |ss|
      ss.subspec 'Hex' do |ssh|
          ssh.source_files = "ProductivityKit/#{ss_name}/#{ss_name}+Hex.swift"
      end
  end
  
  ss_name = 'UIView'
  s.subspec "#{ss_name}" do |ss|
      ss.subspec 'Styling' do |sss|
          sss.source_files = "ProductivityKit/#{ss_name}/#{ss_name}+Styling.swift"
      end
  end

  s.swift_version = "4.2"
end
