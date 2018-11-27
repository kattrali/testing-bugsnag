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
  
  var counter : Int = 0
  
  required init?(coder: NSCoder) {
    
      super.init(coder: coder)
    
      print("extension initialized")
    
  }
  
  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
    
      super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    
      print("extension initialized 2")
  }
  
  override func viewDidLoad() {
    
      super.viewDidLoad()
    
      print("viewDidLoad")
    
    
    
  }
        
  func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
    
      print("widgetPerformUpdate")
    
      updateUI()
    
      completionHandler(NCUpdateResult.newData)
    
  }
  
  func updateUI() {
    
      textLabel.text = "\(counter)"
    
  }
  
  @IBAction func handleButtonClicked(_ sender: Any) {
    
      counter += 1
    
      updateUI()
    
  }
}
