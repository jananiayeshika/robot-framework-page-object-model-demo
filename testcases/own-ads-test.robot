*** Settings ***
Resource    ../keywords/login-page-keywords.robot
Resource    ../keywords/home-page-keywords.robot
Resource    ../keywords/my-account-page-keywords.robot
Resource    ../keywords/common-keywords.robot

Documentation     This robot file contains My account test cases related to ikman.lk

Test Setup        Login To The Application
Test Teardown     Close Browser

*** Test Cases ***
Verify that the ads posted by the user display on My account page
    Click My Account Icon
    ${NUMBER_OF_ADS}    Get Number Of Ads
    ${NUMBER_OF_ADS} Should Be Larger Than 0    #ads count is higher than 0 which means there are ads

Verify that a user can see the details of ads that need editing 
    Click My Account Icon
    Title Of The Ads That Needs Editing Should Be Rent a small annex
    District Of The Ads That Needs Editing Should Be Colombo
    Subcategory Name of The Ads That Needs Editing Should be Room & Annex Rentals
    Price Of The Ads That Needs Editing Should Be Rs 5,000 /month

Verify that a user can see the details of published ads
    Click My Account Icon
    Title Of The Published Ads Should Be House Cleaning
    District Of The Published Ads Should Be Colombo
    Subcategory Name Of The Published Ads Should Be Domestic Services
    Price Of The Published Ads Should Be Rs 2,000