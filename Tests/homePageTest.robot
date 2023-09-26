*** Settings ***
Library    SeleniumLibrary  #to use Selenium and perform web-based operations.
Library    OperatingSystem
Library    String
Resource    ../Utilities//CommonFunctionalities.resource
Resource    ../Utilities/CommonVariables.resource
Resource    ../Pages/loginPage.robot
Resource    ../Pages/homePage.robot
Suite Teardown    CLOSE    

*** Test Cases ***
#verifying all elements on the page
Checking Elements on the Page
    OPEN    ${browser1}
    LOGIN     ${username1}    ${password1}   
    Page Should Contain Element    ${productsIcon}
    Page Should Contain Element    ${contactIcon}
    Page Should Contain Element    ${TextOnThePage}
    LOGOUT
       
#copying all text from the page to a file        
Getting Text value
    OPEN    ${browser1}
    LOGIN    ${username1}    ${password1} 
    ${get_text}=     Get Text    ${TextOnThePage}
    Create File    ${path}    ${get_text} 
