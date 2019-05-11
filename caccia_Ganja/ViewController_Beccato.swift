//
//  ViewController_Beccato.swift
//  caccia_Ganja
//
//  Created by Leonardo Basso on 11/05/2019.
//  Copyright © 2019 Leonardo Basso. All rights reserved.
//

import UIKit

class ViewController_Beccato: UIViewController {
    @IBOutlet weak var view_pulotti: UIImageView!
    @IBOutlet weak var btn_ritorna_al_menu: UIButton!
    @IBOutlet weak var lbl_punteggio: UILabel!
    @IBOutlet weak var lbl_serie: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btn_ritorna_al_menu.layer.shadowColor = UIColor.black.cgColor
        btn_ritorna_al_menu.layer.shadowRadius = 3
        btn_ritorna_al_menu.layer.shadowOpacity = 0.3
        lbl_punteggio.text = "PUNTEGGIO: " + String(punteggio)
        lbl_serie.text = "SERIE: " + String(serie)
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
