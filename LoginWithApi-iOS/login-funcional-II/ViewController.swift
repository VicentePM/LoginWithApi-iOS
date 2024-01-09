//
//  ViewController.swift
//  login-funcional-II
//
//  Created by dam2 on 30/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userField: UITextField!
    @IBOutlet weak var passField: UITextField!
    @IBOutlet weak var mensaje: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        
        if userField.text!.isEmpty || passField.text!.isEmpty {
            mensaje.text = "Ningun campo puede estar blanco"
        } else if lengthOfWord(user: userField.text!, pass: passField.text!) {
            getData()
        } else {
            mensaje.text = "El usuario y contraseña deben tener más de 6 caracteres"
        }
        
    }
    
    func getData() {
        
        let urlString = "https://qastusoft.com.es/apis/login.php?user=\(userField.text!)&pass=\(passField.text!)"
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url){ (data, response, error) in
            if error != nil {
                print("HTTP ERROR: \(error!.localizedDescription)")
            }
            
            if let response = response as? HTTPURLResponse{
                print("HTTP RESPONSE: \(response.statusCode)")
            }
            
            guard let data = data else { return }
            
            let dataModel = try! JSONDecoder().decode(DataModel.self, from: data)
            
            DispatchQueue.main.async {
                if dataModel.data == "ok" {
                    self.mensaje.text = dataModel.data
                    self.mensaje.textColor = UIColor(red: 0, green: 255, blue: 0, alpha: 1)
                    
                    let storyboard = UIStoryboard(name: "Main", bundle: nil)
                    let saludoController = storyboard.instantiateViewController(withIdentifier: "saludoController") as! SaludoController
                    saludoController.user = self.userField.text ?? ""
                    self.navigationController?.pushViewController(saludoController, animated: true)
                    
                } else {
                    self.mensaje.text = dataModel.data
                    self.mensaje.textColor = UIColor(red: 255, green: 0, blue: 0, alpha: 1)
                }
            }
        }.resume()
    }
    
    func lengthOfWord(user: String, pass: String) -> Bool{
        
        if(user.count > 6 && pass.count > 6) {
            return true
        }
        return false
    }
}

