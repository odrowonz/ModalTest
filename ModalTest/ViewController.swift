//
//  ViewController.swift
//  ModalTest
//
//  Created by Andrey Antipov on 11.12.2020.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "openModalButtonPressed" {
            if let controller = segue.destination as? ModalViewController {
                //controller.state = .edit
                //controller.habit = habit
                //controller.colView = colView
                //controller.navController = navigationController
            }
        }
    }

}

