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
                guard let nav = self.navigationController,
                      let root = nav.viewControllers[0] as? RootViewController
                else { return }

                root.eventLabel?.text = "Открываем модально!"

                controller.submitFinalAction = {
                    root.eventLabel?.text = "Ура, прошли полный цикл!"

                    nav.popToRootViewController(animated: true)
                }
            }
        }
    }

}
