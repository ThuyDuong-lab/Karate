@ignore
Feature: Base Page include: Search, Menu
  Background:
    * def controls = locator('bachhoaxanh','cartpage')

  @methods @parent=bachhoaxanh.basepage
  Scenario:
    * def parent = parentBusiness()
    * print 'DEFAULT methods is load'
    * def featurePath = feature('bachhoaxanh','cartpage','cartpage')
    * def isProductExist = method(featurePath,'@isProductExist')

  @isProductExist
  Scenario: check product exist
    * print 'check product exist'
    * def productLable = format(controls.productNameLabel, orderProductName)
    * def result = exists(productLable)






