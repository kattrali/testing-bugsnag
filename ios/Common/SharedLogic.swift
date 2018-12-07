//
//  SharedLogic.swift
//  MyTestApp
//
//  Created by Frank Mortensen on 27/11/2018.
//  Copyright © 2018 Facebook. All rights reserved.
//

import Foundation

class Shared : NSObject {
  
  private let userDefaults: UserDefaults
  private var count : Int = 0
  
  override init() {
    
    userDefaults = UserDefaults.init(suiteName: "testApp")!
    
    count = userDefaults.integer(forKey: "count")
    
    super.init()
    
  }

  func increment() {
    count += 1
    
    storeCounter()
  }
  
  func decrement() {
    count -= 1
    
    storeCounter()
  }
  
  func storeCounter() {
    userDefaults.set(count, forKey: "count")
  }
  
  func getCount() -> Int {
    return count
  }
  
  func testBugsnag() -> Void {
    
    let exception = NSException(
      name:NSExceptionName(rawValue: "NamedException"),
      reason:"Test notification from Swift!",
      userInfo:nil
    )
    
    Bugsnag.notify(exception)
    
  }
  
}
