*** Settings ***
Library    SeleniumLibrary    
*** Variables ***
${USERNAME}    %{BROWSERSTACK_USERNAME}
${ACCESS_KEY}    %{BROWSERSTACK_ACCESS_KEY}
${REMOTE_URL}    http://${USERNAME}:${ACCESS_KEY}@hub-cloud.browserstack.com/wd/hub
${BROWSER}    Chrome
${URL}    https://www.google.com
&{DC}    os=OSX    os_version=Mojave    browser=Safari    browser_version=12.0    build=RobotFramework    name=parallel_test

*** Test Cases ***
Parallel Tests
    Open Browser    ${URL}    &{DC}[browser]    remote_url=${REMOTE_URL}    desired_capabilities=&{DC}
    Input Text    name=q    BrowserStack 
    Press Keys    name=q    ENTER
    Sleep    5           
    Close Browser