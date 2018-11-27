//
//  SharedLogic.swift
//  MyTestApp
//
//  Created by Frank Mortensen on 27/11/2018.
//  Copyright © 2018 Facebook. All rights reserved.
//

import Foundation

class Shared : NSObject {
  
  private var count : Int = 0
  
  func increment() {
    count += 1
  }
  
  func getCount() -> Int {
    return count
  }
  
}
