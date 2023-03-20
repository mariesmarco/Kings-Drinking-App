import UIKit

class PlaygroundViewController: UIViewController {

    var playersBrain = PlayersBrain()
    var cardImagesBrain = CardsImageBrain()
    var curentPlayerNumber = 0
    var inGamePlayers: [String] = ["No player introduced!"]
    
    //declaring IBOutlets
    @IBOutlet weak var playerTurnLabel: UILabel!
    @IBOutlet var shownCardsImageView: UIImageView!
    
    //declaring IBActions
    @IBAction func chooseButtonPressed(_ sender: UIButton) {
        nextPlayer()
        updateUI()
        
        
    }
    
    
    
    func nextPlayer(){
        if curentPlayerNumber + 1 < inGamePlayers.count {
            curentPlayerNumber += 1
        } else {
            curentPlayerNumber = 0
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        shownCardsImageView.image = UIImage(named: "1B")
    
    }
    
    func updateUI(){
        let playersTurnString = "\(inGamePlayers[curentPlayerNumber])'s TURN"
        playerTurnLabel.text = playersTurnString
        shownCardsImageView.image = cardImagesBrain.getRandomCard()
    }
   
    
}
