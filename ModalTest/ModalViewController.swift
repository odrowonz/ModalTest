//
//  ModalViewController.swift
//  ModalTest
//
//  Created by Andrey Antipov on 11.12.2020.
//

import UIKit

class ModalViewController: UIViewController {
    var submitFinalAction: (() -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func comeBackButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)

        submitFinalAction?()
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
