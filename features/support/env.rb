require 'appium_lib'
require 'rspec/expectations'

include RSpec::Matchers

capabilities = {
    caps:{
        platformName: "Android",
        platformVersion: "10.0",
        deviceName: "Android 10",
        automationName: "UIAutomator1",
        app: "/Users/mapan/PRIVATE/Document/company-test/happyfresh/appium-cucumber-ruby/app/app-staging-debug.apk",
        appWaitActivity: "*",
        },
        appium_lib:{
            server_url: "http://0.0.0.0:4723/wd/hub",
            wait: 30
        }
    }

    @driver = Appium::Driver.new(capabilities, true)
    @touch = Appium::TouchAction.new(@driver)
    Appium.promote_appium_methods Object