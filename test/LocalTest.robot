*** Settings ***
Library    SeleniumLibrary   
Library    browserstack.local 
*** Variables ***
${USERNAME}    %{BROWSERSTACK_USERNAME}    #Can specify BrowserStack Username directly instead if Environment variable.
${ACCESS_KEY}    %{BROWSERSTACK_ACCESS_KEY}    #Can specify BrowserStack Accesskey directly instead if Environment variable.
${REMOTE_URL}    http://${USERNAME}:${ACCESS_KEY}@hub-cloud.browserstack.com/wd/hub
${URL}    http://bs-local.com:45691/check
&{DC}    os=Windows    os_version=10    browser=Chrome    browser_version=78.0    build=RobotFramework    name=local_test    browserstack.local=true
*** Test Cases ***
Run Local Tests on BrowserStack
    Open Browser    ${URL}    &{DC}[browser]    remote_url=${REMOTE_URL}    desired_capabilities=&{DC}
    Sleep    5           
    Close Browser