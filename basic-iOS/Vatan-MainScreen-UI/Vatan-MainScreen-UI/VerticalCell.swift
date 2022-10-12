//
//  VerticalCell.swift
//  Vatan-MainScreen-UI
//
//  Created by Burak Ertaş on 11.10.2022.
//

import UIKit

class VerticalCell: UICollectionViewCell {
    
    let image = UIImageView()
    
    let serialNoLabel = UILabel()
    
    let nameLabel = UILabel()
    
    let priceLabel = UILabel()
    
    let processorNameLabel = UILabel()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        
        contentView.addSubview(image)
        contentView.addSubview(serialNoLabel)
        contentView.addSubview(nameLabel)
        contentView.addSubview(priceLabel)
        contentView.addSubview(processorNameLabel)
        setupUI()
        setupConstraints()
        
    }
    
    override func awakeFromNib() {
        
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI(){

        image.layer.borderWidth = 0.1
        image.layer.cornerRadius = 10
        image.translatesAutoresizingMaskIntoConstraints = false
        
        serialNoLabel.font = UIFont.systemFont(ofSize: contentView.bounds.height * 0.04)
        serialNoLabel.translatesAutoresizingMaskIntoConstraints = false
        
        nameLabel.font = UIFont.systemFont(ofSize: contentView.bounds.height * 0.04)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        priceLabel.font = UIFont.boldSystemFont(ofSize: contentView.bounds.height * 0.08)
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        processorNameLabel.font = UIFont.systemFont(ofSize: contentView.bounds.height * 0.04)
        processorNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    func setupConstraints(){
  
        image.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        image.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        image.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        image.heightAnchor.constraint(equalToConstant: contentView.bounds.height * 0.55).isActive = true
        
        serialNoLabel.topAnchor.constraint(equalTo: image.bottomAnchor, constant: contentView.bounds.width * 0.05).isActive = true
        serialNoLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        serialNoLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        
        priceLabel.topAnchor.constraint(equalTo: serialNoLabel.bottomAnchor, constant: contentView.bounds.width * 0.03).isActive = true
        priceLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        priceLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        
        nameLabel.topAnchor.constraint(equalTo: priceLabel.bottomAnchor, constant: contentView.bounds.width * 0.03).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        
        processorNameLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: contentView.bounds.width * 0.01).isActive = true
        processorNameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        processorNameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        
    }
}
