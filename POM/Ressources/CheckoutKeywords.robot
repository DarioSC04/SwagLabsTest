*** Settings ***
Library    SeleniumLibrary
Variables   ../PageObject/Locators.py


*** Keywords ***
GoTocheckoutKeyword
        Click element    ${btn_product_shopping_cart}

CompleteCheckout
        [Arguments]    ${FIRST_NAME}    ${LAST_NAME}    ${POSTAL_CODE}
        Input text    ${txt_checkout_first_name}    ${FIRST_NAME}
        Input text    ${txt_checkout_last_name}    ${LAST_NAME}
        Input text    ${txt_checkout_postal_code}    ${POSTAL_CODE}
        Click element    ${btn_checkout_complete}

ValidateCheckout
        ${text}=    Get text    ${txt_checkout_complete}
        Should be equal    ${text}    Thank You For Your Order!