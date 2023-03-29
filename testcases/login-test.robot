*** Settings ***
Library          SeleniumLibrary
Resource         ../keywords/login-page-keywords.robot
Resource         ../keywords/home-page-keywords.robot

Documentation    This robot file contains Login test cases related to ikman.lk

Test Setup       Navigate to the Login page
Test Teardown    Close Browser

*** Variables ***
${VALID_EMAIL}       jananiayeshika1@gmail.com
${VALID_PASSWORD}    Jani#123

${INVALID_EMAIL}       jananiayeshika2@gmail.com
${INVALID_PASSWORD}    QA#124


*** Test Cases ***
Verify that a user can login to the application using valid email and valid password
    Login with ${VALID_EMAIL} and ${VALID_PASSWORD}
    My Account Icon Should Be Visible

Verify that a user cannot login to the application using invalid email and invalid password
    Login with ${INVALID_EMAIL} and ${INVALID_PASSWORD}
    Incorrect credentials error message should be visible

Verify that a user cannot login to the application using valid email and invalid password
    Login with ${VALID_EMAIL} and ${INVALID_PASSWORD}
    Incorrect credentials error message should be visible

Verify that a user cannot login to the application using invalid email and valid password
    Login with ${INVALID_EMAIL} and ${VALID_PASSWORD}
    Incorrect credentials error message should be visible