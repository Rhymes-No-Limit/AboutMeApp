import UIKit

final class MainViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var logInButton: UIButton!
    
    private let login = Login.getLoginDate()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        logInButton.layer.cornerRadius = 10
        passwordTF.isSecureTextEntry = true
        
        userNameTF.text = login.name
        passwordTF.text = login.password
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? LogViewController else { return }
        welcomeVC.userName = login.name
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard let loginText = userNameTF.text,
              let passwordText = passwordTF.text,
              !loginText.isEmpty,
              !passwordText.isEmpty else {
                showAlert(withTitle: "Error", andMessage: "Input login or password")
            return false
        }
        
        guard userNameTF.text == login.name, passwordTF.text == login.password else {
            showAlert(
                withTitle: "Invalid login or password",
                andMessage: "Please, enter correct login and password") {
                    self.passwordTF.text = ""
                }
            return false
        }
        return true
    }
    
    
    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(withTitle: "User name:", andMessage: "Your user name: \(login.name)")
        : showAlert(withTitle: "Password:", andMessage: "Your password: \(login.password)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    private func showAlert(withTitle title: String,
                           andMessage message: String,
                           completion: (() -> Void)? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            completion?()
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
}
