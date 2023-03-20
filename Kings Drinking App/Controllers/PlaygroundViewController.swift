import UIKit

class PlaygroundViewController: UIViewController {
    
    var playersBrain = PlayersBrain()
    var cardImagesBrain = CardsImageBrain()
    var curentPlayerNumber = 0
    var inGamePlayers: [String] = ["No player introduced!"]
    //declaring IBOutlets
    @IBOutlet weak var playerTurnLabel: UILabel!
    @IBOutlet var shownCardsImageView: UIImageView!
    @IBOutlet weak var newGameLabel: UIButton!
    //declaring IBActions
    @IBAction func chooseButtonPressed(_ sender: UIButton) {
        if cardImagesBrain.currentCardNumber + 1 < cardImagesBrain.cards.count {
            cardImagesBrain.currentCardNumber += 1
            nextPlayer()
            updateUI()
        } else {
            shownCardsImageView.image = UIImage(named: "TheEndImage")
            playerTurnLabel.text = "\(inGamePlayers[curentPlayerNumber]) cascade its glass"
            newGameLabel.alpha = 1.0
            return
        }
    }
    
    
    @IBAction func newGameButtonPressed(_ sender: UIButton) {
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
        shownCardsImageView.image = UIImage(named: "startimg")
        newGameLabel.alpha = 0.0
        
    }
    func updateUI(){
        let playersTurnString = "\(inGamePlayers[curentPlayerNumber])'s TURN"
        playerTurnLabel.text = playersTurnString
        shownCardsImageView.image = cardImagesBrain.getRandomCard()
    }
}
