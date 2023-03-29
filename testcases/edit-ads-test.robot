*** Settings ***
Resource    ../keywords/login-page-keywords.robot
Resource    ../keywords/home-page-keywords.robot
Resource    ../keywords/common-keywords.robot
Resource    ../keywords/add-edit-page-keywords.robot
Resource    ../keywords/my-account-page-keywords.robot

Documentation     This robot file contains My account test cases related to ikman.lk

Test Setup        Login To The Application
Test Teardown     Close Browser

*** Test Cases ***
Verify that the user posted ads can edit in the My account page
    Click My Account Icon
    Click Edit Button In User Posted Ad
    Check Page URL contains /edit
    Fill in the details Heading Should Be Visible     