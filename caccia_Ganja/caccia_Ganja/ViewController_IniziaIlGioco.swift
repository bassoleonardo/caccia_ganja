//
//  ViewController_IniziaIlGioco.swift
//  caccia_Ganja
//
//  Created by Leonardo Basso on 10/05/2019.
//  Copyright © 2019 Leonardo Basso. All rights reserved.
//

import UIKit
let img_Bob = UIImageView(image: #imageLiteral(resourceName: "bob"))
var vite: Int = 0
var velocità: Int = 3
class ViewController_IniziaIlGioco: UIViewController {
    @IBOutlet weak var view_spazio: UIImageView!
    @IBOutlet var array_vite: [UIImageView]!
    
    // mettere come vite gli accendini !! 
    // far evolvere la piantina BOB
    override func viewDidLoad() {
        super.viewDidLoad()
        velocità = 3
        vite = 4
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func appareBob()
    {
        // metodo asincrono
        velocità = 3
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + Double(velocità), execute:
        {
            
        }
        )
    }

}


