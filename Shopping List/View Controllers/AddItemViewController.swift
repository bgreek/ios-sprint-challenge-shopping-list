//
//  AddItemViewController.swift
//  Shopping List
//
//  Created by Breena Greek on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class AddItemViewController: UIViewController {
    
    var shoppingItemController: ShoppingItemController?
    
    
    // MARK: IBOutlets
    
    @IBOutlet weak var listLabel: UILabel!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var addressText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let shoppingItemController = shoppingItemController else { return }
        listLabel.text = ("You currently have \(shoppingItemController.itemSelectedAdd.count) items(s) in your shopping list.")
    }
    
    // MARK: IBActions
    @IBAction func sendButtonTapped(_ sender: Any) {
        showAlert()
//        navigationController?.popViewController(animated: true)
    }
    
    private func showAlert() {
        let alert = UIAlertController(title: "Order Complete", message: "Your order will be delivered in 15 min to \(addressText.text ?? "Error").", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Okay", style: .default, handler: nil )
        alert.addAction(okAction)
        
        self.present(alert, animated: true, completion: nil)
    }
}

