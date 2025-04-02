*** Settings ***
Library    SeleniumLibrary
Variables   ../PageObject/Locators.py


*** Keywords ***
AddToCartKeyword
    [Arguments]     ${QUANTITY}     ${product_number}
    FOR     ${i}  IN RANGE  0   ${QUANTITY}
        Click Element   xpath=//*[@id='products-grid']/div[${product_number}]/button
        Sleep    1s
    END
