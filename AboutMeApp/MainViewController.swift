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
        guard let loginText = userNameTF.text, !loginText.isEmpty else {
            return showAlert(withTitle: "Input text", andMessage: "Input login or password")
        }
        
        guard let passwordText = passwordTF.text, !passwordText.isEmpty else {
            return showAlert(withTitle: "Input text", andMessage: "Input login or password")
        }
        
        
    }
    

    
    @IBAction func forgotUserNameAction() {
        showAlert(withTitle: "User name:", andMessage: "Your user name: Rhymes")
    }
    
    @IBAction func forgotPassordAction() {
        showAlert(withTitle: "Password:", andMessage: "Your password: 123")
    }
    
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        
        present(alert, animated: true)
    }
}

