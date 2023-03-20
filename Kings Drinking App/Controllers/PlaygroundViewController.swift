import UIKit

class PlaygroundViewController: UIViewController {

    var playersBrain = PlayersBrain()
    let cardImagesBrain = CardsImageBrain()
    
    //declaring IBOutlets
    @IBOutlet weak var playerTurnLabel: UILabel!
    @IBOutlet var shownCardsImageView: UIImageView!
    
    //declaring IBActions
    @IBAction func chooseButtonPressed(_ sender: UIButton) {
        
        //playersBrain.nextPlayersPosition()
        updateUI()
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }
    
    func updateUI(){
      //  playerTurnLabel.text = playersBrain.printPlayer()
        shownCardsImageView.image = cardImagesBrain.getRandomCard()
    }
   
}
