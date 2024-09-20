Feature: sample karate test script
for help, see: https://github.com/karatelabs/karate/wiki/IDE-Support

  Background:
    * def homePage = business('wikipedia', 'homepage')
    * startConfig('android_chrome_local')
    * setContext('CHROMIUM')

  Scenario: Log in
    * call homePage.navigateToApp
    * call homePage.switchLanguage {language: 'ja'}

