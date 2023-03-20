import Foundation

struct QuotesBrain {
    
    var quoteNumber: Int = 0
    
    var quotes = [
        "Bring on the night.",
        "I'm gonna live like tomorrow doesn't exist.",
        "A party without cake is just a meeting.",
        "Life is a party.",
        "Party all night.",
        "This is my moment I just feel so alive.",
        "The night is still young, and so are we!",
        "Do it for the after photo."
    ]
    
    func getQuote() -> String {
        return quotes[quoteNumber]
    }
    
    func showRandomQuote() -> String {
        
        let randomQuoteElement = quotes.randomElement()
        let randomQuoteString: String! = randomQuoteElement
        return randomQuoteString
        
        
        
        
        
        
        
        
    }
    
}
