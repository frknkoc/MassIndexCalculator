import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightTextfield: UITextField!
    @IBOutlet weak var weightTextfield: UITextField!
    
    var indexResult : Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func showResult(_ sender: Any) {
        
        if let weight = Int(weightTextfield.text!){
            if let height = Int(heightTextfield.text!){
                indexResult = weight / ((height * height) / 10000)

                performSegue(withIdentifier: "toResultVC", sender: nil)
            }
        } else{

        }
    }
    
    @IBAction func reset(_ sender: Any) {
        weightTextfield.text = ""
        heightTextfield.text = ""
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toResultVC" {
            let destinationVC = segue.destination as! ResultViewController

            destinationVC.indexResult = indexResult
        }
    }
}

    
    
    


