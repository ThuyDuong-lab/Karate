@ignore
Feature: Base Page include: Search, Menu
  Background:
    * def controls = locator('bachhoaxanh','searchpage')

  @methods @parent=bachhoaxanh.basepage
  Scenario:
    * def parent = parentBusiness()
    * print 'DEFAULT methods is load'
    * def featurePath = feature('bachhoaxanh','searchpage','searchpage')








