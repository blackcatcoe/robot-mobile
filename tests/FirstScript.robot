*** Settings ***
Library           AppiumLibrary

*** Test Cases ***
TC01
    Open Application    http://localhost:4723/wd/hub    platformName=Android    platformVersion=7.0    deviceName=0215433832413136    app=E:\\iiTraining\\robot-mobile\\PreciseUnitConversion.apk    appPackage=com.ba.universalconverter
    ...    appActivity=MainConverterActivity
    Click Element    xpath=//*[contains(@text,'7')]
    Click Element    xpath=//*[contains(@text,'9')]
    ${actual}    Get Text    id=com.ba.universalconverter:id/target_value
    Should Be Equal    ${actual}    2 407.92
    Click Element    xpath=//android.widget.ImageButton[@content-desc='Open navigation drawer']
    Page Should Contain Element    xpath=//android.widget.TextView[@text='Unit Converter']
