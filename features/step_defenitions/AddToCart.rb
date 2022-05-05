Given('user click Agree') do
    clickAgree()
  end

Then ('user Skip the pop up') do
    clickSkip()
  end

Then ('user Allow the permit') do
    clickAllow()
  end

And ('user click Account menu') do
    clickAccount()
  end

Then ('user click Welcome') do
    clickWelcome()
  end

And ('user click Login here') do
    clickLoginHere()
  end

When ('user input {string} address') do |email|
    inputEmail(email)
  end

Then ('user input {string}') do |password|
    inputPassword(password)
  end

Then ('user click Login button') do
    clickLogin()
  end

Then ('user assert the error message') do
    assertEmailInputType()
  end

Then('user click go back navigation') do
    clickBack()
  end

And ('user go back to Home menu') do
    clickHome()
  end

When ('user click the delivery destination') do
    clickSearch()
  end

And ('user want to input the {string}') do |destination|
    inputSearch(destination)
  end

And ('user click the destination list') do
    clickAddress()
end

Then ('user Confirm the destination') do
    clickConfirm()
end

Then ('user try to pick the product') do
    clickProduct()
end

And ('user add to cart the product') do
    clikAddToCartProduct()
end

Then ('user click the cart') do
    clickCart()
end