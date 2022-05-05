$btn_agreement = "com.happyfresh.staging:id/ui_view_privacy_policy_button_agree"
$btn_skip = "com.happyfresh.staging:id/ui_view_skip_on_boarding_button"
$btn_allow_permit = "com.android.permissioncontroller:id/permission_allow_foreground_only_button"
# $btn_navigation = "com.happyfresh.staging:id/ui_view_hamburger_imageview"
$btn_login = "com.happyfresh.staging:id/login"
$menu_bar_account = "//*[@text='Account']"
$menu_welcome = "com.happyfresh.staging:id/component_drawer_user_info"
$menu_login_here = "//*[@text='Have an account? Log In here']"
$input_email = "com.happyfresh.staging:id/email"
$input_password = "com.happyfresh.staging:id/password"
$popup_message = "//*[@text='Not a valid value']"

def clickAgree()
    sleep(3)
    $driver.find_element(:id,$btn_agreement).click
end

def clickSkip()
    sleep(3)
    $driver.find_element(:id,$btn_skip).click
end

def clickAllow()
    sleep(3)
    $driver.find_element(:id, $btn_allow_permit).click
end

def clickAccount()
    sleep(3)
    $driver.find_element(:xpath, $menu_bar_account).click
end

def clickWelcome()
    sleep(3)
    $driver.find_element(:id, $menu_welcome).click
end

def clickLoginHere()
    sleep(3)
    $driver.find_element(:xpath, $menu_login_here).click
end

def inputEmail(email)
    $driver.find_element(:id, $input_email).send_keys(email)
end

def inputPassword(password)
    $driver.find_element(:id, $input_password).send_keys(password)
end

def clickLogin()
    sleep(3)
    $driver.find_element(:id, $btn_login).click
    sleep(3)
end

def assertEmailInputType()
    $driver.find_element(:id, $popup_message).displayed?
end

