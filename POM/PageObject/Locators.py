#Standart Locators

url = "https://dariosc04.github.io/SwagLabsTest/"

#Login Elements
txt_login_username= "id=username"
txt_login_password= "id=password"
btn_login_login= "id=login-button"
txt_login_error= "id=error-message"

#Product Elements
btn_product_logout= "xpath=//*[@id='product-page']/div[1]/div/button"

btn_product_add_to_cart = "xpath=//*[@id='products-grid']/div[{}]/button"
btn_product_shopping_cart = "xpath=//*[@id='product-page']/div[1]/div/div"

#CheckOut
txt_checkout_first_name = "id=first-name"
txt_checkout_last_name = "id=last-name"
txt_checkout_postal_code = "id=postal-code"
txt_checkout_total = "id=total-amount"

btn_checkout_complete = "xpath=//*[@id='checkout-page']/div[2]/button"
txt_checkout_complete = "xpath=//*[@id='confirmation-page']/h2"