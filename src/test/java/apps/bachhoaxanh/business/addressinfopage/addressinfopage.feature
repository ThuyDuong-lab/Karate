@ignore
Feature: Search Address Info Page
  Background:
    * def controls = locator('bachhoaxanh','addressinfopage')

  @methods
  Scenario:
    * def parent = parentBusiness()
    * print 'DEFAULT methods is load'
    * def featurePath = feature('bachhoaxanh','addressinfopage','addressinfopage')
    * def selectAddress = method(featurePath,'@selectAddress')


  @selectAddress
  Scenario: search city
    * print 'search city'
    * def cityLabel = format(controls.addressLabel, city)
    * click(cityLabel)

    * delay(2000)
    * def districtLabel = format(controls.addressLabel, district)
    * click(districtLabel)

    * delay(2000)
    * def wardLabel = format(controls.addressLabel, ward)
    * click(wardLabel)




