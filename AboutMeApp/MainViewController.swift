import UIKit

final class MainViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var logInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logInButton.layer.cornerRadius = 10
    }

    @IBAction func logInAction(_ sender: UIButton) {
    }
    
    @IBAction func forgotUserNameAction() {
        let alert = UIAlertController(
            title: "User name:",
            message: "Your user name: Rhymes",
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
    
    @IBAction func forgotPassordAction() {
        let alert = UIAlertController(
            title: "Password:",
            message: "Your password: 123",
            preferredStyle: .alert
        )
        
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
    
}

