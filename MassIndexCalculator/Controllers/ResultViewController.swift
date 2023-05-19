import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var indexLabel: UILabel!
    @IBOutlet weak var resultTick: UILabel!
    @IBOutlet weak var resultText: UILabel!
    @IBOutlet weak var massIndexLabel: UILabel!
    
    var indexResult : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        indexLabel.text = String(indexResult)
        if indexResult > 0 {
            resultTick.textColor = .systemRed
            indexLabel.textColor = .systemRed
            resultText.textColor = .systemRed
            massIndexLabel.textColor = .systemRed
            resultTick.text = "X"
            resultText.text = "Your Body Mass is within the LOW Weight ranges."
        }
        if indexResult >= 20 {
            resultTick.textColor = .systemGreen
            indexLabel.textColor = .systemGreen
            resultText.textColor = .systemGreen
            massIndexLabel.textColor = .systemGreen
            resultTick.text = "✓"
            resultText.text = "Your Body Mass is within the NORMAL Weight ranges."
        }
        if indexResult > 25 {
            resultTick.textColor = .systemRed
            indexLabel.textColor = .systemRed
            resultText.textColor = .systemRed
            massIndexLabel.textColor = .systemRed
            resultTick.text = "X"
            resultText.text = "Your Body Mass is within the HIGH Weight ranges."
        }
        
    }

}
