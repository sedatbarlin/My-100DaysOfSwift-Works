import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var sayi1: UITextField!
    @IBOutlet weak var sayi2: UITextField!
    @IBOutlet weak var sonuc: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func arti(_ sender: Any) {
        let s1 = Double(sayi1.text!)!
        let s2 = Double(sayi2.text!)!
        let sn=s1+s2
        sonuc.text = "\(sn)"
    }
    @IBAction func eksi(_ sender: Any) {
        let s1 = Double(sayi1.text!)!
        let s2 = Double(sayi2.text!)!
        let sn=s1-s2
        sonuc.text = "\(sn)"
    }
    @IBAction func carpma(_ sender: Any) {
        let s1 = Double(sayi1.text!)!
        let s2 = Double(sayi2.text!)!
        let sn=s1*s2
        sonuc.text = "\(sn)"
    }
    @IBAction func bolme(_ sender: Any) {
        let s1 = Double(sayi1.text!)!
        let s2 = Double(sayi2.text!)!
        let sn=s1/s2
        sonuc.text = "\(sn)"
    }
}

