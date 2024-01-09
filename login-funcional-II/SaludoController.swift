//
//  SaludoController.swift
//  login-funcional-II
//
//  Created by dam2 on 30/11/23.
//

import UIKit

class SaludoController: UIViewController {
    
    @IBOutlet weak var userLabel: UILabel!
    var user = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        userLabel.text = user
    }

}
