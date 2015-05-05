//
//  ViewController.swift
//  Regex
//
//  Created by PanaCloud on 10/04/2015.
//  Copyright (c) 2015 PanaCloud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    
    
    @IBOutlet weak var urlTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    @IBAction func checkEmail(sender: AnyObject) {
        
        var emailToBeMatched = emailTextField.text
        
        let emailRegex = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"
        
        var emailAlert=UIAlertController(title: "Email Alert", message: "", preferredStyle: UIAlertControllerStyle.Alert)
        var okAction=UIAlertAction(title: "Okay", style: UIAlertActionStyle.Cancel, handler: { (okAction) -> Void in
            emailAlert.dismissViewControllerAnimated(true, completion: nil)
        })
        emailAlert.addAction(okAction)
        
        if let emailmatch = emailToBeMatched.rangeOfString(emailRegex, options: .RegularExpressionSearch){
            
            emailAlert.message="\(emailToBeMatched) is a valid Email"
            
        }
        else{
            
            emailAlert.message="\(emailToBeMatched)  is not a valid Email"
            
        }
        
        presentViewController(emailAlert, animated: true, completion: nil)
        
    }
    
    
    @IBAction func checkUrl(sender: AnyObject) {
        
        var urlToBeMatched=urlTextField.text
        
        let urlRegex = "^(http[s]?:\\/\\/(www\\.)?|ftp:\\/\\/(www\\.)?|www\\.){1}([0-9A-Za-z-\\.@:%_\\+~#=]+)+((\\.[a-zA-Z]{2,})+)(/(.)*)?(\\?(.)*)?"
        
        var urlAlert=UIAlertController(title: "URL Alert", message: "", preferredStyle: UIAlertControllerStyle.Alert)
        var okAction=UIAlertAction(title: "Okay", style: UIAlertActionStyle.Cancel, handler: { (okAction) -> Void in
            urlAlert.dismissViewControllerAnimated(true, completion: nil)
        })
        urlAlert.addAction(okAction)
        
        if let urlMatch = urlToBeMatched.rangeOfString(urlRegex, options: .RegularExpressionSearch){
            
            urlAlert.message="\(urlToBeMatched) is a valid URL"
            
        }
        else{
            
            urlAlert.message="\(urlToBeMatched)  is not a valid URL"
            
        }
        
        presentViewController(urlAlert, animated: true, completion: nil)

    }
   
    
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

