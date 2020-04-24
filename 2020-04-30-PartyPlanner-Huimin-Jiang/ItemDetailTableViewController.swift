//
//  ItemDetailTableViewController.swift
//  2020-04-30-PartyPlanner-Huimin-Jiang
//
//  Created by Huimin Jiang on 4/23/20.
//  Copyright © 2020 Huimin Jiang. All rights reserved.
//

import UIKit

class ItemDetailTableViewController: UITableViewController {
    
    @IBOutlet weak var saveBarButton: UIBarButtonItem!
  
    @IBOutlet weak var partyItemField: UITextField!
    
    @IBOutlet weak var personResponsibleField: UITextField!
    
    var partyItem: String!
    var personResponsible: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if partyItem == nil {
            partyItem = ""
        }
        if personResponsible == nil {
            personResponsible = ""
        }
        partyItemField.text = partyItem
        personResponsibleField.text = personResponsible
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        partyItem = partyItemField.text
    }
    
    @IBAction func cancelBarButtonPressed(_ sender: UIBarButtonItem) {
        let isPresentingInAddModel = presentingViewController is UINavigationController
        if isPresentingInAddModel {
            dismiss(animated: true, completion: nil)
        } else {
            navigationController?.popViewController(animated: true)
        }
    }
    
}
