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
    
    mutating func nextPlayersPosition()   {
        
        if playerPosition + 1 < players.count {
            playerPosition += 1
            
        } else {
            playerPosition = 0
            
        }
        
    }
    
    //mutating func printPlayer() -> String{
       // nextPlayersPosition()
        //var playersName: String! = players[playerPosition]
       // return playersName
       // }
    }



