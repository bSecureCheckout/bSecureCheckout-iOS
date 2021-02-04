# bSecure iOS SDK

  bSecure is a universal checkout made for the Pakistan market that is easy & simple to install on any
  iOS app. It gives you an option to enable one-step check out and accept multiple payment method for your customers, as well as run your business hassle free\n. By following a few simple steps, you can be up and running in no time. Leave the rest to us. We will take care of the login, address, shipping methods and payments on your behalf. All you have to do is configure your checkout once on the bSecure Partner portal once and leave the rest to us.
  
  [![Travis](https://img.shields.io/travis/stripe/stripe-ios/master.svg?style=flat)](https://github.com/bSecureCheckout/bSecureCheckout-iOS) [![CocoaPods](https://img.shields.io/cocoapods/v/BSecureCheckout.svg?style=flat)](https://github.com/bSecureCheckout/bSecureCheckout-iOS) [![License](https://img.shields.io/cocoapods/l/BSecureCheckout.svg?style=flat)](https://github.com/bSecureCheckout/bSecureCheckout-iOS) [![Platform](https://img.shields.io/cocoapods/p/BSecureCheckout.svg?style=flat)](https://github.com/bSecureCheckout/bSecureCheckout-iOS)

## Requirements

The bSecure iOS SDK requires Xcode 11.0 with Swift 5 or later and is compatible with apps targeting iOS 11 or above.

## Prerequisites 
- Make sure to add ``Privacy - Location When In Use Usage Description`` and ``Privacy - Location Always and When In Use Usage Description`` in info.plist of your app. This is becuase bSecure has a feature to add addresses thorugh your current location.
- You will need to have a Google map key too for the address feature.

## Usage

### Configuration Setup

By following a few simple steps, you can set up your **bSecure Checkout** and **Single-Sign-On**. 

1. Go to [Partners Portal](https://partner.bsecure.pk/)
2. [App Integration](https://partner.bsecure.pk/integration-sandbox) >> Sandbox / Live
3. Select Environment Type (Custom Integration)
4. Fill following fields:\
    a. *Store URL* its required in any case\
    b. *Login Redirect URL* Required for feature **Login with bSecure**\
    c. *Checkout Redirect URL* Required for feature **Pay with bSecure**\
    d. *Checkout Order Status webhook* Required for feature **Pay with bSecure**
5. Save your client credentials (Client ID and Client Secret)
6. Please make sure to keep credentials at safe place in your code

### bSecure Checkout 
1. Add ``pod 'BSecureCheckout`` in your podfile and run ``pod install``.
2. Once your user is ready for checkout (presses the checkout with bSecure button) call your custom integration bSecure create order API-request.
3. In the response of this api, you will get the `order_reference` number which is required to launch the SDK.
4.  Once you have acquired a order reference number you can call ``BSecureManager.shared.initialize(viewController: UIViewController, googleMapKey: String, orderRef: String, delegate: BSecureCheckout.BSecureManagerDelegate)``

-  `UIViewController` - make sure you are calling this function on a `UIViewController` and not anyother like UINavigation or Tabbar Controller. All others will not allow SDK to start because of the `precondition`.
- `orderRef` - this is the order reference String obtained when you hit create order on bSecure Server.
- `BSecureCheckout.BSecureManagerDelegate` - confirm to this delegate to catch when the SDK opens and closes and also to montior any abrupt crashes or errors.

### bSecure Checkout Post Payment
 After successful payment you can call you custom integration bSecure Order detail API to show order details if you require.
