import UIKit

struct CardsImageBrain{
 //   let imagesArray = Bundle.main.urls(forResourcesWithExtension: "png", subdirectory: "Poker Cards Images")
    //NOT COMPLETE, just experimental
    let images = [
        UIImage(named: "1J"),
        UIImage(named: "2S"),
        UIImage(named: "2C"),
        UIImage(named: "2D"),
        UIImage(named: "2H"),
        UIImage(named: "3S"),
        UIImage(named: "3C"),
        UIImage(named: "3D"),
        UIImage(named: "3H"),
        UIImage(named: "4S"),
        UIImage(named: "4C"),
        UIImage(named: "4D"),
        UIImage(named: "4H"),
        UIImage(named: "5S"),
        UIImage(named: "5C"),
        UIImage(named: "5D"),
        UIImage(named: "5H"),
        UIImage(named: "6S"),
        UIImage(named: "6C"),
        UIImage(named: "6D"),
        UIImage(named: "6H"),
        UIImage(named: "7S"),
        UIImage(named: "7C"),
        UIImage(named: "7D"),
        UIImage(named: "7H"),
        UIImage(named: "8S"),
        UIImage(named: "8C"),
        UIImage(named: "8D"),
        UIImage(named: "8H"),
        UIImage(named: "9S"),
        UIImage(named: "9C"),
        UIImage(named: "9D"),
        UIImage(named: "9H")
    ]
    
    func getRandomCard() -> UIImage{
        let nextCard =  images.randomElement()!
        return nextCard!
    }
}
