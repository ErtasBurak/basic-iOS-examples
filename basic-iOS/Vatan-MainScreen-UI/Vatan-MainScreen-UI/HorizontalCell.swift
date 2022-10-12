//
//  HorizontalCell.swift
//  Vatan-MainScreen-UI
//
//  Created by Burak Ertaş on 11.10.2022.
//

import UIKit

class HorizontalCell: UICollectionViewCell {
 
    let image = UIImageView()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        contentView.addSubview(image)
        setupUI()
        setupConstraints()
        
    }
    
    override func awakeFromNib() {
        
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI(){

        image.backgroundColor = .white
        image.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    func setupConstraints(){
  
        image.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        image.centerXAnchor.constraint(equalTo: contentView.centerXAnchor).isActive = true
        image.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        image.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        image.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        
    }
}
