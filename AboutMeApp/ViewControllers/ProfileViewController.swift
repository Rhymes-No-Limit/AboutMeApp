import UIKit

final class ProfileViewController: UIViewController {


    @IBOutlet var descriptionLabels: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addVerticalGradientLayer(topColor: BackgroundColor.primary,
                                      bottomColor: BackgroundColor.secondary)

    }
}
