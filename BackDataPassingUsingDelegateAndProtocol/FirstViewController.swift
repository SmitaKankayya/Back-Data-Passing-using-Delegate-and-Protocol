//
//  FirstViewController.swift
//  BackDataPassingUsingDelegateAndProtocol
//
//  Created by Smita Kankayya on 04/04/24.
//

import UIKit

class FirstViewController: UIViewController, MyDataSendingDelegate {
    
    @IBOutlet var receivedDataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // Delegate Method
        func sendDataToFirstViewController(myData: String) {
            self.receivedDataLabel.text = myData
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "getDataSegue" {
                let secondVC: SecondViewController = segue.destination as! SecondViewController
                secondVC.delegate = self
            }
        }
    
}
