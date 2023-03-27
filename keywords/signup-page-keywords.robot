*** Settings ***
Library    SeleniumLibrary
Resource    ../locators/signup-page-locators.robot
Resource    ../keywords/login-page-keywords.robot


*** Keywords ***
Navigate To Sign Up Page
    Navigate To The Login Page
    Click Element    ${SIGN_UP_BUTTON}

Fill Registration Form With ${name}, ${email}, ${password} And ${password-confirm}
    Input Text    ${NAME_TEXT_BOX}                ${name}
    Input Text    ${EMAIL_TEXT_BOX}               ${email}
    Input Text    ${PASSWORD_TEXT_BOX}            ${password}
    Input Text    ${PASSWORD_CONFIRM_TEXT_BOX}    ${password-confirm}

Register To The Application With ${name}, ${email}, ${password} And ${password-confirm}
    Fill Registration Form With ${name}, ${email}, ${password} And ${password-confirm}
    Click Element    ${SIGN_UP_BUTTON}
    
Already Registerd Email Error Message Should Be Visible
    Wait Until Element Is Visible    ${ALREADY_REGISTERED_EMAIL_ERROR_MESSAGE}    30s

Sign Up Success Info Text Should Be Visible
    Wait Until Element Is Visible    ${SUCCESS_SIGN_UP_INFO_TEXT}    30s
    Element Text Should Be    ${SUCCESS_SIGN_UP_INFO_TEXT}           Congratulations! Your have successfully created your account on ikman.

Filling Incorrect Format Of Data Error Messages Should Be Visible
    Element Text Should Be    ${ERROR_MESSAGE_LOCATOR_FOR_NAME}                Please enter 2 - 40 characters
    Element Text Should Be    ${ERROR_MESSAGE_LOCATOR_EMAIL}                   Please enter a valid email address.
    Element Text Should Be    ${ERROR_MESSAGE_LOCATOR_FOR_PASSWORD}            Please use at least 5 characters.
    Element Text Should Be    ${ERROR_MESSAGE_LOCATOR_FOR_CONFIRM_PASSWORD}    Passwords do not match.

Click The Name, Email, Password, Confirm-password and Name Text Boxes
    Click Element    ${NAME_TEXT_BOX}
    Click Element    ${EMAIL_TEXT_BOX}
    Click Element    ${PASSWORD_TEXT_BOX}
    Click Element    ${PASSWORD_CONFIRM_TEXT_BOX}
    Click Element    ${NAME_TEXT_BOX}

Filling Required Fields Error Messages Should Be Visible
    Element Text Should Be    ${ERROR_MESSAGE_LOCATOR_FOR_NAME}                You must fill out this field.    
    Element Text Should Be    ${ERROR_MESSAGE_LOCATOR_EMAIL}                   You must fill out this field.    
    Element Text Should Be    ${ERROR_MESSAGE_LOCATOR_FOR_PASSWORD}            You must fill out this field.    
    Element Text Should Be    ${ERROR_MESSAGE_LOCATOR_FOR_CONFIRM_PASSWORD}    You must fill out this field.   
