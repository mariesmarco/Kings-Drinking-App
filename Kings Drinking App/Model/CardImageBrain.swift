import UIKit

struct CardsImageBrain{
    //   let imagesArray = Bundle.main.urls(forResourcesWithExtension: "png", subdirectory: "Poker Cards Images")
    //NOT COMPLETE, just experimental
    var currentCardNumber = 0
    let cards = [
        UIImage(named: "1"),
        UIImage(named: "2"),
        UIImage(named: "3"),
        UIImage(named: "4"),
        UIImage(named: "5"),
        UIImage(named: "6"),
        UIImage(named: "7"),
        UIImage(named: "8"),
        UIImage(named: "9"),
        UIImage(named: "10"),
        UIImage(named: "11"),
        UIImage(named: "12"),
        UIImage(named: "13"),
        UIImage(named: "14"),
        UIImage(named: "15"),
        UIImage(named: "16"),
        UIImage(named: "17"),
        UIImage(named: "18"),
        UIImage(named: "19"),
        UIImage(named: "20"),
        UIImage(named: "21"),
        UIImage(named: "22"),
        UIImage(named: "23"),
        UIImage(named: "24"),
        UIImage(named: "25"),
        UIImage(named: "26"),
        UIImage(named: "27"),
        UIImage(named: "28"),
        UIImage(named: "29"),
        UIImage(named: "30"),
        UIImage(named: "31"),
        UIImage(named: "32"),
        UIImage(named: "33"),
        UIImage(named: "34"),
        UIImage(named: "35"),
        UIImage(named: "36"),
        UIImage(named: "37"),
        UIImage(named: "38"),
        UIImage(named: "39"),
        UIImage(named: "40"),
        UIImage(named: "41"),
        UIImage(named: "42"),
        UIImage(named: "43"),
        UIImage(named: "44"),
        UIImage(named: "45"),
        UIImage(named: "45"),
        UIImage(named: "46"),
        UIImage(named: "47"),
        UIImage(named: "48"),
        UIImage(named: "49"),
        UIImage(named: "50"),
        UIImage(named: "51"),
        UIImage(named: "52"),
        UIImage(named: "53"),
        UIImage(named: "54"),
        UIImage(named: "55"),
        UIImage(named: "56"),
        UIImage(named: "57"),
        UIImage(named: "58"),
        UIImage(named: "59"),
        UIImage(named: "60"),
        UIImage(named: "61"),
        UIImage(named: "62"),
        UIImage(named: "63"),
        UIImage(named: "64"),
        UIImage(named: "65"),
        UIImage(named: "66"),
        UIImage(named: "67")
    ]
    

                                            
    mutating func getRandomCard() -> UIImage{
        let nextCard = cards.randomElement()!
        return nextCard!
    }
    mutating func endOfCards() {
        for _ in cards{
            if currentCardNumber + 1 < cards.count{
                currentCardNumber += 1
            } else {
               return
            }
        }
    }
}
