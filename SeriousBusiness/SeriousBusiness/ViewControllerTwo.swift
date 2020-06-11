//
//  ViewControllerTwo.swift
//  SeriousBusiness
//
//  Created by Yura Menschikov on 10/31/18.
//  Copyright © 2018 Yura Menschikov. All rights reserved.
//

import UIKit

class ViewControllerTwo: UIViewController, UITextFieldDelegate{
    
    //MARK: - Создаём объекты
    let calculateButton = UIButton(type: .system)
    let backButton = UIButton()
    
    let secondBackgroundImage = UIImageView(image: #imageLiteral(resourceName: "background.jpg"))
    
    let currencyTextField = UITextField()
    
    let belRubLabel = UILabel()
    let rusRubLabel = UILabel()
    let dollaLabel = UILabel()
    let euroLabel = UILabel()
    
    let belRubLabelCurrency = UILabel()
    let rusRubLabelCurrency = UILabel()
    let dollaLabelCurrency = UILabel()
    let euroLabelCurrency = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainMethod()
        
    }
    
    fileprivate func mainMethod() {
        self.currencyTextField.delegate = self
        
        //MARK: - Редактируем и работаем с объектами
        self.secondBackgroundImage.frame = self.view.frame
        
        editButton(buttonEditor: backButton, x: 16, y: 27, widthOf: 100, heightOf: 50, backColour: .darkGray, titleColour: .white, title: "Back")
        self.backButton.addTarget(self, action: #selector(backButtonIsPressed(sender:)), for: .touchUpInside)
        
        editLabel(label: belRubLabel, x: 244, y: 196, widthOf: 100, heightOf: 30, backColor: .darkGray, textColor: .white, alignment: .center, text: "Bel. rub")
        
        editLabel(label: rusRubLabel, x: 16, y: 290, widthOf: 30, heightOf: 30, backColor: .darkGray, textColor: .white, alignment: .center, text: "₽")
        
        editLabel(label: dollaLabel, x: 16, y: 350, widthOf: 30, heightOf: 30, backColor: .darkGray, textColor: .white, alignment: .center, text: "$")
        
        editLabel(label: euroLabel, x: 16, y: 410, widthOf: 30, heightOf: 30, backColor: .darkGray, textColor: .white, alignment: .center, text: "€")
        
        
        editLabel(label: rusRubLabelCurrency, x: 95, y: 290, widthOf: 200, heightOf: 30, backColor: .white, textColor: .darkGray, alignment: .center, text: "Russian roubles")
        
        editLabel(label: dollaLabelCurrency, x: 95, y: 350, widthOf: 200, heightOf: 30, backColor: .white, textColor: .darkGray, alignment: .center, text: "Dollars")
        
        editLabel(label: euroLabelCurrency, x: 95, y: 410, widthOf: 200, heightOf: 30, backColor: .white, textColor: .darkGray, alignment: .center, text: "Euro")
        
        editTextField(textField: currencyTextField, x: 16, y: 196, widthOf: 220, heightOf: 30, placeName: "Amount of your money")
        
        editButton(buttonEditor: calculateButton, x: 138, y: 600, widthOf: 100, heightOf: 50, backColour: .darkGray, titleColour: .white, title: "Calculate!")
        
        calculateButton.addTarget(self, action: #selector(calculateCurrency(_:)), for: .touchUpInside)
        //calculateButton.addTarget(self, action: #selector(hidekeyboard(_:)), for: .touchUpInside)
        
        //MARK: - Выводим всё на экран
        self.view.addSubview(secondBackgroundImage)
        self.view.addSubview(calculateButton)
        self.view.addSubview(backButton)
        self.view.addSubview(currencyTextField)
        
        self.view.addSubview(belRubLabel)
        self.view.addSubview(rusRubLabel)
        self.view.addSubview(dollaLabel)
        self.view.addSubview(euroLabel)
        
        self.view.addSubview(rusRubLabelCurrency)
        self.view.addSubview(dollaLabelCurrency)
        self.view.addSubview(euroLabelCurrency)
    }
    
    @objc func calculateCurrency(_ textField: UITextField) -> Bool {
        if currencyTextField.text?.isEmpty ?? true {
            let someAction = UIAlertController(title: "Error", message: "Enter your money amount", preferredStyle: .alert)
            let action = UIAlertAction(title: "Ok", style: .default) { (action) in
            }
            someAction.addAction(action)
            self.present(someAction, animated: true, completion: nil)
        } else {
            let something = Double(currencyTextField.text!)
            let rus: Double = 31.0
            let dollar: Double = 0.47
            let euro: Double = 0.41
            self.rusRubLabelCurrency.text = String(something! * rus)
            self.dollaLabelCurrency.text = String(something! * dollar)
            self.euroLabelCurrency.text = String(something! * euro)
        }
        return true
    }
    
    //MARK: - Функция возврата в ViewController
    @objc func backButtonIsPressed(sender: UIButton) {
        //dismiss(animated: true, completion: nil)
        self.navigationController?.popViewController(animated: true)
    }
    
    
    //MARK: - hide keyboard by touch everywhere, instead keyboard
    @objc override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @objc func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.currencyTextField.resignFirstResponder()
        return true
    }
    
}

