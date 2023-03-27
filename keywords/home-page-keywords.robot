*** Settings ***
Library          SeleniumLibrary
Resource         ../locators/home-page-locators.robot


*** Keywords ***
My Account Icon Should Be Visible
    Wait Until Element Is Visible    ${MY_ACCOUNT_ICON}    30s
    
Click My Account Icon
    Wait Until Element Is Visible    ${MY_ACCOUNT_ICON}    30s
    Click Element                    ${MY_ACCOUNT_ICON}