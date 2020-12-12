//
//  ViewController.swift
//  ModalTest
//
//  Created by Andrey Antipov on 11.12.2020.
//

import UIKit

class ViewController: UIViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "openModalButtonPressed" {
            guard let controller = segue.destination as? ModalViewController,
                  let nav = self.navigationController,
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
