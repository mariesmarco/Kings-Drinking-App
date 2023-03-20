import UIKit

class ChoosePlayersViewController: UIViewController, UITextFieldDelegate {
    
    var playersBrain = PlayersBrain()
    //declaring IBOutlets
    @IBOutlet weak var inputPlayerTextField: UITextField!
    @IBOutlet weak var infoPlayersLabel: UILabel!
    //declaring IBActions
    @IBAction func startPlayingButtonPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "goToPlaygroundScreen", sender: self)
    }
    @IBAction func addToListButtonPressed(_ sender: UIButton) {
        playersBrain.addPlayerToArray(userTextFieldInput: inputPlayerTextField.text!)
        inputPlayerTextField.text = ""
    }
    @IBAction func clearListButtonPressed(_ sender: UIButton) {
        playersBrain.clearList()
        playersBrain.playerNumber = 0
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        inputPlayerTextField.placeholder = "Insert player's name"
        //delegates for the text fields
        inputPlayerTextField.delegate = self
    }
    //prepare for the next screen
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier ==  "goToPlaygroundScreen" {
            let playersInGame = playersBrain.players
            let destinationVC = segue.destination as! PlaygroundViewController
            destinationVC.inGamePlayers = playersInGame
        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        inputPlayerTextField.endEditing(true)
        return true
    }
}
