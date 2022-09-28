//
//  ViewController.swift
//  basic-OnboardingScreen
//
//  Created by Burak Ertaş on 28.09.2022.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    let image = UIImageView()
    
    let label1 = UILabel()
    
    let label2 = UILabel()
    
    let label3 = UILabel()
    
    let button1 = UIButton()
    
    let button2 = UIButton()
    
    let button3 = UIButton()
    
    let stackView = UIStackView()
    
    var lottie = AnimationView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        setupUI()
        setupConstraints()
        
    }
    
    func setupUI(){
        
        image.image = UIImage(named: "images")
        image.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(image)
        
        label1.text = "Fast Food"
        label1.textColor = UIColor(named: "labelColor")
        label1.font = UIFont(name: "JosefinSans-Bold", size: 40)
        label1.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label1)
        
        label2.text = "Tasty, and that's it"
        label2.font = UIFont.boldSystemFont(ofSize: 30)
        label2.textColor = UIColor(named: "mainColor")
        label2.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label2)
        
        label3.text = "New Look, Same Taste"
        label3.textColor = UIColor(named: "labelColor")
        label3.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label3)
        
        button1.setTitle("OrderNow", for: .normal)
        button1.layer.cornerRadius = 10
        button1.backgroundColor = UIColor(named: "mainColor")
        button1.translatesAutoresizingMaskIntoConstraints = false
        
        button2.setTitle("Info", for: .normal)
        button2.layer.cornerRadius = 10
        button2.backgroundColor = UIColor(named: "mainColor")
        button2.translatesAutoresizingMaskIntoConstraints = false
        
        button3.setTitle("FeedBack", for: .normal)
        button3.layer.cornerRadius = 10
        button3.backgroundColor = UIColor(named: "mainColor")
        button3.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.axis = NSLayoutConstraint.Axis.vertical
        stackView.distribution = UIStackView.Distribution.fillEqually
        stackView.alignment = UIStackView.Alignment.fill
        stackView.spacing = 10
        
        stackView.addArrangedSubview(button1)
        stackView.addArrangedSubview(button2)
        stackView.addArrangedSubview(button3)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        
        lottie = .init(name: "10818-food-around-the-city")
        lottie.translatesAutoresizingMaskIntoConstraints = false
        lottie.loopMode = .loop
        lottie.play()
        view.addSubview(lottie)
        
    }
    
    func setupConstraints(){
        
        stackView.bottomAnchor.constraint(equalTo: lottie.topAnchor).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        stackView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        image.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 20).isActive = true
        image.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        image.heightAnchor.constraint(equalToConstant: 100).isActive = true
        image.widthAnchor.constraint(equalToConstant: 100).isActive = true
        image.bottomAnchor.constraint(equalTo: label1.topAnchor,constant: -50).isActive = true
        
        label1.heightAnchor.constraint(equalToConstant: 50).isActive = true
        label1.bottomAnchor.constraint(equalTo: label2.topAnchor).isActive = true
        label1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        label2.heightAnchor.constraint(equalToConstant: 50).isActive = true
        label2.bottomAnchor.constraint(equalTo: label3.topAnchor).isActive = true
        label2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        label3.heightAnchor.constraint(equalToConstant: 30).isActive = true
        label3.bottomAnchor.constraint(equalTo: stackView.topAnchor,constant: -30).isActive = true
        label3.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        lottie.heightAnchor.constraint(equalToConstant: 300).isActive = true
        lottie.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        lottie.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }


}

