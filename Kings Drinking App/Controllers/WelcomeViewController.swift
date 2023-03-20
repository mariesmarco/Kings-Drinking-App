import UIKit

class WelcomeViewController: UIViewController {
    
    let quotesBrain = QuotesBrain()
    
    //declaring IBOutlets
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var welcomeTextLabel: UILabel!
    
    //declaring IBActions
    @IBAction func startButtonPressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "goToChoosePlayersScreen", sender: self)
    }
    
    @IBAction func rulesButtonPressed(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "goToRulesScreen", sender: self)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        quoteLabel.text = "Quote: " + quotesBrain.showRandomQuote()
        welcomeTextLabel.text = "Lets play the Kings Game 👑"
    }
    
    
    //prepare for the next screen
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToChoosePlayersScreen"{
            _ = segue.destination as! ChoosePlayersViewController
        } else if segue.identifier == "goToRulesScreen" {
            _ = segue.destination as! RulesViewController
        }
    }
}
