@ignore
Feature: Homepage
  Background:
    * def controls = locator('applestore','homepage')

  @methods
  Scenario:
    * def parent = parentBusiness()
    * print 'DEFAULT methods is load'
    * def featurePath = feature('applestore','homepage','homepage')
    * def downloadApp = method(featurePath,'@downloadApp')

  @downloadApp
  Scenario: download application
    * print 'download application'
    * optional(controls.updateDenyButton).click()
    * click(controls.searchButton)
    * input(controls.searchTextbox, installApplication)
    * click(controls.suggestFirstItem)
    * def downloadBtn = format(controls.downloadButton, installApplication)
    * waitFor(downloadBtn).click()
    * def openBtn = format(controls.openButton, installApplication)
    * retry(5).waitFor(openBtn)

