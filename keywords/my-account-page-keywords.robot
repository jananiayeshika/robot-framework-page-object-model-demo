*** Settings ***
Library    SeleniumLibrary
Resource    ../locators/my-account-page-locators.robot

*** Keywords ***
Get Number Of Ads
    ${NUMBER_OF_ADS}    Get Element Count    ${AD_TITLE_LOCATOR}    #get number of matches for the locators
    Return From Keyword    ${NUMBER_OF_ADS}    #return the locators count

Title Of The Ads That Needs Editing Should Be ${ad_title}
    Element Text Should Be    ${AD_TITLE_OF_ADS_NEEDS_EDITING}                 ${ad_title}

District Of The Ads That Needs Editing Should Be ${selected_district}
    Element Text Should Be    ${DISTICT_OF_ADS_THAT_NEEDS_EDITING}             ${selected_district}

Subcategory Name Of The Ads That Needs Editing Should be ${sub_category_name}
    Element Text Should Be    ${SUBCATEGORY_NAME_OF_ADS_THAT_NEEDS_EDITING}    ${sub_category_name}

Price Of The Ads That Needs Editing Should Be ${ad_price}
    Element Text Should Be    ${PRICE_OF_ADS-THAT_NEEDS_EDITING}               ${ad_price}

Title Of The Published Ads Should Be ${ad_title}    
    Element Text Should Be    ${PUBLISHED_AD_TITLE}                            ${ad_title}

District Of The Published Ads Should Be ${selected_district}
    Element Text Should Be    ${DISTRICT_OF_PUBLISHED_AD}                      ${selected_district}

Subcategory Name Of The Published Ads Should Be ${sub_category_name} 
    Element Text Should Be    ${SUBCATEGORY_NAME_OF_PUBLISHED_AD}              ${sub_category_name}

Price Of The Published Ads Should Be ${ad_price}
    Scroll Element Into View    ${PRICE_OF_PUBLISHED_AD}    
    Element Text Should Be      ${PRICE_OF_PUBLISHED_AD}                         ${ad_price}
                          