*** Settings ***
Library    SeleniumLibrary  #to use Selenium and perform web-based operations.
Library  OperatingSystem
Library  String
Resource    ../Utilities//CommonFunctionalities.resource
Resource    ../Utilities/CommonVariables.resource
Resource    ../Pages/loginPage.robot
Resource    ../Pages/homePage.robot
Suite Setup    OPEN    
Suite Teardown     CLOSE    

*** Test Cases ***
#verifying all elements on the page
Checking Elements on the Page
       LOGIN     ${username1}    ${password1}   
       Page Should Contain Element    ${productsIcon}
       Page Should Contain Element    ${contactIcon}
       Page Should Contain Element    ${text}
       LOGOUT
       
