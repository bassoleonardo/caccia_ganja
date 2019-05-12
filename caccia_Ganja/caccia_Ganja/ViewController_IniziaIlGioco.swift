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
var velocità: Double = 2.0
var punteggio: Int = 0
var serie: Int = 0 // variabile che mi serve per aggiornare il counter della serie generale (diversa dalla serie evolutiva)
var counter_evolutivo: Int = 0 // variable che mi serve per aggiornare il counter della serie evolutiva di bob
var appoggio_serie: Int = 0
var timer = Timer()
var secondi = 5
class ViewController_IniziaIlGioco: UIViewController {
    @IBOutlet weak var view_spazio: UIImageView!
    @IBOutlet var array_vite: [UIImageView]!
    @IBOutlet weak var btn_procedi: UIButton!
    @IBOutlet weak var lbl_punteggio_in_game: UILabel!
    @IBOutlet weak var lbl_bobSiEvolve: UILabel!
    
    
    
    // l'obiettivo sarebbe quello di creare un counter a parte per la serie di tocchi che permette a bob di evolversi.
    // sarebbe figo creare una sorta di serie evolutiva con una serie finale che permette di riacquistare delle vite
    // quando però si è in serie e per caso si missa un tocco si ripare dallo stadio iniziale di bob.
    override func viewDidLoad() {
        super.viewDidLoad()
        self.appareBob()
        view.bringSubviewToFront(view_spazio)
        view.isUserInteractionEnabled = true
        velocità = 2.0
        vite = 4
        img_Bob.layer.shadowColor = UIColor.gray.cgColor
        img_Bob.layer.shadowRadius = 3
        img_Bob.layer.shadowOpacity = 0.5
        btn_procedi.isHidden = true
        btn_procedi.isEnabled = false
        btn_procedi.layer.cornerRadius = 8
        btn_procedi.layer.shadowColor = UIColor.black.cgColor
        btn_procedi.layer.shadowOpacity = 0.3
        lbl_punteggio_in_game.text = String(punteggio)
        lbl_bobSiEvolve.isHidden = true
        lbl_bobSiEvolve.isHighlighted = true
        lbl_bobSiEvolve.highlightedTextColor = UIColor.green
        lbl_punteggio_in_game.isHidden = false
        
    }
    
    func appareBob()
    {
        let larghezza_max = Int(view_spazio.frame.width) // prende la larghezza massima della view_spazio
        let altezza_max = Int(view_spazio.frame.height) // prende l'altezza massima della view_spazio
        var altezza_random = Int.random(in: 0...altezza_max - 100) // variabile per il posizionamento immagine
        var larghezza_random = Int.random(in: 0...larghezza_max - 100) // variabile per il posizionamento immagine
        let metàLarghezza = CGFloat(img_Bob.frame.width/2) // variabile utile al posizionamento all'interno della view_spazio
        let metàAltezza = CGFloat(img_Bob.frame.height/2) // variabile utile al posizionamento all'interno dellaa view_spazio
        img_Bob.frame = CGRect(x: Double(larghezza_random), y: Double(altezza_random), width: 100, height: 100)
        self.view_spazio.addSubview(img_Bob)
        UIView.animate(withDuration: TimeInterval(velocità), animations: {
            img_Bob.center = CGPoint(x: (img_Bob.frame.maxX - metàLarghezza) + 0.001, y: (img_Bob.frame.maxY) + 0.001)
        }) { (Bool) in
            if (vite > 0)
            {
                img_Bob.removeFromSuperview()
                self.appareBob()
            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            let posizione = touch.location(in: view_spazio)
            if img_Bob.frame.contains(posizione)// tocco giusto
            {
                punteggio+=1
                serie+=1 // serie normale
                counter_evolutivo+=1
                print(serie)
                if counter_evolutivo == 20 { // serie da 20 --> evoluzione di bob
                    img_Bob.image = #imageLiteral(resourceName: "stoned_bob")
                    lbl_bobSiEvolve.isHidden = false
                }
                else if counter_evolutivo == 40 // restore delle vite e della velocità
                {
                    vite = 4
                    velocità = 2.0
                    lbl_bobSiEvolve.text = " RESET "
                    for v in array_vite{
                        v.isHidden = false// con questo in teoria dovrei essere sicuro dell'aggiunta delle vite
                    }
                }
                img_Bob.removeFromSuperview()
                lbl_punteggio_in_game.text = String(punteggio) // indicatore del punteggio
            }
            else
            {
                vite-=1
                punteggio-=1
                counter_evolutivo = 0
                img_Bob.image = #imageLiteral(resourceName: "bob")
                lbl_bobSiEvolve.isHidden = true
                if vite == 0
                {
                    img_Bob.removeFromSuperview()
                    btn_procedi.isHidden = false
                    btn_procedi.isEnabled = true
                    lbl_punteggio_in_game.isHidden = true
                    if serie > appoggio_serie
                    {
                        appoggio_serie = serie
                        serie = 0
                    }
                    else
                    {
                        serie = 0
                    }
                }
                velocità-=0.3
                img_Bob.removeFromSuperview()
                for v in array_vite{
                    if v.tag == vite{
                        v.isHidden = true
                    }
                }
                if serie > appoggio_serie
                {
                    appoggio_serie = serie
                    serie = 0
                }
                else
                {
                    serie = 0
                }
                lbl_punteggio_in_game.text = String(punteggio)
            }
        }
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
