
*** Variables ***
#defining all elements present on login page
${emailAddressField} =     xpath=//input[@id="email"] 
${passwordField}=    xpath=//input[@id="password"]
${loginButton}=    xpath=//input[@id="login"]
${displayIcon}=    xpath=//*[text()="Automation doesn't stop at testing, it's just a beginning!"]  
${message}=    xpath=//div[@class="div-container"]/p