import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var midternTxt: UITextField!
    @IBOutlet weak var finalTxt: UITextField!
    @IBOutlet weak var noteLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        noteLbl.text = ""
    }

    @IBAction func calculateNote(_ sender: Any) {
        let midtern = Int(midternTxt.text!)!
        let final = Int(finalTxt.text!)!
        let note = (midtern + final) / 2
        noteLbl.text = "\(note)"
    }
    
}

