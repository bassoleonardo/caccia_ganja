//
//  ViewController.swift
//  caccia_Ganja
//
//  Created by Leonardo Basso on 09/05/2019.
//  Copyright © 2019 Leonardo Basso. All rights reserved.
//

import UIKit

let immagine_introduttiva = UIImageView(image: #imageLiteral(resourceName: "THC"))

class ViewController: UIViewController {
    @IBOutlet weak var btn_inizia: UIButton!
    @IBOutlet weak var btn_istruzioni: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btn_inizia.layer.cornerRadius = 5
        btn_inizia.layer.shadowRadius = 3
        btn_inizia.layer.shadowColor = UIColor.black.cgColor
        btn_inizia.layer.shadowOpacity = 0.5
        btn_istruzioni.layer.cornerRadius = 8
        btn_istruzioni.layer.shadowRadius = 3
        btn_istruzioni.layer.shadowColor = UIColor.black.cgColor
        btn_istruzioni.layer.shadowOpacity = 0.5
    }


}

