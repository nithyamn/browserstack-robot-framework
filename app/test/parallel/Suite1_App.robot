*** Settings ***
Library    AppiumLibrary

*** Variables ***
${USERNAME}    %{BROWSERSTACK_USERNAME}    #Can specify BrowserStack Username directly instead of Environment variable.
${ACCESS_KEY}    %{BROWSERSTACK_ACCESS_KEY}    #Can specify BrowserStack Accesskey directly instead of Environment variable.
${REMOTE_URL}    http://${USERNAME}:${ACCESS_KEY}@hub-cloud.browserstack.com/wd/hub
${URL}    https://www.google.com

*** Test Cases ***
Appium Test on BrowserStack
    Open Application    ${REMOTE_URL}    name=parallel_test	build=RobotFramework    platformName=iOS    os_version=13.0    device=iPhone XS    app=bs://07dc0a4af4567a7086a3c739b3b51f41a086e6a0
	# accessibility id=Alert Button
	Click Element    id=Alert Button
	# accessibility id=OK
	Click Element    id=OK
	Close Application

