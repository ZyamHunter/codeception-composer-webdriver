*** Variables ***
${ANDROID_AUTOMATION_NAME}      UIAutomator2
${ANDROID_APP}                  Bankeiro
${ANDROID_PLATFORM_NAME}        Android
${ANDROID_DEVICENAME}           emulator-5554
${ANDROID_APPPACKAGE}           com.bank.tpm
${SERVER_APPIUM}                http://localhost:4723
${APP_ACTIVITY}                 com.bank.tpm.MainActivity

${ENTER_BUTTON_HOME}            //*[@text="ACESSAR CONTA"]
${FORGOT_LOGIN_OPTION}          //*[@resource-id="login_LoginScreen_forgotPasswordButton"]
${NOTIFICATION}                 Seu login foi enviado para o email
