//
//  ViewController.swift
//  SeriousBusiness
//
//  Created by Yura Menschikov on 10/31/18.
//  Copyright © 2018 Yura Menschikov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let backgroundImage = UIImageView(image: #imageLiteral(resourceName: "mainMenu.jpg"))
    let goButton = UIButton()
    let textLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        self.backgroundImage.frame = self.view.frame
        
        self.textLabel.frame = self.view.frame
        self.textLabel.frame = CGRect(x: 103, y: 350, width: 168, height: 64)
        self.textLabel.text = "Currency converter"
        self.textLabel.backgroundColor = UIColor.darkGray
        self.textLabel.textAlignment = .center
        self.textLabel.textColor = UIColor.white
        
        self.goButton.setImage(#imageLiteral(resourceName: "calculateButton.png"), for: .normal)
        self.goButton.frame = CGRect(x: 123, y: 200, width: 128, height: 128)
        self.goButton.setTitle("Calculate", for: .normal)
        self.goButton.addTarget(self, action: #selector(buttonIsPressed(sender:)), for: .touchUpInside)
        
        self.view.addSubview(backgroundImage)
        self.view.addSubview(goButton)
        self.view.addSubview(textLabel)
    }
    
    func setup(){
        
    }
 
    //MARK: - Создаем функцию для перехода
    @objc func buttonIsPressed(sender: UIButton) {
        
        let controller = ViewControllerTwo()
        self.navigationController?.pushViewController(controller, animated: true)
        print(navigationController)
        /*
        //MARK: - Создаем экземпляр класса ViewControllerTwo
        let calcedVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "VC2") as! ViewControllerTwo
    
        //MARK: - Вызываем метод present у текущего viewController и в качестве параметра для перехода передаем calcedVC
        self.present(calcedVC, animated: true, completion: nil)
        */

    }

}
