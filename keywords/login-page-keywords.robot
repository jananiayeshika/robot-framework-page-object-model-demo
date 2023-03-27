*** Settings ***
Library          SeleniumLibrary
Resource         ../locators/login-page-locators.robot


*** Keywords ***
Navigate To The Login Page
    Open Browser    https://ikman.lk/    Chrome    options=add_argument("--start-maximized")
    Set Selenium Implicit Wait    30s 
    Click Element    ${LOGIN_ICON}
    Click Element    ${CONTINUE_WITH_EMAIL_BUTTON}

Login With ${email} And ${password} 
    Input Text        ${EMAIL_TEXT_BOX}        ${email}
    Input Text        ${PASSWORD_TEXT_BOX}     ${password}
    Click Element     ${LOGIN_BUTTON}

Incorrect Credentials Error Message Should Be Visible
    Wait Until Element Is Visible    ${INCORRECT_CREDENTIALS_ERROR_MESSAGE}    30s