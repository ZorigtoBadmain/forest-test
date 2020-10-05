//
//  SliderModul.swift
//  Forest-test
//
//  Created by Зоригто Бадмаин on 02.10.2020.
//

import Foundation
import UIKit

struct Slider {
    var image: UIImage
}

struct ProductGroup {
    var image: UIImage
    var name: String
}

struct Bluda {
    var image: UIImage
    var name: String
    var weight: String
    var price: String
    var sellPrice: String
    var predzacas: String
}

class Group {
    
    var groups = [ProductGroup]()
    
    init() {
        setup()
    }
    
    func setup() {
        let g1 = ProductGroup(image: UIImage(named: "eda1")!, name: "лапша")
        let g2 = ProductGroup(image: UIImage(named: "eda2")!, name: "мясо")
        let g3 = ProductGroup(image: UIImage(named: "eda3")!, name: "горячее")
        
        self.groups = [g1, g2, g3]
    }
    
}

class Menu {
    
    var sliders = [Slider]()
    
    init() {
        setup()
    }
    
    func setup() {
        let sl1 = Slider(image: UIImage(named: "eda1")!)
        let sl2 = Slider(image: UIImage(named: "eda2")!)
        let sl3 = Slider(image: UIImage(named: "eda3")!)
        
        self.sliders = [sl1, sl2,sl3]
    }
    
}

class TableMenu {
    
    var bluds = [Bluda]()
    
    init() {
        setup()
    }
    
    func setup() {
        let b1 = Bluda(image: UIImage(named: "eda1")!, name: "Салат из свинных ушей", weight: "400 г", price: "380 руб", sellPrice: "314 руб", predzacas: "презаказ/ самовывоз")
        let b2 = Bluda(image: UIImage(named: "eda1")!, name: "Салат из свинных ушей", weight: "400 г", price: "380 руб", sellPrice: "314 руб", predzacas: "презаказ/ самовывоз")
        let b3 = Bluda(image: UIImage(named: "eda1")!, name: "Салат из свинных ушей", weight: "400 г", price: "380 руб", sellPrice: "314 руб", predzacas: "презаказ/ самовывоз")
        
        self.bluds = [b1, b2, b3]
    }
    
}

