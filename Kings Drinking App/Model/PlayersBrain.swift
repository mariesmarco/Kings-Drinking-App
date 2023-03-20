import Foundation

struct PlayersBrain{
    var players: [String] = []
    var playerNumber: Int = 0
    var playerName: String = ""
    
    mutating func addPlayerToArray(userTextFieldInput: String){
        players.append(userTextFieldInput)
        print(players)
        
    }
    
    mutating func clearList() {
        players = []
        playerNumber = 0
        print(players)
    }
    
    mutating func getPlayersArray() -> [String] {
        return players
    }
}
    
    
    
