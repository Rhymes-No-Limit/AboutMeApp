import UIKit

final class MainViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    @IBOutlet var logInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupKeyboardHandling()
        logInButton.layer.cornerRadius = 10
        passwordTF.isSecureTextEntry = true
    }

    @IBAction func logInAction(_ sender: UIButton) {
        let currentLogin = "Rhymes"
        let currentPassword = "123"
        
        guard let loginText = userNameTF.text, !loginText.isEmpty else {
            return showAlert(withTitle: "Error", andMessage: "Input login or password")
        }
        
        guard let passwordText = passwordTF.text, !passwordText.isEmpty else {
            return showAlert(withTitle: "Error", andMessage: "Input login or password")
        }
        
        if loginText == currentLogin && passwordText == currentPassword {
            performSegue(withIdentifier: "showLogScreen", sender: self)
        } else {
            showAlert(withTitle: "Error", andMessage: "Wrong current login or password") {
                self.passwordTF.text = ""
            }
        }
        
    }
    

    
    @IBAction func forgotUserNameAction() {
        showAlert(withTitle: "User name:", andMessage: "Your user name: Rhymes")
    }
    
    @IBAction func forgotPassordAction() {
        showAlert(withTitle: "Password:", andMessage: "Your password: 123")
    }
    
    private func showAlert(withTitle title: String,
                           andMessage message: String,
                           completion: (() -> ())? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            completion?()
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let destinationVC = segue.destination as? LogViewController
            destinationVC?.userName = userNameTF.text
        
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    
}

extension UIViewController {
    func setupKeyboardHandling() {
            let tapGesture = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
            view.addGestureRecognizer(tapGesture)

            NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow),
                                                   name: UIResponder.keyboardWillShowNotification, object: nil)
            NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide),
                                                   name: UIResponder.keyboardWillHideNotification, object: nil)
        }

        @objc private func dismissKeyboard() {
            view.endEditing(true)
        }

        @objc private func keyboardWillShow(notification: Notification) {
            guard view.frame.origin.y == 0 else { return }

            if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
                view.frame.origin.y -= keyboardSize.height / 2
            }
        }

        @objc private func keyboardWillHide(notification: Notification) {
            if view.frame.origin.y != 0 {
                view.frame.origin.y = 0
            }
        }
}

