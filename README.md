# woolies_api
API automation framework for woolies coding challenge

Technologies used:
  - Java 1.8 (Junit)
  - Maven
  - Karate BDD
  
## Installation instructions:
  1. Clone repo using **https://github.com/prabjotsudan/woolies_api.git**
  2. Open the project in your IDE (Eclipse / intelliJ)
  3. You will see the following structure:
  ```
├── README.md                                   # You are reading this now :-)
├── pom.xml                                     # Maven file
├── src
│   └── test
│       └── java                                # Test folder containing all the test code
│           ├── karate-config.js                # Karate config file, can be used to set global/system variables that are accessible throughout the project
│           ├── logback-test.xml
│           └── weather                         # Folder containing test code
│               ├── features                    # Folder containing feature file and runner (moved runner in this package as per Karate guidelines)
│               │   ├── Runner.java             # Test runner file
│               │   └── weatherApi.feature      # Feature file containing test logic
│               └── testData                    # Folder containing test data
│                   └── params.json             # JSON file containing params to be passed 
├── target                                      # (Not committed to source code) Output folder for test reports logs
```

## Test execution instructions:
There are 2 ways to execute tests:
  1. Navigate to the checked out repo and execute **mvn clean install** command
  2. Open **src/test/java/weather/features/Runner.java** file in your IDE and run it
      
## HTML Reports:
  * HTML reports are located at **target/surefire-reports/karate-summary.html**

