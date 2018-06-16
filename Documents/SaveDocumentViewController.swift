//
//  SaveDocumentViewController.swift
//  Documents
//
//  Created by Nathaniel Banderas on 6/15/18.
//  Copyright © 2018 Nathaniel Banderas. All rights reserved.
//

import UIKit

class SaveDocumentViewController: UIViewController {
  
    @IBOutlet weak var bodyText: UITextView!
    @IBOutlet weak var titleText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addPressed(_ sender: UIBarButtonItem) {
        if (titleText.text != nil) && titleText.text != "" && bodyText.text != nil && bodyText.text != "" {
            navigationItem.title = titleText.text
            documents?.append(bodyText.text!)
            titleText.text = ""
            bodyText.text = "Enter text here..."
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
