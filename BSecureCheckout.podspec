Pod::Spec.new do |s|

  s.name         = "BSecureCheckout"
  s.version      = "0.0.5"
  s.summary      = "bSecure is a universal checkout made for the Pakistan market that is easy & simple to install on any iOS app."
  s.description  = <<-DESC
  bSecure is a universal checkout made for the Pakistan market that is easy & simple to install on any iOS app. It gives you an option to enable one-step check out and accept multiple payment method for your customers, as well as run your business hassle free\n. By following a few simple steps, you can be up and running in no time. Leave the rest to us. We will take care of the login, address, shipping methods and payments on your behalf. All you have to do is configure your checkout once on the bSecure Partner portal once and leave the rest to us.
                   DESC

  s.homepage     = "https://github.com/bSecureCheckout"
  s.license      = { :type => 'Apache License, Version 2.0', :text => <<-LICENSE
    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at
    http://www.apache.org/licenses/LICENSE-2.0
    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
    LICENSE
  }
  s.author         = { 'bSecureCheckout' => 'email' }
  s.ios.deployment_target = '11.0'
  s.dependency "SwiftLint","~> 0.39.2"
  s.dependency "NVActivityIndicatorView","~> 4.7.0"
  s.dependency "R.swift","~> 5.2.2"
  s.dependency "SwiftMessages","~> 7.0.1"
  s.dependency "Disk","~> 0.6.4"
  s.dependency "Toast-Swift","~> 5.0.0"
  s.dependency "Swinject","~> 2.6.2"
  s.dependency "Kingfisher","~> 4.10.1"
  s.dependency "GoogleMaps","~> 3.10.0"
  s.dependency "SwiftyGif","~> 5.3.0"
  s.swift_version = "5"
  s.ios.vendored_frameworks = 'BSecureCheckout.framework'
  s.source            = { :git => "https://github.com/bSecureCheckout/bSecureCheckout-iOS.git", :tag => "#{s.version}" }
  s.exclude_files = "Classes/Exclude"

end
