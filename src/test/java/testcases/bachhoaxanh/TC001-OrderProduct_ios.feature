Feature: Verify order product on Bach hoa xanh Application using iOS Mobile
  Background:
    Pre-condition: Install Bách Hoá Xanh Application
    * call read('classpath:testcases/bachhoaxanh/TC001-InstallBachHoaXanh.feature')

    * startConfig('ios_local')
    * def consumerAddress = data('bachhoaxanh', 'addresses')
    * def homePage = business('bachhoaxanh', 'homepage')
    * def searchPage = business('bachhoaxanh', 'searchpage')
    * def basePage = business('bachhoaxanh', 'basepage')
    * def searchResutPage = business('bachhoaxanh', 'searchresultpage')
    * def productDetailPage = business('bachhoaxanh', 'productdetailpage')
    * def addressInfoPage = business('bachhoaxanh', 'addressinfopage')
    * def cartPage = business('bachhoaxanh', 'cartpage')

    ## Set variables
    * def searchKeyword = "sua dinh duong"
    * def productName = "Sữa dinh dưỡng Vinamilk socola 220ml"
    * def productOption = "Thùng 48 Bịch"
    * def city = consumerAddress.consumer1.city
    * def district = consumerAddress.consumer1.district
    * def ward = consumerAddress.consumer1.ward
    * def quatityItem = "1"
    * def orderProduct = "Thùng 48 bịch sữa dinh dưỡng socola Vinamilk 220ml"

  Scenario:

    # Step1: start bachhoaxanh application
    # Tap "Don't Allow" if permission request show up
    * call homePage.closeSharedPositionBar
    * call homePage.tapSearch

    # Step2: Enter on search 'sua tuoi Vinamilk'
    * call searchPage.search {"keyword": "#(searchKeyword)"}

    # Step3: Select product 'Sữa tươi Vinamilk 100% ít đường 220ml'
    # Then select a product option: 'Thùng 48 Bịch, 355.000đ, (7.396₫/Bịch)'
    * call searchResutPage.selectProduct {name: '#(productName)'}
    * call productDetailPage.selectProductOption {option: '#(productOption)'}

    # Step 4: Tap 'Mua' to add product to cart
    * call productDetailPage.buyProduct

    # Step5: Select address city/province, district, ward
    * call addressInfoPage.selectAddress {city: '#(city)', district: '#(district)', ward: '#(ward)'}
    # Tap 'Mua' again to add product to cart
    * call productDetailPage.buyProduct

    # Verify that cart icon on top has '1' item notice
    * def cartItem = call basePage.isItemQuatityInCart {numberItem: '#(quatityItem)'}
    * match cartItem.result == true

    # Step 6: Click on cart icon
    * call basePage.viewCart {numberItem: '#(quatityItem)'}
    # Verify added item exists on cart
    * def isProduct = call cartPage.isProductExist {orderProductName: '#(orderProduct)'}
    * match isProduct.result == true