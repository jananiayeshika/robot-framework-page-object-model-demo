*** Variables ***
${AD_TITLE_LOCATOR}                              xpath = //a[@class= 'item-title h4']
${AD_TITLE_OF_ADS_NEEDS_EDITING}                 xpath = (//a[@class = 'item-title h4'])[1]
${DISTICT_OF_ADS_THAT_NEEDS_EDITING}             xpath = (//span[@class = 'item-area'])[1]
${SUBCATEGORY_NAME_OF_ADS_THAT_NEEDS_EDITING}    xpath = (//span[@class = 'item-cat'])[1]
${PRICE_OF_ADS-THAT_NEEDS_EDITING}               xpath = (//P[@class = 'item-info'])[1]
${PUBLISHED_AD_TITLE}                            xpath = (//a[@class = 'item-title h4'])[2]
${DISTRICT_OF_PUBLISHED_AD}                      xpath = (//span[@class = 'item-area'])[2]
${SUBCATEGORY_NAME_OF_PUBLISHED_AD}              xpath = (//span[@class = 'item-cat'])[2]
${PRICE_OF_PUBLISHED_AD}                         xpath = (//p[@class = 'item-info'])[2]
${EDIT_BUTTON}                                   xpath = //a[@class= 'ui-btn is-secondary btn-edit is-s']