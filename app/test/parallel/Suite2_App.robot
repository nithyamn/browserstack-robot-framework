*** Settings ***
Library    AppiumLibrary

*** Variables ***
${USERNAME}    %{BROWSERSTACK_USERNAME}    #Can specify BrowserStack Username directly instead of Environment variable.
${ACCESS_KEY}    %{BROWSERSTACK_ACCESS_KEY}    #Can specify BrowserStack Accesskey directly instead of Environment variable.
${REMOTE_URL}    http://${USERNAME}:${ACCESS_KEY}@hub-cloud.browserstack.com/wd/hub
${URL}    https://www.google.com

*** Test Cases ***
Appium Test on BrowserStack
    # id=org.wikipedia.alpha:id/search_container
    Open Application    ${REMOTE_URL}    name=parallel_test    build=RobotFramework    platformName=Android    os_version=10.0    device=Google Pixel 4    app=bs://ae210c1d04aa89db927c408f6d7da115303fba0d
	# id=org.wikipedia.alpha:id/search_container
	Click Element    id=org.wikipedia.alpha:id/search_container
	# id=org.wikipedia.alpha:id/search_src_text
	Click Element    id=org.wikipedia.alpha:id/search_src_text
	Input Text    id=org.wikipedia.alpha:id/search_src_text    BrowserStack
	Click Element    id=org.wikipedia.alpha:id/search_src_text
	# xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout[2]/android.view.ViewGroup/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.LinearLayout
	Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout[2]/android.view.ViewGroup/android.support.v4.view.ViewPager/android.view.ViewGroup/android.widget.FrameLayout/android.support.v7.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.LinearLayout
	Close Application
