//
//  ViewController.swift
//  basic-calculator
//
//  Created by Burak Ertaş on 6.10.2022.
//

import UIKit

class ViewController: UIViewController {

    let stackViewHorizontal1 = UIStackView()
    
    let stackViewHorizontal2 = UIStackView()
    
    let stackViewHorizontal3 = UIStackView()
    
    let stackViewHorizontal4 = UIStackView()
    
    let stackViewVertical = UIStackView()
    
    let textField = UITextField()
    
    let button1 = UIButton()
    
    let button2 = UIButton()
    
    let button3 = UIButton()
    
    let button4 = UIButton()
    
    let button5 = UIButton()
    
    let button6 = UIButton()
    
    let button7 = UIButton()
    
    let button8 = UIButton()
    
    let button9 = UIButton()
    
    let button0 = UIButton()
    
    let buttonClear = UIButton()
    
    let buttonEqual = UIButton()
    
    let buttonPlus = UIButton()
    
    var number1 = 0
    
    var number2 = 0
    
    var result = 0
    
    var _operator = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        view.addSubview(stackViewVertical)
        
        setupTextField()
        setupStackViews()
        setupButtons()
        
        stackViewVertical.addArrangedSubview(textField)
        stackViewVertical.addArrangedSubview(stackViewHorizontal4)
        stackViewVertical.addArrangedSubview(stackViewHorizontal1)
        stackViewVertical.addArrangedSubview(stackViewHorizontal2)
        stackViewVertical.addArrangedSubview(stackViewHorizontal3)
        stackViewVertical.addArrangedSubview(button0)
        
        
        stackViewHorizontal1.addArrangedSubview(button1)
        stackViewHorizontal1.addArrangedSubview(button2)
        stackViewHorizontal1.addArrangedSubview(button3)
        
        stackViewHorizontal2.addArrangedSubview(button4)
        stackViewHorizontal2.addArrangedSubview(button5)
        stackViewHorizontal2.addArrangedSubview(button6)
        
        stackViewHorizontal3.addArrangedSubview(button7)
        stackViewHorizontal3.addArrangedSubview(button8)
        stackViewHorizontal3.addArrangedSubview(button9)
        
