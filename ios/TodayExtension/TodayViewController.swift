//
//  TodayViewController.swift
//  TodayExtension
//
//  Created by Frank Mortensen on 27/11/2018.
//  Copyright © 2018 Facebook. All rights reserved.
//

import UIKit
import NotificationCenter

class TodayViewController: UIViewController, NCWidgetProviding {
        
  @IBOutlet weak var textLabel: UILabel!
  @IBOutlet weak var bugsnagButton: UIButton!
  
  var shared : Shared = Shared()
  
  required init?(coder: NSCoder) {
    
      super.init(coder: coder)
    
  }
  
  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    
      super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    
  }
  
  override func viewDidLoad() {
    
    super.viewDidLoad()
    
    bugsnagButton.titleLabel?.textAlignment = .center
    
  }
        
  func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
    
      updateUI()
    
      completionHandler(NCUpdateResult.newData)
    
  }
  
  func updateUI() {
    
      textLabel.text = "\(shared.getCount())"
    
  }
  
  @IBAction func handleButtonClicked(_ sender: UIButton) {
    
    if sender.tag == 0 {
      shared.increment()
    } else {
      shared.decrement()
    }
    
    updateUI()
    
  }
  
  @IBAction func handleBugsnagButtonClicked(_ sender: UIButton) {
    
    print("Trigger Bugsnag")
    
  }
}
