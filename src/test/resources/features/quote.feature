#Test Quote App
#author: Yuliya Lesyuk
  
  Feature: Quote Test Scenarios
    Background:
      Given I open url "https://skryabin.com/market/quote.html"
      Then I resize window to 1928 and 1080
    
    Scenario: Validete Location Address 
      Given I open url "https://skryabin.com/market/quote.html"
      Then I resize window to 1928 and 1080
      Then element with xpath "//b[@id='location']" should be displayed
      Then element with xpath "//b[@id='location']" should contain text "Los Altos"
      #Ipad
      Then I resize window to 768 and 1024
      Then element with xpath "//b[@id='location']" should be displayed
      Then element with xpath "//b[@id='location']" should contain text "Los Altos"
      #Phone
      Then I resize window to 375 and 667
      Then element with xpath "//b[@id='location']" should not be displayed

    Scenario: Name field verification
      Then I click on element with xpath "//input[@id='name']"
      Then element with xpath "//input[@id='firstName']" should be displayed
      And I type "a" into element with xpath "//input[@id='firstName']"
      Then element with xpath "//input[@id='middleName']" should be displayed
      And I type "b" into element with xpath "//input[@id='middleName']"
      Then element with xpath "//input[@id='lastName']" should be displayed
      And I type "c" into element with xpath "//input[@id='lastName']"
      And I click on element with xpath "//span[contains(text(),'Save')]"
      Then element with xpath "//input[@id='name']" should have attribute "value" as "a b c"

    Scenario Outline: Name field verification DD
      Then I click on element with xpath "//input[@id='name']"
      Then element with xpath "//input[@id='firstName']" should be displayed
      And I type "<firstName>" into element with xpath "//input[@id='firstName']"
      Then element with xpath "//input[@id='middleName']" should be displayed
      And I type "<middleName>" into element with xpath "//input[@id='middleName']"
      Then element with xpath "//input[@id='lastName']" should be displayed
      And I type "<lastName>" into element with xpath "//input[@id='lastName']"
      And I click on element with xpath "<//span[contains(text(),'Save')]"
      Then element with xpath "//input[@id='name']" should have attribute "value" as "<fullName>"

      Examples:
        | firstName | middleName | lastName | fullName |
        | a | b | c | a b c |
        | A | B | C | A B C |

      Scenario: Open URl based on your own request and your own method
        Then YL navigate to "quote app"