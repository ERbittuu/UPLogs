Pod::Spec.new do |s|
  s.name             = 'UPLogs'
  s.version          = '1.0'
  s.summary          = 'UPLogs is loggin lib for ios application'

  s.description      = 'UPLogs are logging lib for ios application, user have multiple option to separate logs based on usage, user also can handle multiple environment based on requirements, there is so many option to customise or format logs'

  s.homepage         = 'https://github.com/erbittuu/UPLogs'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'erbittuu' => 'utsavhacker@gmail.com' }
  s.source           = { :git => 'https://github.com/erbittuu/UPLogs.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/erbittuu'

  s.ios.deployment_target = '8.0'

  s.source_files = 'UPLogs/Classes/**/*'
end
