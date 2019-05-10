//
//  ViewController_istruzioni.swift
//  caccia_Ganja
//
//  Created by Leonardo Basso on 10/05/2019.
//  Copyright © 2019 Leonardo Basso. All rights reserved.
//

import UIKit

class ViewController_istruzioni: UIViewController {

    @IBOutlet weak var lbl_istruzioni: UILabel!
    @IBOutlet weak var btn_ritorna_al_menu: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        btn_ritorna_al_menu.layer.cornerRadius = 3
        btn_ritorna_al_menu.layer.shadowOpacity = 0.5
        btn_ritorna_al_menu.layer.shadowColor = UIColor.black.cgColor
        btn_ritorna_al_menu.layer.shadowRadius = 3
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
