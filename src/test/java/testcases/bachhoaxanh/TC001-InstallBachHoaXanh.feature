Feature:
  Background:
    * startConfig('ios_appstore_local')
    * def homePage = business('applestore', 'homepage')
    * def appName = "Bách Hóa Xanh"

  Scenario:
    # Open AppStore, download Bach Hoa Xanh application
    * call homePage.downloadApp {"installApplication": '#(appName)'}


