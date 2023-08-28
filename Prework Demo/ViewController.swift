//
//  ViewController.swift
//  Prework Demo
//
//  Created by Monika Jankun-Kelly on 8/27/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    // change the background color when the bg color button is tapped
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomBGcolor = createRandomColor()
        view.backgroundColor = randomBGcolor
    }
    
    
    // return a random UI color
    func createRandomColor() -> UIColor{
        // I chose not to use the range 0,1 because it could result in very dark colors
        // Instead I chose 0.3,1 to get bright colors with slightly muted hues
        let red = CGFloat.random(in: 0.3...1)
        let grn = CGFloat.random(in: 0.3...1)
        let blu = CGFloat.random(in: 0.3...1)
        
        // Instead of an alpha value of 0.5, I used 1.0
        // I wanted the color to be entirely opaque
        return UIColor( red: red, green: grn, blue: blu, alpha: 1.0)
    }
}

