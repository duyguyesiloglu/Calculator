//
//  ViewController.swift
//  HesapMakinesi
//
//  Created by Duygu Yesiloglu on 24.09.2023.
//

import UIKit

enum Op:String {
    case Add = "+"
    case NULL = "Null"
}

class ViewController: UIViewController {

    
    @IBOutlet weak var label: UILabel!
    
    var runNumber = ""
    var leftVal = ""
    var rightVal = ""
    var result = ""
    var current:Op = .NULL
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.navigationItem.title = "Free Calculator"
        
        let x = UINavigationBarAppearance()
        
        x.backgroundColor = UIColor(named: "bir")
        
        x.titleTextAttributes = [.foregroundColor : UIColor(named: "yazi")]
      
        
        
        navigationController?.navigationBar.barStyle = .black
        
        navigationController?.navigationBar.standardAppearance = x
        navigationController?.navigationBar.compactAppearance = x
        
        navigationController?.navigationBar.scrollEdgeAppearance = x
        
        label.text = "0"
        
    }

    @IBAction func numberPressed(_ sender: RoundButton) {
        if runNumber.count <= 8 {
            runNumber += "\(sender.tag)"
            label.text = runNumber
        }}
    
    @IBAction func allClear(_ sender: RoundButton) {
        runNumber = ""
        leftVal = ""
        rightVal = ""
        result = ""
        current = .NULL
        label.text = "0"
        
    }
    
    @IBAction func dotButton(_ sender: RoundButton) {
        if runNumber.count <= 7 {
            runNumber += "."
            label.text = runNumber
        }
    }
    @IBAction func addButton(_ sender: RoundButton) {
        funt(funt: .Add)
    }
    @IBAction func equalbutton(_ sender: RoundButton) {
        funt(funt: current)
    }
    
    func funt(funt: Op) {
        if current != .NULL {
            if runNumber != "" {
                rightVal = runNumber
                runNumber = ""
                
                if current == .Add {
                    result = "\(Double(leftVal)! + Double(rightVal)!)"
                }
                leftVal = result
                if(Double(result)!.truncatingRemainder(dividingBy: 1) == 0) {
                   result = "\(Int(Double(result)!))"
                }
                
                label.text = result
                
            }
            current = funt
            
        } else {
                    leftVal = runNumber
                    runNumber = ""
                    current = funt
                }
            }
        }
    

