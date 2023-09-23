 *** Settings ***
Library     SeleniumLibrary   
Resource    CommonVariables.resource
Resource     ../Pages/loginPage.robot
Resource     ../Pages/homePage.robot



*** Keywords ***
#defining all common functionalities 
OPEN     
      Open Browser    ${url}  ${browser}
      Maximize Browser Window
      Delete All Cookies
    

LOGIN
    [Arguments]    ${user}    ${password}
    Input Text     ${emailAddressField}  ${user}
    Input Text    ${passwordField}    ${password}   
    Click Element    ${loginButton}
    Wait Until Page Contains Element    ${userIcon}
    Page Should Contain Element     ${homeIcon}
      
LOGOUT
    Page Should Contain Element     ${userIcon}
    Click Element   ${userIcon}
    Click Element   ${logOut}
    Page Should Contain Element    ${displayIcon}
    
CLOSE
    close browser    

     