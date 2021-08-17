//
//  ViewController.swift
//  Demo02
//
//  Created by Hong Cheng Yen on 2021/8/17.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet var backgroundView: UIView!
    @IBOutlet weak var Switch: UISwitch!
    @IBOutlet weak var angle: UILabel!
    let starLayer = CAShapeLayer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let path = UIBezierPath()
                path.move(to: CGPoint(x: 182, y: 27))
                path.addLine(to: CGPoint(x: 224, y: 120))
                path.addLine(to: CGPoint(x: 322, y: 139))
                path.addLine(to: CGPoint(x: 258, y: 217))
                path.addLine(to: CGPoint(x: 270, y: 326))
                path.addLine(to: CGPoint(x: 182, y: 282))
                path.addLine(to: CGPoint(x: 90, y: 326))
                path.addLine(to: CGPoint(x: 101, y: 221))
                path.addLine(to: CGPoint(x: 28, y: 143))
                path.addLine(to: CGPoint(x: 128, y: 121))
                path.close()
                starLayer.path = path.cgPath
                //starLayer.fillColor = UIColor.yellow.cgColor
                starLayer.strokeColor = UIColor.black.cgColor
                starLayer.lineWidth = 5
                view.layer.addSublayer(starLayer)
    }
    @IBAction func changColor(_ sender: Any) {
        //backgroundView.backgroundColor =  UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        //backgroundView.backgroundColor =  UIColor(hue: CGFloat(redSlider.value), saturation: CGFloat(greenSlider.value), brightness: CGFloat(blueSlider.value), alpha: CGFloat(alphaSlider.value))
        starLayer.fillColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: CGFloat(1.0)).cgColor
        
        let Angle = alphaSlider.value
        starLayer.setAffineTransform(CGAffineTransform(rotationAngle: .pi / 180 * CGFloat(Angle)))
        
        let aangle = String(format: "%.1f", Angle)
        angle.text = "\(aangle)°"
        
                //label.text = "\(degree)°"
//        if Switch.isOn == true {
//            //redSlider.value = 0
//            backgroundView.backgroundColor = .blue
//        }
        
    }
    

}

