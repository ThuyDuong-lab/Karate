@ignore
Feature: Search page
  Background:
    * def controls = locator('bachhoaxanh','searchresultpage')

  @methods @parent=bachhoaxanh.basepage
  Scenario:
    * def parent = parentBusiness()
    * print 'DEFAULT methods is load'
    * def featurePath = feature('bachhoaxanh','searchresultpage','searchresultpage')
    * def selectProduct = method(featurePath,'@selectProduct')

  @selectProduct
  Scenario: select product with specific product name
    * print 'select product with provided name'
    * def productLink = format(controls.productNameLink, name)
    * click(productLink)


