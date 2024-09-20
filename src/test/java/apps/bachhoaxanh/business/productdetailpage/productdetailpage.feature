@ignore
Feature: BHX - Product detail page
  Background:
    * def controls = locator('bachhoaxanh','productdetailpage')

  @methods @parent=bachhoaxanh.basepage
  Scenario:
    * def parent = parentBusiness()
    * print 'DEFAULT methods is load'
    * def featurePath = feature('bachhoaxanh','productdetailpage','productdetailpage')
    * def selectProductOption = method(featurePath,'@selectProductOption')
    * def buyProduct = method(featurePath,'@buyProduct')


  @selectProductOption
  Scenario: select product option radio buttton
    * print 'select product option'
    * def productOption = format(controls.productOptionRadioButton, option)
    * click(productOption)

  @buyProduct
  Scenario: click Mua/Buy button product
    * print 'Click Mua/Buy button'
    * click(controls.BuyButton)





