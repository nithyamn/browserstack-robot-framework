*** Settings ***
Library    SeleniumLibrary    
*** Variables ***
${USERNAME}    %{BROWSERSTACK_USERNAME}
${ACCESS_KEY}    %{BROWSERSTACK_ACCESS_KEY}
${REMOTE_URL}    http://${USERNAME}:${ACCESS_KEY}@hub-cloud.browserstack.com/wd/hub
${URL}    http://bs-local.com:45691/check
&{DC}    os=Windows    os_version=10    browser=Chrome    browser_version=78.0    build=RobotFramework    name=local_test

*** Test Cases ***
Run Local Tests on BrwoseStack
    Open Browser    ${URL}    &{DC}[browser]    remote_url=${REMOTE_URL}    desired_capabilities=&{DC}
    Sleep    5           
    Close Browser