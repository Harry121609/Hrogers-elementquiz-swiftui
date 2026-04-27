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
    
    
