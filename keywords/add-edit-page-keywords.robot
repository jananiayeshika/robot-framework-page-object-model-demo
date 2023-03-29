*** Settings ***
Library    SeleniumLibrary
Resource    ../locators/add-edit-page-locators.robot

*** Keywords ***
Fill in the details Heading Should Be Visible 
    Element Text Should Be    ${Fill_IN_THE_DETAILS_HEADING}    Fill in the details  