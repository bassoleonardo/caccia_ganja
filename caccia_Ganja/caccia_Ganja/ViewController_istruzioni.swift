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
        lbl_istruzioni.text = """
ISTRUZIONI
        
Ehi tu…….si si si sto parlando proprio a te che hai avuto la malsana idea di imbarcarti in questo gioco. Beh, permettimi dunque di spiegarti cosa stai per affrontare
Il gioco è molto semplice…quello che devi fare è cliccare sul personaggio principale: “BOB”, una foglia molto particolare.

Il tuo obiettivo è quello di continuare a prendere BOB, facendo alzare così il tuo punteggio.
Ovviamente avrai un counter delle vite, rappresentato dai magici accendini i alto a destra.
Durante il gioco, BOB evolverà se sarai così bravo da eseguire 20 tocchi di fila correttamente. Dopo una serie di 40 tocchi si avrà un reset delle vite
"""
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
