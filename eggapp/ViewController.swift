//
//  ViewController.swift
//  eggapp
//
//  Created by 西村映人 on 2020/09/05.
//  Copyright © 2020 西村映人. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        countLabel.text=String(count)
    }
    
    @IBOutlet weak var countLabel: UILabel!
    
    @IBOutlet weak var textLabel: UILabel!
    
    var count : Int = 100
    
    @IBOutlet weak var imageView: UIImageView!
    
    var dispImageNum = 0
    
    func dispImage(){
        let imageArray = ["egg01","egg02","egg03"]
        
        let name = imageArray[dispImageNum]
        let image = UIImage(named: name)
        
        imageView.image = image
        
    }
    
    @IBAction func button(_ sender: Any) {
        
        count -= 1
        countLabel.text = String(count)
        
//      カウント数に応じたテキストの変更
        if (count == 75) {
            textLabel.text = "まだまだ！"
        }else if (count == 50){
            textLabel.text = "半分！"
            dispImageNum += 1
        }else if (count == 25){
            textLabel.text = "もうちょい！"
        }else if count == 0{
            dispImageNum += 1
        }
        
        dispImage()
    }
}

