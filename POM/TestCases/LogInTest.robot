*** Settings ***
Library    SeleniumLibrary
Resource    ../Ressources/LoggingKeywords.robot

*** Test Cases ***
BasicLogin
    Login    standard_user  secret_sauce

*** Keywords ***
Login
    [Arguments]     ${USERNAME}    ${PASSWORD}
    OpenbrowserKeyword
    Sleep    1s
    LoginKeyword   ${USERNAME}    ${PASSWORD}
    Sleep    2s
    LogoutKeyword
    ClosebrowserKeyword