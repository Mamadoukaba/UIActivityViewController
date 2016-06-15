//
//  ViewController.swift
//  UIActivityViewController
//
//  Created by Mamadou Kaba on 6/14/16.
//  Copyright © 2016 Mamadou Kaba. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var shareTextField: UITextField!
    
    //MARK: - Properties
    var activityViewController: UIActivityViewController!
    
    //MARK: - Target Action
    
    @IBAction func shareButtonTapped(sender: AnyObject) {
        if shareTextField.text!.isEmpty {
            let message = "Please enter some text to share to the world"
            
            let alertController = UIAlertController(title: "OOPPS!", message: message, preferredStyle: .Alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .Default, handler: nil))
            
            presentViewController(alertController, animated: true, completion: nil)
            
        } else {
            activityViewController = UIActivityViewController(activityItems: [shareTextField.text! as NSString], applicationActivities: nil)
            
            presentViewController(activityViewController, animated: true, completion: nil)
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK - UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if textField == shareTextField {
            textField.resignFirstResponder()
        }
        
        return true
    }
}

