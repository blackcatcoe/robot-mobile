*** Settings ***
Library           AppiumLibrary

*** Variables ***
${PLATFORM_NAME}    iOS
${PLATFORM_VERSION}    11.4.1
${DEVICE_NAME}    PoriPhone
${APPLICATION_PATH}    /Users/rutairatsuwanrattana/Desktop/IntegrationApp.app
${BUDDLE_ID}    com.facebook.por1.integrationApp
${UDDID}     609ca047bb58c07de95f109ad3b36fd9c75a6063

*** Test Cases ***
First Test Case Alert
    Open Application    http://localhost:4723/wd/hub    platformName=${PLATFORM_NAME}
    ...    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APPLICATION_PATH}
    ...    bundleId=${BUDDLE_ID}    udid=${UDDID}
    Click Element    xpath=//XCUIElementTypeButton[@name="Alerts"]
    click element    id=button
    click element    xpath=//XCUIElementTypeButton[@name="Create App Alert"]
    click element    xpath=//XCUIElementTypeButton[@name="Will do"]
