//
//  ViewController.swift
//  Vatan-MainScreen-UI
//
//  Created by Burak Ertaş on 11.10.2022.
//

import UIKit

class MainScreen: UIViewController {
    var collectionView: UICollectionView!
    var collectionView2: UICollectionView!
    var horizontalID = "horizontalID"
    var verticalID = "verticalID"
    var middleLbl = UILabel()
    let titleImage = UIImageView()
    let uiView = UIView()
    let searchBar = UISearchBar()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        setupUI()
    }
    
    func setupUI(){
        
        uiViewSetup()
        titleImageSetup()
        searchBarSetup()
        createCollectionView()
        middleLabelSetup()
        createCollectionView2()
        
        
    }
    
    func uiViewSetup() {
        
        view.addSubview(uiView)
        
        uiView.backgroundColor = UIColor(named: "colordarkblue")
        uiView.translatesAutoresizingMaskIntoConstraints = false
        
        uiView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        uiView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        uiView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        uiView.heightAnchor.constraint(equalToConstant: view.bounds.height * 0.35).isActive = true
    }
    
    func titleImageSetup() {
        
        view.addSubview(titleImage)
        
        titleImage.image = UIImage(named: "vatan")
        titleImage.translatesAutoresizingMaskIntoConstraints = false
        
        titleImage.topAnchor.constraint(equalTo: uiView.topAnchor,constant: view.bounds.height * 0.05).isActive = true
        titleImage.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        titleImage.heightAnchor.constraint(equalToConstant: view.bounds.height * 0.05).isActive = true
        titleImage.widthAnchor.constraint(equalToConstant: view.bounds.width * 0.3).isActive = true
        
    }
    
    func searchBarSetup() {
        
        view.addSubview(searchBar)
        
        searchBar.placeholder = "Ürün Ara"
        searchBar.searchTextField.backgroundColor = .clear
        searchBar.layer.cornerRadius = 5
        searchBar.clipsToBounds = true
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        
        searchBar.topAnchor.constraint(equalTo: titleImage.bottomAnchor,constant: view.bounds.height * 0.01).isActive = true
        searchBar.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        searchBar.heightAnchor.constraint(equalToConstant: view.bounds.height * 0.05).isActive = true
        searchBar.widthAnchor.constraint(equalToConstant: view.bounds.width * 0.9).isActive = true
        
    }
    
    func createCollectionView(){
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: view.bounds.width * 0.9, height: view.bounds.height * 0.25)
        layout.sectionInset = UIEdgeInsets(top: 5, left: 0, bottom: 5, right: 0)
        layout.minimumLineSpacing = 30
        layout.minimumInteritemSpacing = 1
        layout.scrollDirection = .horizontal
        collectionView = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .clear
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(HorizontalCell.self, forCellWithReuseIdentifier: horizontalID)
        
        view.addSubview(collectionView)
        
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        collectionView.topAnchor.constraint(equalTo: searchBar.bottomAnchor,constant: view.bounds.height * 0.01).isActive = true
        collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: view.bounds.width * 0.05).isActive = true
        collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -view.bounds.width * 0.05).isActive = true
        collectionView.heightAnchor.constraint(equalToConstant: view.bounds.height * 0.25).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: uiView.bottomAnchor,constant: -view.bounds.height * 0.02).isActive = true
        
    }
    
    func middleLabelSetup() {
        
        view.addSubview(middleLbl)
        
        middleLbl.text = "Günün Fırsatları"
        middleLbl.font = UIFont.boldSystemFont(ofSize: view.bounds.height * 0.024)
        middleLbl.translatesAutoresizingMaskIntoConstraints = false
        
        middleLbl.topAnchor.constraint(equalTo: uiView.bottomAnchor, constant: view.bounds.height * 0.01).isActive = true
        middleLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
  
    }
    
    func createCollectionView2(){
        let layout2 = UICollectionViewFlowLayout()
        layout2.itemSize = CGSize(width: view.bounds.width * 0.43, height: view.bounds.height * 0.33)
        layout2.scrollDirection = .vertical
        layout2.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 10, right: 10)
        layout2.minimumInteritemSpacing = 1
        layout2.minimumLineSpacing = 0
        collectionView2 = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout2)
        collectionView2.backgroundColor = .systemBackground
        collectionView2.delegate = self
        collectionView2.dataSource = self
        
        collectionView2.register(VerticalCell.self, forCellWithReuseIdentifier: verticalID)
        
        view.addSubview(collectionView2)
        
        collectionView2.translatesAutoresizingMaskIntoConstraints = false
        
        collectionView2.topAnchor.constraint(equalTo: middleLbl.bottomAnchor,constant: view.bounds.height * 0.01).isActive = true
        collectionView2.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        collectionView2.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        collectionView2.heightAnchor.constraint(equalToConstant: view.bounds.height * 0.5).isActive = true
        
    }


}

extension MainScreen: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionView{
            return horizontalModel.count
        }else{
            return verticalModel.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collectionView{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: horizontalID, for: indexPath) as! HorizontalCell
            cell.image.image = UIImage(named: horizontalModel[indexPath.row].image)
            return cell
        }else{
            let cell2 = collectionView2.dequeueReusableCell(withReuseIdentifier: verticalID, for: indexPath) as! VerticalCell
            cell2.image.image = UIImage(named: verticalModel[indexPath.row].image)
            cell2.nameLabel.text = verticalModel[indexPath.row].name
            cell2.priceLabel.text = verticalModel[indexPath.row].price
            cell2.processorNameLabel.text = verticalModel[indexPath.row].processorName
            cell2.serialNoLabel.text = verticalModel[indexPath.row].serialId
            return cell2
        }
        
    }
    
    
}

class Categories: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

class Card: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

class Shops: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

class Account: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
