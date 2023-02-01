//
//  ViewController.swift
//  Caculatoro
//
//  Created by tran the quan on 01/02/2023.
//

import UIKit

class ViewController: UIViewController {
    let operatorSet : Set = ["*","/","+","-","."]
    @IBAction func acBtn(_ sender: Any) {
        exTxt.text = "";
    }
    @IBAction func delBtn(_ sender: Any) {
        var tmp = exTxt.text
        if (tmp != "") {
            tmp!.remove(at: tmp!.index(before: tmp!.endIndex))
        }
        exTxt.text = tmp
    }
    @IBAction func SevenBtn(_ sender: Any) {
        exTxt.text = (exTxt.text ?? "" ) + "7";
    }
    @IBAction func eightBtn(_ sender: Any) {
        exTxt.text = (exTxt.text ?? "" ) + "8";
    }
    @IBAction func nineBtn(_ sender: Any) {
        exTxt.text = (exTxt.text ?? "" ) + "9";
    }
    @IBAction func fourBtn(_ sender: Any) {
        exTxt.text = (exTxt.text ?? "" ) + "4";
    }
    @IBAction func fiveBtn(_ sender: Any) {
        exTxt.text = (exTxt.text ?? "" ) + "5";
    }
    @IBAction func sixBtn(_ sender: Any) {
        exTxt.text = (exTxt.text ?? "" ) + "6";
    }
    @IBAction func oneBtn(_ sender: Any) {
        exTxt.text = (exTxt.text ?? "" ) + "1";
    }
    @IBAction func twoBtn(_ sender: Any) {
        exTxt.text = (exTxt.text ?? "" ) + "2";
    }
    @IBAction func thrBtn(_ sender: Any) {
        exTxt.text = (exTxt.text ?? "" ) + "3";
    }
    @IBAction func oBtn(_ sender: Any) {
        exTxt.text = (exTxt.text ?? "" ) + "0";
    }
    @IBAction func dotBtn(_ sender: Any) {
        var last : String = exTxt.text ?? "a"
        if last != "" {
        let lastt = String(last[last.index(before: last.endIndex)])
        if operatorSet.contains(lastt) {
            last.removeLast()
            exTxt.text = last + "."
        }
        else {
            exTxt.text = (exTxt.text ?? "" ) + ".";
        }
        }
    }
    @IBAction func divBtn(_ sender: Any) {
        var last : String = exTxt.text ?? "a"
        if last != "" {
        let lastt = String(last[last.index(before: last.endIndex)])
        if operatorSet.contains(lastt) {
            last.removeLast()
            exTxt.text = last + "/"
        }
        else {
            exTxt.text = (exTxt.text ?? "" ) + "/";
        }
        }
    }
    @IBAction func mulBtn(_ sender: Any) {
        var last : String = exTxt.text ?? "a"
        if last != "" {
        let lastt = String(last[last.index(before: last.endIndex)])
        if operatorSet.contains(lastt) {
            last.removeLast()
            exTxt.text = last + "*"
        }
        else {
            exTxt.text = (exTxt.text ?? "" ) + "*";
        }
        }
    }
    @IBAction func subBtn(_ sender: Any) {
        var last : String = exTxt.text ?? "a"
        if last != "" {
        let lastt = String(last[last.index(before: last.endIndex)])
        if operatorSet.contains(lastt) {
            last.removeLast()
            exTxt.text = last + "-"
        }
        else {
            exTxt.text = (exTxt.text ?? "" ) + "-";
        }
        }
    }
    @IBAction func plusBtn(_ sender: Any) {
        var last : String = exTxt.text ?? "a"
        if last != "" {
        let lastt = String(last[last.index(before: last.endIndex)])
        if operatorSet.contains(lastt) {
            last.removeLast()
            exTxt.text = last + "+"
        }
        else {
            exTxt.text = (exTxt.text ?? "" ) + "+";
        }
        }
    }
      
    @IBAction func calBtn(_ sender: Any) {
        let chars = String(format:exTxt.text ?? "")
        if chars != "" {
        if !operatorSet.contains(String(chars.last!) ) {
        let result = chars.calculate()
            let doubleResult = round(result.doubleValue*10000)/10000
            //resultTxt.text = ( floor(doubleResult) == doubleResult ) ? "\(floor(doubleResult))" : "\(Int(6))"
            if doubleResult.isInt { resultTxt.text = "\(Int(doubleResult))" }
             else
            {
                 resultTxt.text = "\((doubleResult))"
             }
        }
        else {resultTxt.text = "ERROR"
        }
        }
    }
    @IBOutlet weak var exTxt: UITextField!
    @IBOutlet weak var resultTxt: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

