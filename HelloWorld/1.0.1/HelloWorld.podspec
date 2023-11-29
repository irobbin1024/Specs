#
# Be sure to run `pod lib lint HelloWorld.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  def self.smart_version
    tag = `git describe --abbrev=0 --tags 2>/dev/null`.strip
    if $?.success? then tag else "0.0.1" end
  end
  s.name             = 'HelloWorld'
  s.version          = "1.0.1"
  s.summary          = 'HelloWorld'
  s.homepage         = 'git@github.com:irobbin1024/HelloWorld.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'irobbin1024' => 'longbin.lai@quvideo.com' }
  s.source           = { :git => 'git@github.com:irobbin1024/HelloWorld.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.0'

  s.resource_bundles = {
    'HelloWorld' => ['HelloWorld/Assets/*.xcassets', 'HelloWorld/Assets/**/*.*']
  }
  s.source_files = "#{s.name}/Classes/**/*"
end
