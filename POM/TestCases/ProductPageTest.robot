*** Settings ***
Library    SeleniumLibrary
Resource    ../Ressources/LoggingKeywords.robot
Resource    ../Ressources/ProductPageKeyword.robot

*** Test Cases ***

AddToCartTest
    SetUpKeword
    AddToCart    1    3
    AddToCart    2    2
    AddToCart    3    1
    AddToCart    4    5
    TearDownKeyword

*** Keywords ***

SetUpKeword
    OpenbrowserKeyword
    LoginKeyword   standard_user  secret_sauce
    Sleep    1s

AddToCart
    [Arguments]     ${product_number}   ${quantity}
    AddToCartKeyword    ${quantity}    ${product_number}
    Sleep    1s

TearDownKeyword
    LogoutKeyword
    ClosebrowserKeyword

