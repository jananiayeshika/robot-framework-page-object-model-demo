*** Settings ***
Library    String
Resource         ../keywords/login-page-keywords.robot

*** Variables ***
${VALID_EMAIL}       jananiayeshika1@gmail.com
${VALID_PASSWORD}    Jani#123

*** Keywords ***
Get Random Email
    ${EMAIL_USERNAME}      Generate Random String    10    [LETTERS]
    Return From Keyword    ${EMAIL_USERNAME}@gmail.com

Login To The Application
    Navigate To The Login Page
    Login with ${VALID_EMAIL} and ${VALID_PASSWORD}

${value_1} Should Be Larger Than ${value_2}
    Run Keyword If    ${value_1} <= ${value_2}    Fail    The value ${value_1} is not larger than ${value_2}

Check Page URL contains ${text}
    ${url}    Get Location
    Should Contain    ${url}    ${text}