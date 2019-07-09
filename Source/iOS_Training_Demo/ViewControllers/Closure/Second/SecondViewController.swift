//
//  SecondViewController.swift
//  TestClosure
//
//  Created by NghiaTL on 7/9/19.
//  Copyright © 2019 NghiaTL. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var messageTextField: UITextField!

    //var receiveDelegate: ReceiveDelegate?
    //var receiveHandle: ((String) -> Void)?
    var receiveHandle: ReceiveHandle?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func closeVCTouch(_ sender: Any) {
        let message = messageTextField.text ?? ""
        //receiveDelegate?.onReceiveMessage(value: message)
        receiveHandle?(message)
        self.navigationController?.popViewController(animated: true)
    }
}
