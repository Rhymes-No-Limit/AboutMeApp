import UIKit

final class LogViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addVerticalGradientLayer(topColor: BackgroundColor.primary,
                                      bottomColor: BackgroundColor.secondary)
            welcomeLabel.text = "Welcome, \(userName ?? "")"

    }
    
    @IBAction func logOutButtonAction() {
        dismiss(animated: true)
    }
    
}
