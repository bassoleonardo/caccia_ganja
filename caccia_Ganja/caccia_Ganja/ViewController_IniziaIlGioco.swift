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
class ViewController_IniziaIlGioco: UIViewController {
    @IBOutlet weak var view_spazio: UIImageView!
    @IBOutlet var array_vite: [UIImageView]!
    
    // mettere come vite gli accendini !! 
    // far evolvere la piantina BOB
    override func viewDidLoad() {
        super.viewDidLoad()
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
        let larghezza_max = Int(view_spazio.frame.width) // prende la larghezza massima della view_spazio
        let altezza_max = Int(view_spazio.frame.height) // prende l'altezza massima della view_spazio
        var altezza_random = Int.random(in: 0...altezza_max - 80) // variabile per il posizionamento immagine
        var larghezza_random = Int.random(in: 0...larghezza_max - 80) // variabile per il posizionamento immagine
        let metàLarghezza = CGFloat(img_Bob.frame.width/2) // variabile utile al posizionamento all'interno della view_spazio
        let metàAltezza = CGFloat(img_Bob.frame.height/2) // variabile utile al posizionamento all'interno della view_spazio
        img_Bob.frame = CGRect(x: Double(larghezza_random), y: Double(altezza_random), width: 80, height: 80)
        UIView.animate(withDuration: 2, animations: {
            img_Bob.center = CGPoint(x: (img_Bob.frame.maxX - metàLarghezza) + 0.1, y: (img_Bob.frame.maxY - metàAltezza) + 0.1)
        }) { (Bool) in
            if vite > 0
            {
                img_Bob.removeFromSuperview()
                self.appareBob()
            }
        }
    }

}


