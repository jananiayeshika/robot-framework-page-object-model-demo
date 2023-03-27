*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../keywords/signup-page-keywords.robot
Resource          ../keywords/home-page-keywords.robot
Resource          ../keywords/common-keywords.robot

Documentation     This robot file contains Sign up test cases related to ikman.lk

Test Setup        Navigate to Sign Up Page
Test Teardown     Close Browser


*** Variables ***
${NAME}                Nethmi
${PASSWORD}            nethmi@25
${CONFIRM_PASSWORD}    nethmi@25
${REGISTERED_EMAIL}    jananiayeshika1@gmail.com

${NAME_WITH_ONE_CHARACTER}                          W  
${EMAIL_WITH_INVALID_FORMAT}                        wasana@gmail    
${PASSWORD_WITH_FOUR_CHARACTERS}                    WA12   
${CONFIRM_PASSWORD_DOES_NOT_MATCH_WITH_PASSWORD}    1234


*** Test Cases ***
Verify that an un registered user can register to the application
    ${VALID_EMAIL}    Get Random Email
    Register To The Application With ${NAME}, ${VALID_EMAIL}, ${PASSWORD} and ${CONFIRM_PASSWORD}
    Sign Up Success Info Text Should Be Visible
    My Account Icon Should Be Visible

Verify that the already registered user cannot register to the application
    Register To The Application With ${NAME}, ${REGISTERED_EMAIL}, ${PASSWORD} and ${CONFIRM_PASSWORD}
    Already Registerd Email Error Message Should Be Visible

Verify that the user cannot sign up by filling incorrect format of data
    Fill Registration Form With ${NAME_WITH_ONE_CHARACTER}, ${EMAIL_WITH_INVALID_FORMAT}, ${PASSWORD_WITH_FOUR_CHARACTERS} And ${CONFIRM_PASSWORD_DOES_NOT_MATCH_WITH_PASSWORD}
    Filling Incorrect Format Of Data Error Messages Should be Visible

Verify that the user cannot sign up without filling required details
    Click The Name, Email, Password, Confirm-password and Name Text Boxes
    Filling Required Fields Error Messages Should Be Visible