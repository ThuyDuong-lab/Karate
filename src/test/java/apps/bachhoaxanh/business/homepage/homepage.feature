@ignore
Feature: BHX Home Page
Background:
* def controls = locator('bachhoaxanh','homepage')

@methods @parent=bachhoaxanh.basepage
Scenario:
* def parent = parentBusiness()
* print 'DEFAULT methods is load'
* def featurePath = feature('bachhoaxanh','homepage','homepage')




