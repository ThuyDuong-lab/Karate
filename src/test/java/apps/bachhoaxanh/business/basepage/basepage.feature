@ignore
Feature: Base Page include: Search, Menu
  Background:
    * def controls = locator('bachhoaxanh','basepage')

  @methods
  Scenario:
    * def parent = parentBusiness()
    * print 'DEFAULT methods is load'
    * def featurePath = feature('bachhoaxanh','basepage','basepage')
    * def tapSearch = method(featurePath,'@tapSearch')
    * def getQuantityProductInCart = method(featurePath,'@getQuantityProductInCart')
    * def search = method(featurePath,'@search')
    * def viewCart = method(featurePath,'@viewCart')
    * def isItemQuatityInCart = method(featurePath,'@isItemQuatityInCart')
    * def closeSharedPositionBar = method(featurePath,'@closeSharedPositionBar')
    * def denyPermission = method(featurePath,'@denyPermission')
    * def waitAppCompletedLoading = method(featurePath,'@waitAppCompletedLoading')

  @tapSearch
  Scenario: tap on Search textbox
    * print 'tap on Search textbox'
    * waitFor(controls.searchButton)
    * click(controls.searchButton)

  @search
  Scenario: input keyword and enter to search
    * print 'input keyword and enter to search'
    * waitFor(controls.searchTextbox)
    * input(controls.searchTextbox, keyword)
    * delay(1000)
    * click(controls.suggestedFirstItemLabel)
  #  * input(controls.searchTextbox, Key.ENTER)

  @isItemQuatityInCart
  Scenario: check quatity item in cart
    * print 'check quatity item in cart'
    * def cartButton = format(controls.cartButton, numberItem)
    * def result = exists(cartButton)

  @closeSharedPositionBar
  Scenario: close Shared Position Bar
    * print 'close Shared Position Bar'
    * def isExist = exists(controls.sharedPositionBarCloseButton)
    * isExist== true ? click(controls.sharedPositionBarCloseButton):""

  @viewCart
  Scenario: view Cart
    * print 'tap on Cart to open cart'
    * def cart = format(controls.cartButton, numberItem)
    * waitFor(cart)
    * click(cart)

  @denyPermission
  Scenario: close permission pop up
    * print "tap 'Don't Allow' if permission request show up"
    * optional(controls.permissionDenyButton).click()

@waitAppCompletedLoading
  Scenario: wait for application loading completely
  * print "wait for application loading completely"
  * retry(4).waitForText(controls.updateNewVersionLabel, 'Đang cập nhật phiên bản mới: 100%')