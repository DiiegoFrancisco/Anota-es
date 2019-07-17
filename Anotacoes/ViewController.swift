//
//  ViewController.swift
//  Anotacoes
//
//  Created by DevMakerMobile on 16/07/2019.
//  Copyright © 2019 DevMakerMobile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbText: UITextView!
    let chave = "Anotacao"
    
    @IBAction func btSave(_ sender: Any) {
        
       if let text = lbText.text {
            UserDefaults.standard.set(text, forKey: chave)
        }
        
    }
    
    func recoverText() -> String{
    if let recoverText = UserDefaults.standard.object(forKey: chave){
        return recoverText as! String
        
    }
        return ""
        
    }
    
    override var prefersStatusBarHidden: Bool{
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       lbText.text = recoverText()
    }


}


