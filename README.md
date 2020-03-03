# browserstack-robot-framework

![BrowserStack Logo](https://d98b8t1nnulk5.cloudfront.net/production/images/layout/logo-header.png?1469004780) 

## Setup
* Clone the repo
* Install dependencies  `pip3 install robotframework`  &&  `pip3 install --upgrade robotframework-seleniumlibrary` && `pip3 install robotframework-pabot` -> This is for parallelization 
* **Note: This is w.r.t Python3**

## Running your tests
* Navigate to 'test' folder, `cd test`
* To run single test, run `robot SingleTest.robot`
* To run local tests, run `robot LocalTest.robot`
* To run parallel tests, navigate to 'parallel' folder, run `cd parallel`
  - Run `pabot --processes <count_of_parallels> *.robot`
  - Alternate method: `pabot --processes <count_of_parallels> <name_of_suites_to_run>` Eg: `pabot --processes 2 Suite1.robot       Suite2.robot`
  - **Note: Parallels are configured at Suite level in this project.**


 Understand how many parallel sessions you need by using our [Parallel Test Calculator](https://www.browserstack.com/automate/parallel-calculator?ref=github)

## Notes
* You can view your test results on the [BrowserStack Automate dashboard](https://www.browserstack.com/automate)
* To test on a different set of browsers, check out our [platform configurator](https://www.browserstack.com/automate/java#setting-os-and-browser)
* You can export the environment variables for the Username and Access Key of your BrowserStack account. 

  ```
  export BROWSERSTACK_USERNAME=<browserstack-username> &&
  export BROWSERSTACK_ACCESS_KEY=<browserstack-access-key>
  ```

## Addtional Resources
* [Documentation for writing Automate test scripts in Java](https://www.browserstack.com/automate/java)
* [Customizing your tests on BrowserStack](https://www.browserstack.com/automate/capabilities)
* [Browsers & mobile devices for selenium testing on BrowserStack](https://www.browserstack.com/list-of-browsers-and-platforms?product=automate)
* [Using REST API to access information about your tests via the command-line interface](https://www.browserstack.com/automate/rest-api)
