*** Settings ***
Library    SeleniumLibrary
Variables   ../PageObject/Locators.py


*** Keywords ***

OpenbrowserKeyword
    Open Browser    ${URL}   headlesschrome
    Maximize Browser Window

ClosebrowserKeyword
    Close Browser

LoginKeyword
    [Arguments]     ${USERNAME}    ${PASSWORD}
    Input text    ${txt_login_username}    ${USERNAME}
    Input text    ${txt_login_password}    ${PASSWORD}
    Click Element    ${btn_login_login}

LogoutKeyword
    Wait Until Element Is Visible    ${btn_product_logout}    3s
    Click Element    ${btn_product_logout}

SeeIfFailedLoginKeyword
    Wait until element is visible    ${txt_login_error}    3s