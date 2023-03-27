*** Variables ***
${LOGIN_ICON}                                xpath = //span[contains(text(), 'Login')]
${CONTINUE_WITH_EMAIL_BUTTON}                xpath = //span[contains(text(), 'Continue with Email')]
${SIGN_UP_BUTTON}                            xpath = //button[contains(text(), 'Sign up')]
${NAME_TEXT_BOX}                             id = input_name
${EMAIL_TEXT_BOX}                            id = input_email
${PASSWORD_TEXT_BOX}                         id = input_password
${PASSWORD_CONFIRM_TEXT_BOX}                 id = input_password-confirm
${SIGN_UP_BUTTON}                            xpath = //button[contains(text(), 'Sign up')]
${ALREADY_REGISTERED_EMAIL_ERROR_MESSAGE}    xpath = //span[contains(text(), 'This email is already registered. Please log in.')]
${SUCCESS_SIGN_UP_INFO_TEXT}                 xpath =//div[contains(@class, 'info-text')]


${ERROR_MESSAGE_LOCATOR_FOR_NAME}                xpath = //label[@for='input_name']/following::div[contains(@class, 'error-message')][1]                          
${ERROR_MESSAGE_LOCATOR_EMAIL}                   xpath = //label[@for='input_email']/following::div[contains(@class, 'error-message')][1]                                                   
${ERROR_MESSAGE_LOCATOR_FOR_PASSWORD}            xpath = //label[@for='input_password']/following::div[contains(@class, 'error-message')][1]                                         
${ERROR_MESSAGE_LOCATOR_FOR_CONFIRM_PASSWORD}    xpath = //label[@for='input_password-confirm']/following::div[contains(@class, 'error-message')][1]