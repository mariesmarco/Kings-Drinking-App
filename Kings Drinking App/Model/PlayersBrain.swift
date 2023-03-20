import Foundation

struct PlayersBrain{
    var players: [String] = []
    var playerPosition: Int = 0
    
    mutating func addPlayerToArray(userTextFieldInput: String){
        print(players)
        players.append(userTextFieldInput)
        print(players)
    }
    
    mutating func clearList() {
        players = []
        print(players)
    }
    
    func getPlayers() -> [String] {
        return players
    }
    
   /* func printPlayer() {
        for player in players{
            var playerString: String! = player
            print(playerString)
            
        }
    }*/
}


