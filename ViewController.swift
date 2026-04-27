import UIKit

class ViewController: UIViewController {

    // MARK: - UI Outlets
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!
    @IBOutlet weak var feedbackLabel: UILabel!   // NEW
    @IBOutlet weak var scoreLabel: UILabel!      // NEW
    
    // MARK: - Data
    let elementList = ["Carbon", "Gold", "Chlorine", "Sodium"]
    
    var currentElementIndex = 0
    var score = 0
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        updateElement()
        updateScore()
    }
    
    // MARK: - UI Update
    func updateElement() {
        let elementName = elementList[currentElementIndex]
        
        // Load image safely
        imageView.image = UIImage(named: elementName)
        
        // Reset labels
        answerLabel.text = "?"
        feedbackLabel.text = ""
    }
    
    func updateScore() {
        scoreLabel.text = "Score: \(score)"
    }

    // MARK: - Actions
    
    @IBAction func showAnswer(_ sender: Any) {
        let correctAnswer = elementList[currentElementIndex]
        answerLabel.text = correctAnswer
        
        // Give feedback
        feedbackLabel.text = "This is \(correctAnswer)"
    }
    
    @IBAction func next(_ sender: Any) {
        // Move to next element safely
        currentElementIndex += 1
        
        if currentElementIndex >= elementList.count {
            currentElementIndex = 0
        }
        
        updateElement()
    }
    
    // BONUS: Add a "Guess Correct" button in storyboard
    @IBAction func guessedCorrect(_ sender: Any) {
        score += 1
        feedbackLabel.text = "✅ Correct!"
        updateScore()
    }
    
    // BONUS: Add a "Guess Wrong" button
    @IBAction func guessedWrong(_ sender: Any) {
        feedbackLabel.text = "❌ Try again!"
    }
}

