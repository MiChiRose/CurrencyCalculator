//
//  HelpfulFunctions.swift
//  SeriousBusiness
//
//  Created by Yura Menschikov on 11/1/18.
//  Copyright © 2018 Yura Menschikov. All rights reserved.
//

import UIKit

//MARK: - Text field edit func

func editTextField(textField: UITextField, x: Int, y: Int, widthOf: Int, heightOf: Int, placeName: String) {
    textField.frame = CGRect(x: x, y: y, width: widthOf, height: heightOf)
    textField.borderStyle = UITextField.BorderStyle.line
    textField.backgroundColor = UIColor.white
    textField.placeholder = placeName
    textField.borderStyle = UITextField.BorderStyle.roundedRect
    textField.autocorrectionType = UITextAutocorrectionType.no
    textField.keyboardType = UIKeyboardType.numberPad
    textField.clearButtonMode = UITextField.ViewMode.whileEditing;
    textField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
    textField.contentHorizontalAlignment = UIControl.ContentHorizontalAlignment.center
}

//MARK: - Button edit func
func editButton(buttonEditor: UIButton, x: Int, y: Int, widthOf: Int, heightOf: Int, backColour: UIColor,titleColour: UIColor, title: String) {
    buttonEditor.frame = CGRect(x: x, y: y, width: widthOf, height: heightOf)
    buttonEditor.backgroundColor = backColour
    buttonEditor.setTitle(title, for: .normal)
    buttonEditor.setTitleColor(titleColour, for: .normal)
}

//MARK: - Label edit func
func editLabel (label: UILabel, x: Int, y: Int, widthOf: Int, heightOf: Int, backColor: UIColor, textColor: UIColor, alignment: NSTextAlignment, text: String) {
    label.frame = CGRect(x: x, y: y, width: widthOf, height: heightOf)
    label.backgroundColor = backColor
    label.textColor = textColor
    label.text = text
    label.textAlignment = alignment
}

