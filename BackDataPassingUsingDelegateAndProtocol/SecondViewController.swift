//
//  SecondViewController.swift
//  BackDataPassingUsingDelegateAndProtocol
//
//  Created by Smita Kankayya on 04/04/24.
//

import UIKit

protocol MyDataSendingDelegate {
    func sendDataToFirstViewController(myData: String)
}
class SecondViewController: UIViewController {
    
    var delegate: MyDataSendingDelegate? = nil
    
    @IBOutlet var dataToSendTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func sendDataButtonClicked(_ sender: Any) {
        if self.delegate != nil && self.dataToSendTextField.text != nil {
            
            let dataToBeSent = self.dataToSendTextField.text
            self.delegate?.sendDataToFirstViewController(myData: dataToBeSent!)
            dismiss(animated: true, completion: nil)
        }
    }
}
