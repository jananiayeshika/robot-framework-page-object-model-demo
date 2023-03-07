*** Variables ***
${LOGIN_ICON}                             xpath = //span [contains(text(), 'Login')]
${CONTINUE_WITH_EMAIL_BUTTON}             xpath = //span [contains(text(), 'Continue with Email')]
${EMAIL_TEXT_BOX}                         id = input_email
${PASSWORD_TEXT_BOX}                      id = input_password
${LOGIN_BUTTON}                           xpath = //button[contains(text(), 'Login')]
${INCORRECT_CREDENTIALS_ERROR_MESSAGE}    xpath = //span[contains(text(), 'The email or password you entered did not match our records')]