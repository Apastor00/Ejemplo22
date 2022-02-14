//
//  ViewController.swift
//  Ejemplo22
//
//  Created by Tardes on 14/2/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var multi1: UILabel!
    @IBOutlet weak var multi2: UILabel!
    @IBOutlet weak var multi3: UILabel!
    @IBOutlet weak var multi4: UILabel!
    @IBOutlet weak var multi5: UILabel!
    @IBOutlet weak var multi6: UILabel!
    @IBOutlet weak var multi7: UILabel!
    @IBOutlet weak var multi8: UILabel!
    @IBOutlet weak var multi9: UILabel!
    
    @IBOutlet weak var resultado1: UILabel!
    @IBOutlet weak var resultado2: UILabel!
    @IBOutlet weak var resultado3: UILabel!
    @IBOutlet weak var resultado4: UILabel!
    @IBOutlet weak var resultado5: UILabel!
    @IBOutlet weak var resultado6: UILabel!
    @IBOutlet weak var resultado7: UILabel!
    @IBOutlet weak var resultado8: UILabel!
    @IBOutlet weak var resultado9: UILabel!
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    
    
    var etiqueta : [UILabel] = []
    var resultado :[UILabel] = []
    var boton :[UIButton] = []
    var color :Int = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resultado = [resultado1, resultado2, resultado3, resultado4, resultado5, resultado6, resultado7, resultado8, resultado9]
        etiqueta = [multi1, multi2, multi3, multi4, multi5, multi6, multi7, multi8, multi9]
        boton = [btn1, btn2, btn3, btn4, btn5, btn6, btn7, btn8, btn9]
        for i in 1...9 {
            boton[i-1].layer.borderWidth = 3
            boton[i-1].layer.borderColor = UIColor.orange.cgColor
            boton[i-1].layer.backgroundColor = UIColor.yellow.cgColor
        }
    }
    
    @IBAction func tablaMultiplicar(_ sender: UIButton) {
        boton[color-1].layer.backgroundColor = UIColor.yellow.cgColor
        if color != 0{
            boton[sender.tag-1].layer.backgroundColor = UIColor.red.cgColor
            color = sender.tag
        }
        mostrarTexto(tabla: sender.tag)
        mostrarTexto(tabla: sender.tag)
        color = sender.tag
    }
    
    func mostrarTexto (tabla: Int){
        
        for i in 1...9 {
            resultado[i-1].text = String(i*tabla)
            etiqueta[i-1].text = "\(i) x \(tabla)"
        }
    }
}

