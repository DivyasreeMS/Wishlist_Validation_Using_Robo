*** Settings ***
Library           Selenium2Library
Library           String

*** Variables ***
${Username}       msdivyasree3@gmail.com
${Password}       abcd123
${URL}            https://www.westwingnow.de/
${Browser}        chrome

*** Test Cases ***
TC1
    Open Browser    ${URL}    ${Browser}
    Disable Cookies
    sleep    2s
    Click on MOBEL
    Disable PopUP
    Click Element    //*[@class='ww-uikit_StyledHeartIcon-sc-1jh2r08 bAkSCb']
    Sleep    1s
    Comment    Switching to login form of the overlay
    Click Button    Hier einloggen
    Input Text    //input[@name='email']    ${Username}
    Input Password    //input[@name='password']    ${Password}
    Click Button    //*[@data-testid="login_reg_submit_btn"]
    Comment    Wait Until it gets added to the Wishlist
    Sleep    1s
    Comment    Click on Wishlist and delete the item added above
    Delete First Item From Wishlist
    Close Browser

*** Keywords ***
Click on MOBEL
    Comment    Click on MOBEl option in Home Page
    Comment    It is Recommended to use Relative xpath : Click Element    //a[@href='/moebel/']
    Click Element    //*[@id="wwOneHeader"]/div/div[2]/nav/ul/li[4]

Disable Cookies
    sleep    2s
    Click Element    //button[text()='Cookie-Einstellungen']
    Click Element    //button[text()='Alle zulassen']

Disable PopUP
    sleep    2s
    Click Button    Hier einloggen
    sleep    2s
    CLick Button    //*[@data-identifier="LOGIN_AND_REGISTER"]
    sleep    1s

Delete First Item From Wishlist
    sleep    1s
    Click Element    //*[@class="icon-wishlist"]
    Comment    There is a delay in opening the wishlist, approx. the delay to 5s.Better way is to wait until the page iis loaded successfully, we can write a code to until the page loads
    sleep    5s
    Click Button    //*[@class="blockListProduct__delete qaBlockListProduct__delete"]
    Comment    Wait until list is clear
    sleep    1s
