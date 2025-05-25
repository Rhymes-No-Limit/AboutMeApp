import UIKit

final class LogViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var profileName: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: BackgroundColor.primary,
                                      bottomColor: BackgroundColor.secondary)
        
        welcomeLabel.text = "Welcome, \(userName ?? "Гость")\nMy name is \(Description.name) \(Description.surname)"
    }
    
    @IBAction func logOutButtonAction() {
        dismiss(animated: true)
    }
    
}