        stackViewHorizontal4.addArrangedSubview(buttonClear)
        stackViewHorizontal4.addArrangedSubview(buttonPlus)
        stackViewHorizontal4.addArrangedSubview(buttonEqual)
        
    }
    
    
    func setupStackViews() {
        
        stackViewHorizontal1.axis = NSLayoutConstraint.Axis.horizontal
        stackViewHorizontal1.distribution = UIStackView.Distribution.fillEqually
        stackViewHorizontal1.alignment = UIStackView.Alignment.fill
        stackViewHorizontal1.spacing = view.bounds.width * 0.2
        
        stackViewHorizontal2.axis = NSLayoutConstraint.Axis.horizontal
        stackViewHorizontal2.distribution = UIStackView.Distribution.fillEqually
        stackViewHorizontal2.alignment = UIStackView.Alignment.fill
        stackViewHorizontal2.spacing = view.bounds.width * 0.2
        
        stackViewHorizontal3.axis = NSLayoutConstraint.Axis.horizontal
        stackViewHorizontal3.distribution = UIStackView.Distribution.fillEqually
        stackViewHorizontal3.alignment = UIStackView.Alignment.fill
        stackViewHorizontal3.spacing = view.bounds.width * 0.2
        
        stackViewHorizontal4.axis = NSLayoutConstraint.Axis.horizontal
        stackViewHorizontal4.distribution = UIStackView.Distribution.fillEqually
        stackViewHorizontal4.alignment = UIStackView.Alignment.fill
        stackViewHorizontal4.spacing = view.bounds.width * 0.2
        
        stackViewVertical.axis = NSLayoutConstraint.Axis.vertical
        stackViewVertical.distribution = UIStackView.Distribution.fillEqually
        stackViewVertical.alignment = UIStackView.Alignment.fill
        stackViewVertical.spacing = view.bounds.width * 0.2
        
        stackViewVertical.translatesAutoresizingMaskIntoConstraints = false
        stackViewVertical.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: view.bounds.height * 0.2).isActive = true
        stackViewVertical.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackViewVertical.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        
    }
    
    func setupTextField() {
        
        textField.placeholder = "Enter a number"
        textField.layer.cornerRadius = 5
        textField.layer.borderWidth = 1
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.widthAnchor.constraint(equalToConstant: view.bounds.width * 0.7).isActive = true
        
    }
    
    
    func setupButtons() {
        
        button1.setTitle("1", for: .normal)
        button1.backgroundColor = .red
        button1.showsTouchWhenHighlighted = true
        button1.addTarget(self, action: #selector(funcbutton1), for: .touchUpInside)
        button1.translatesAutoresizingMaskIntoConstraints = false
        
        button2.setTitle("2", for: .normal)
        button2.backgroundColor = .red
        button2.showsTouchWhenHighlighted = true
        button2.addTarget(self, action: #selector(funcbutton2), for: .touchUpInside)
        button2.translatesAutoresizingMaskIntoConstraints = false
        
        button3.setTitle("3", for: .normal)
        button3.backgroundColor = .red
        button3.showsTouchWhenHighlighted = true
        button3.addTarget(self, action: #selector(funcbutton3), for: .touchUpInside)
        button3.translatesAutoresizingMaskIntoConstraints = false
        
        button4.setTitle("4", for: .normal)
        button4.backgroundColor = .red
        button4.showsTouchWhenHighlighted = true
        button4.addTarget(self, action: #selector(funcbutton4), for: .touchUpInside)
        button4.translatesAutoresizingMaskIntoConstraints = false
        
        button5.setTitle("5", for: .normal)
        button5.backgroundColor = .red
        button5.showsTouchWhenHighlighted = true
        button5.addTarget(self, action: #selector(funcbutton5), for: .touchUpInside)
        button5.translatesAutoresizingMaskIntoConstraints = false
        
        button6.setTitle("6", for: .normal)
        button6.backgroundColor = .red
        button6.showsTouchWhenHighlighted = true
        button6.addTarget(self, action: #selector(funcbutton6), for: .touchUpInside)
        button6.translatesAutoresizingMaskIntoConstraints = false
        
        button7.setTitle("7", for: .normal)
        button7.backgroundColor = .red
        button7.showsTouchWhenHighlighted = true
        button7.addTarget(self, action: #selector(funcbutton7), for: .touchUpInside)
        button7.translatesAutoresizingMaskIntoConstraints = false
        
        button8.setTitle("8", for: .normal)
        button8.backgroundColor = .red
        button8.showsTouchWhenHighlighted = true
        button8.addTarget(self, action: #selector(funcbutton8), for: .touchUpInside)
        button8.translatesAutoresizingMaskIntoConstraints = false
        
        button9.setTitle("9", for: .normal)
        button9.backgroundColor = .red
        button9.showsTouchWhenHighlighted = true
        button9.addTarget(self, action: #selector(funcbutton9), for: .touchUpInside)
        button9.translatesAutoresizingMaskIntoConstraints = false
        
        button0.setTitle("0", for: .normal)
        button0.backgroundColor = .red
        button0.showsTouchWhenHighlighted = true
        button0.addTarget(self, action: #selector(funcbutton0), for: .touchUpInside)
        button0.translatesAutoresizingMaskIntoConstraints = false
        
        buttonClear.setTitle("Clear", for: .normal)
        buttonClear.backgroundColor = .blue
        buttonClear.showsTouchWhenHighlighted = true
        buttonClear.addTarget(self, action: #selector(buttonClear_), for: .touchUpInside)
        buttonClear.translatesAutoresizingMaskIntoConstraints = false
        
        buttonEqual.setTitle("=", for: .normal)
        buttonEqual.backgroundColor = .magenta
        buttonEqual.showsTouchWhenHighlighted = true
        buttonEqual.addTarget(self, action: #selector(buttonEqual_), for: .touchUpInside)
        buttonEqual.translatesAutoresizingMaskIntoConstraints = false
        
        buttonPlus.setTitle("+", for: .normal)
        buttonPlus.backgroundColor = .systemTeal
        buttonPlus.showsTouchWhenHighlighted = true
        buttonPlus.addTarget(self, action: #selector(buttonPlus_), for: .touchUpInside)
        buttonPlus.translatesAutoresizingMaskIntoConstraints = false
        
        
    }
    
    @objc func funcbutton1(){
        textField.text! += "1"
    }
    @objc func funcbutton2(){
        textField.text! += "2"
    }
    @objc func funcbutton3(){
        textField.text! += "3"
    }
    @objc func funcbutton4(){
        textField.text! += "4"
    }
    @objc func funcbutton5(){
        textField.text! += "5"
    }
    @objc func funcbutton6(){
        textField.text! += "6"
    }
    @objc func funcbutton7(){
        textField.text! += "7"
    }
    @objc func funcbutton8(){
        textField.text! += "8"
    }
    @objc func funcbutton9(){
        textField.text! += "9"
    }
    @objc func funcbutton0(){
        textField.text! += "0"
    }
    
    @objc func buttonPlus_() {
        _operator = "+"
        number1 = Int(textField.text!)!
        textField.text = ""
    }
    
    
    @objc func buttonEqual_() {
        number2 = Int(textField.text!)!
            
        if _operator == "+" {
            result = number1 + number2
            textField.text = String(result)
        }
        _operator = ""
            
    }
    
    @objc func buttonClear_() {
        clearText()
    }
    
    func clearText() {
        textField.text = ""
        number1 = 0
        number2 = 0
        result = 0
        
    }
}

