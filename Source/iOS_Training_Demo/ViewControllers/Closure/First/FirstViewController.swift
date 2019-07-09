//
//  FirstViewController.swift
//  TestClosure
//
//  Created by NghiaTL on 7/9/19.
//  Copyright © 2019 NghiaTL. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var num1TextField: UITextField!
    @IBOutlet weak var num2TextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    @IBAction func buttonPlusTouch(_ sender: Any) {
        let num1 = Int(num1TextField.text ?? "") ?? 0
        let num2 = Int(num2TextField.text ?? "") ?? 0

        //let result = plus2num(num1: num1, num2: num2)
        let result = plus2numV2(num1, num2)

        resultLabel.text = "\(result)"
    }

    func plus2num(num1: Int, num2: Int) -> Int {
        return num1 + num2
    }

    let plus2numV2: (Int, Int) -> Int = { (num1, num2) -> Int in
        return num1 + num2
    }

    @IBAction func goToSecondViewControllerTouch(_ sender: Any) {
        let controller = SecondViewController(nibName: "SecondViewController", bundle: nil)
        //controller.receiveDelegate = self
        controller.receiveHandle = { message in
            self.messageLabel.text = message
        }
        self.navigationController?.pushViewController(controller, animated: true)
    }
}

extension FirstViewController: ReceiveDelegate {
    func onReceiveMessage(value: String) {
        messageLabel.text = value
    }
}

protocol ReceiveDelegate {
    func onReceiveMessage(value: String)
}

typealias ReceiveHandle = ((String) -> Void)
