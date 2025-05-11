import UIKit

class LogViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            welcomeLabel.text = "Welcome, \(userName ?? "")"

    }
    
    @IBAction func logOutButtonAction() {
        dismiss(animated: true)
    }
    
}
