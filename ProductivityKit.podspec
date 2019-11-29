
Pod::Spec.new do |s|
  s.name         = "ProductivityKit"
  s.version      = "1.1.2"
  s.summary      = "A repository with nifty Swift extensions to make you more productive!"

  s.description  = <<-DESC
  Helpful Swift extensions that can be added as a whole or by specific class extensions
  that can help boost your development productivity.
                   DESC

  s.homepage         = "https://github.com/lambdable/ProductivityKit"
  s.license          = "Apache-2.0"
  s.author           = { "Zaim Ramlan" => "zaimramlan@gmail.com" }
  s.social_media_url = 'https://twitter.com/elkholeel'

  s.platform     = :ios, "10.0"
  s.source       = { :git => "https://github.com/lambdable/ProductivityKit.git", :tag => "#{s.version}" }
  s.framework    = "UIKit"

  ss_name = 'Date'
  s.subspec "#{ss_name}" do |ss|
      ss.subspec 'Utility' do |ssu|
          ssu.source_files = "ProductivityKit/#{ss_name}/#{ss_name}+Utility.swift"
      end
  end

  ss_name = 'String'
  s.subspec "#{ss_name}" do |ss|
      ss.subspec 'Formatting' do |ssf|
          ssf.source_files = "ProductivityKit/#{ss_name}/#{ss_name}+Formatting.swift"
      end
  end

  ss_name = 'NSMutableAttributedString'
  s.subspec "#{ss_name}" do |ss|
      ss.subspec 'Interpolations' do |ssi|
          ssi.source_files = "ProductivityKit/#{ss_name}/#{ss_name}+Interpolations.swift"
      end
  end

  ss_name = 'UIColor'
  s.subspec "#{ss_name}" do |ss|
      ss.subspec 'RGBA' do |ssh|
          ssh.source_files = "ProductivityKit/#{ss_name}/#{ss_name}+RGBA.swift"
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
