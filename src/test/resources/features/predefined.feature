# jira id
# author: Yuliya Lesyuk

@predefined
Feature: Smoke steps

  @predefined1
  Scenario: Predefined steps for Google
    Given I open url "https://google.com"
    Then I should see page title as "Google"
    Then element with xpath "//textarea[@name='q']" should be present
    When I type "Behavior Driven Development" into element with xpath "//textarea[@name='q']"
    Then I click on element using JavaScript with xpath "(//input[@name='btnK'])[1]"
    Then I wait for element with xpath "//*[@id='res']" to be present
    Then element with xpath "//*[@id='res']" should contain text "Cucumber

  @predefined2
  Scenario: Search Engine for http://gibiru.com
    Given I open url "http://gibiru.com"
    Then I should see page title as "Gibiru – Protecting your privacy since 2009"
    Then element with xpath "//input[@id='q']" should be present
    Then I type "selenium webdriver" into element with xpath "//input[@id='q']"
    And I click on element with xpath "//button[@type='submit']"
    And I wait for 10 sec
    Then element with xpath "//div[@id='web-results']" should not contain text "selenium webdriver"

  @predefined3
  Scenario: Search Engine for https://duckduckgo.com
    Given I open url "https://duckduckgo.com"
    Then I should see page title as "DuckDuckGo — Privacy, simplified."
    Then element with xpath "//input[@id='searchbox_input']" should be present
    Then I type "selenium webdriver" into element with xpath "//input[@id='searchbox_input']"
    And I click on element with xpath "//button[@type='submit']"
    And I wait for 5 sec
    Then element with xpath "//div[@id='header']" should not contain text "selenium webdriver"

  @predefined4
  Scenario: Search Engine for https://swisscows.com
    Given I open url "https://swisscows.com"
    Then I should see page title as "Your private and anonymous search engine Swisscows"
    Then element with xpath "//input[@type='search']" should be present
    Then I type "selenium webdriver" into element with xpath "//input[@type='search']"
    And I click on element with xpath "//button[@type='submit']"
    And I wait for 5 sec
    Then element with xpath "//header[@id='header']" should not contain text "selenium webdriver"

  @predefined5
  Scenario: Search Engine for https://www.searchencrypt.com
    Given I open url "https://www.searchencrypt.com"
    Then I should see page title as "Search Encrypt | Home"
    Then element with xpath "//input[@name='q']" should be present
    Then I type "selenium webdriver" into element with xpath "//input[@name='q']"
    And I click on element with xpath "//button[@type='submit']"
    And I wait for 5 sec
    Then element with xpath "//div[@class='logo']" should not contain text "selenium webdriver"

  @predefined6
  Scenario: Search Engine for https://www.startpage.com
    Given I open url "https://www.startpage.com"
    Then I should see page title as "Startpage - Private Search Engine. No Tracking. No Search History."
    Then element with xpath "//input[@id='q']" should be present
    Then I type "selenium webdriver" into element with xpath "//input[@id='q']"
    And I click on element with xpath "//button[@id='search-btn']"
    And I wait for 5 sec
    Then element with xpath "//header[@role='banner']" should not contain text "selenium webdriver"

  @predefined7
  Scenario: Search Engine for https://www.ecosia.org
    Given I open url "https://www.ecosia.org"
    Then I should see page title as "Ecosia - the search engine that plants trees"
    Then element with xpath "//input[@name='q']" should be present
    Then I type "selenium webdriver" into element with xpath "//input[@name='q']"
    And I click on element with xpath "//button[@type='submit']"
    And I wait for 5 sec
    Then element with xpath "//section[@id='search-filters']" should not contain text "selenium webdriver"

  @predefined8
  Scenario: Search Engine for https://www.wiki.com/
    Given I open url "https://www.wiki.com/"
    Then I should see page title as "Wiki.com"
    Then element with xpath "//input[@name='q']" should be present
    Then I type "selenium webdriver" into element with xpath "//input[@name='q']"
    And I click on element with xpath "//input[@name='btnG']"
    And I wait for 5 sec
    #Then element with xpath "" should not contain text "selenium webdriver"

  @predefined9
  Scenario: Search Engine for  https://www.givewater.com/
    Given I open url "https://www.givewater.com/"
    Then I should see page title as "Search the Web to Give Clean Water to Those in Need » giveWater Search Engine"
    Then element with xpath "//input[@id='site-search']" should be present
    Then I type "selenium webdriver" into element with xpath "//input[@id='site-search']"
    And I click on element with xpath "//button[@class='btn-search']"
    And I wait for 5 sec
    #Then element with xpath "" should not contain text "selenium webdriver"

  @predefined10
  Scenario: Search Engine for https://ekoru.org/
    Given I open url "https://ekoru.org/"
    Then I should see page title as "Ekoru - every search cleans our oceans"
    Then element with xpath "//div[@id='div_footer']" should be present
    Then I type "selenium webdriver" into element with xpath "//div[@id='div_footer']"
    And I click on element with xpath "//div[@id='btn_search']"
    And I wait for 5 sec
    Then element with xpath "//div[@id='div_header']" should not contain text "selenium webdriver"