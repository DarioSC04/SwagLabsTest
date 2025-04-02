*** Settings ***
Library    SeleniumLibrary
Resource    ../Ressources/LoggingKeywords.robot
Resource    ../Ressources/ProductPageKeyword.robot
Resource    ../Ressources/CheckoutKeywords.robot

*** Variables ***

${FIRST_NAME}    John
${LAST_NAME}     Doe
${POSTAL_CODE}   12345

*** Test Cases ***
CheckoutTest
    SetUpKeword
    AddToCart    1    3
    GoTocheckout
    CompleteCheckout    ${FIRST_NAME}    ${LAST_NAME}    ${POSTAL_CODE}
    ValidateCheckout
    TearDownKeyword

*** Keywords ***

GoTocheckout
    GoTocheckoutKeyword

SetUpKeword
    OpenbrowserKeyword
    LoginKeyword   standard_user  secret_sauce
    Sleep    1s

AddToCart
    [Arguments]     ${product_number}   ${quantity}
    AddToCartKeyword    ${quantity}    ${product_number}
    Sleep    1s

TearDownKeyword
    ClosebrowserKeyword
