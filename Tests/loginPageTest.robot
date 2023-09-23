*** Settings ***
Library    SeleniumLibrary   #to use Selenium and perform web-based operations.
Resource    ../Utilities//CommonFunctionalities.resource
Resource    ../Utilities/CommonVariables.resource
Resource    ../Pages/loginPage.robot
Resource    ../Pages/homePage.robot
Suite Setup    OPEN
Suite Teardown     CLOSE

*** Test Cases ***
#logging with the first user
loginFunctionality1
    [tags]    firstUser
    LOGIN     ${username1}    ${password1}   
    LOGOUT

#logging with the second user      
loginFunctionality2
    [tags]    secondUser
    LOGIN     ${username2}    ${password2} 
    LOGOUT
       
#logging with the third user
loginFunctionality3
    [tags]    thirdUser
    LOGIN     ${username3}    ${password3}  
    LOGOUT
          
#trying to logging in with wrong password
loginFailure
    Input Text     ${emailAddressField}  ${username1}
    Input Text    ${passwordField}    ${randompassword}   
    Click Element    ${loginButton}
    Page Should Contain Element     ${displayIcon}


