class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    app_id   = "your_app_id"
    app_key  = "your_app_key" 
    
    LeanMotion::Config.init(app_id, app_key)
    LeanMotion::Config.channel 'Develop'

    home    = HomeScreen.new

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.setRootViewController home
    @window.makeKeyAndVisible

    true
  end
end
