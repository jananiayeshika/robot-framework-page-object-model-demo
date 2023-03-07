*** Settings ***
Library           SeleniumLibrary
Library           String
Documentation     This robot file contains Sign up test cases related to ikman.lk

Test Setup        Navigate to the Login page
Test Teardown     Close Browser


*** Variables ***
${NAME}                Nethmi
${PASSWORD}            nethmi@25
${CONFIRM_PASSWORD}    nethmi@25
${REGISTERED_EMAIL}    jananiayeshika1@gmail.com


*** Test Cases ***
Verify that an un registered user can register to the application
    ${VALID_EMAIL}    Get Random Email
    Login with ${NAME}, ${VALID_EMAIL}, ${PASSWORD} and ${CONFIRM_PASSWORD}
    Page Should Contain Element    xpath = //a[@aria-label ='My account']

Verify that the already registered user cannot register to the application
    Login with ${NAME}, ${REGISTERED_EMAIL}, ${PASSWORD} and ${CONFIRM_PASSWORD}
    Element Should Be Visible    xpath = //span[contains(text(), 'This email is already registered. Please log in.')]


*** Keywords ***
Navigate to the Login page
    Open Browser    https://ikman.lk/    Chrome
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Click Element    xpath = //span[contains(text(), 'Login')]
    Click Element    xpath = //span[contains(text(), 'Continue with Email')]
    Click Element    xpath = //button[contains(text(), 'Sign up')]

Login with ${name}, ${email}, ${password} and ${password-confirm}
    Input Text    id = input_name    ${name}
    Input Text    id = input_email    ${email}
    Input Text    id = input_password    ${password}
    Input Text    id = input_password-confirm    ${password-confirm}
    Click Element    xpath = //button[contains(text(), 'Sign up')]

Get Random Email
    ${EMAIL_USERNAME}    Generate Random String    10    [LETTERS]
    Return From Keyword    ${EMAIL_USERNAME}@gmail.com