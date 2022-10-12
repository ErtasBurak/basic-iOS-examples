//
//  MainScreenModel.swift
//  Vatan-MainScreen-UI
//
//  Created by Burak Ertaş on 11.10.2022.
//

import Foundation

struct verticalData {
    var image = String()
    var name = String()
    var serialId = String()
    var processorName = String()
    var price = String()
}

struct horizontalData {
    var image = String()
}


var verticalModel = [
    
    verticalData(image: "zotac", name: "ZOTAC GeForce RTX 2060 ", serialId: "ZT-T20620F-10M / 135454",processorName:"192Bit NVIDIA Ekran Kartı",price:"7.523 TL"),
    verticalData(image: "tv", name: "AXEN AX24LEDE09 24inc", serialId: "AX24LEDE09 / 134611",processorName:"60cm HD READY TV",price:"1.799 TL"),
    verticalData(image: "laptop", name: "Huawei Matebook D15  ", serialId: "MBD15/I511/8/256 / 132694",processorName:"11.Nesil Core i5 ",price:"11.499 TL"),
    verticalData(image: "kol", name: "Sony PS4 Dualshock 4", serialId: "PS719870050 / 84260",processorName:"Controller Black v2",price:"999 TL")
    

]

var horizontalModel = [
    
    horizontalData(image: "reklam1"),
    horizontalData(image: "reklam2"),
    horizontalData(image: "reklam3")
    
]
