//
//  ModalViewController.swift
//  ModalTest
//
//  Created by Andrey Antipov on 11.12.2020.
//

import UIKit

class ModalViewController: UIViewController {
    var submitFinalAction: (() -> Void)?

    @IBAction func comeBackButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
        submitFinalAction?()
    }
}
