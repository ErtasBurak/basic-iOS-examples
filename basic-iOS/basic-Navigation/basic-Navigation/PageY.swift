//
//  PageY.swift
//  basic-Navigation
//
//  Created by Burak Ertaş on 30.09.2022.
//

import UIKit

class PageY: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func backtoMain(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    

}
