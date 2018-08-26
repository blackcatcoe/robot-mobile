*** Settings ***
Library           AppiumLibrary

*** Variables ***


*** Test Cases ***
TC01
    Open Application    http://localhost:4723/wd/hub    platformName=Android    platformVersion=7.0
    ...    deviceName=0215433832413136
    ...    appPackage=com.ba.universalconverter    appActivity=MainConverterActivity
    ...    app=D:\\Training\\ii\\robot-mobile\\PreciseUnitConversion.apk
    Click Element    xpath=//*[contains(@text,'7')]
    Click Element    xpath=//*[contains(@text,'9')]
    ${actual}    Get Text    id=com.ba.universalconverter:id/target_value
    Should Be Equal    ${actual}    2 407.92
    Click Element    xpath=//android.widget.ImageButton[@content-desc='Open navigation drawer']
    Page Should Contain Element    xpath=//android.widget.TextView[@text='Unit Converter']
    Scrool Down To Menu  menu=Acceleration
    Click Element    xpath=//android.widget.ImageButton[@content-desc='Close navigation drawer']
    sleep  2s
    Click Element    xpath=//android.widget.ImageButton[@content-desc='Open navigation drawer']
    Page Should Contain Element    xpath=//android.widget.TextView[@text='Unit Converter']
#    Swipe    15    600    15    200
#    Swipe    15    600    15    200
#    Swipe    15    600    15    200
    Scrool Down To Menu  menu=Electric
    Click Element   xpath=//android.widget.ImageButton[@content-desc='Close navigation drawer']
    Click Element   xpath=//android.widget.TextView[@content-desc='Search']
    input text  id=com.ba.universalconverter:id/search_src_text  test
    click element  xpath=//android.widget.ImageView[@content-desc='Clear query']
    Click Element At Coordinates  960  1593
    Click Element At Coordinates  615  1560
    Click Element At Coordinates  880  1570
    Click Element At Coordinates  960  1593

*** Keywords ***
Scrool Down To Menu
    [Arguments]  ${menu}
    : FOR    ${round}    IN RANGE    0    5
    \    Swipe    15    600    15    200
    \    ${found}    Run Keyword And Return Status    Wait Until Page Contains Element    xpath=//android.widget.TextView[@text='${menu}']
    \    log    ${found}
    \    Run Keyword If    ${found}     Exit For Loop
    \    ${round}    Set Variable    ${round}+1
