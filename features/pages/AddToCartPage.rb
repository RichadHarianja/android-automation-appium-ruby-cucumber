$option_gender = "com.happyfresh.staging:id/rb_male";
$option_age = "com.happyfresh.staging:id/rb_age18_24"
$btn_back = "//android.widget.ImageButton[@content-desc='Navigate up]"
$btn_home = "//*[@text='Home']"
$input_delivery_address = "com.happyfresh.staging:id/ui_view_address_info_text_view_address"
$input_address = "com.happyfresh.staging:id/search_src_text"
$input_add = "/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.RelativeLayout/androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[1]"
$btn_confirm = "//*[@text='Confirm']"
$store_choose = "com.happyfresh.staging:id/ui_view_store_name_textview"
$store_169 = "//*[@text='169']"
$search_in_store = "com.happyfresh.staging:id/textview_search_store_home"
$prd_category = "//*[@text='Fresh Produce']"
$prd_detail = "//*[@text='Red Globe Grape']"
$btn_add_to_cart = "com.happyfresh.staging:id/ui_view_add_item"
$btn_cart = "com.happyfresh.staging:id/ui_view_cart_menu_icon"
$btn_ok= "//*[@text='Ok']"

def clickBack()
    $driver.press_keycode(4)
end

def clickHome()
    $driver.find_element(:xpath,$btn_home).click
end

def clickSearch()
    $driver.find_element(:id, $input_delivery_address).click
end

def inputSearch(to)
    $driver.find_element(:id, $input_address).send_keys(to)
end

def clickAddress()
    $driver.find_element(:xpath, $input_add).click
end

def clickConfirm()
    $driver.find_element(:xpath, $btn_confirm).click
end

def clickProduct()
    sleep(3)
    $driver.find_element(:id, $store_choose).click
    sleep(3)
    $driver.find_element(:id, $search_in_store).click
    sleep(3)
    $driver.find_element(:xpath, $prd_category).click
    sleep(3)
    $driver.find_element(:xpath, $prd_detail).click
    sleep(3)
end

def clikAddToCartProduct()
    sleep(3)
    $driver.find_element(:id, $btn_add_to_cart).click
end

def clickCart()
    sleep(3)
    $driver.find_element(:id, $btn_cart).click
    sleep(10)
end