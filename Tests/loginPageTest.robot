*** Settings ***
Library    SeleniumLibrary   #to use Selenium and perform web-based operations.
Resource    ../Utilities//CommonFunctionalities.resource
Resource    ../Utilities/CommonVariables.resource
Resource    ../Pages/loginPage.robot
Resource    ../Pages/homePage.robot
Suite Teardown     CLOSE 

*** Test Cases ***
#logging with the first user
loginFunctionality1
    [tags]    firstUser
    OPEN    ${browser1}
    LOGIN     ${username1}    ${password1}   
    LOGOUT
    
    
#logging with the second user      
loginFunctionality2
    [tags]    secondUser
    OPEN    ${browser2}
    LOGIN     ${username2}    ${password2} 
    LOGOUT
 
#logging with the third user
loginFunctionality3
    [tags]    thirdUser
    OPEN    ${browser3}
    LOGIN     ${username3}    ${password3}  
    LOGOUT
     
#trying to logging in with wrong password
loginFailure
    OPEN    ${browser4}
    Input Text     ${emailAddressField}  ${username1}
    Input Text    ${passwordField}    ${randompassword}   
    Click Element    ${loginButton}
    Page Should Contain Element     ${displayIcon}
   


