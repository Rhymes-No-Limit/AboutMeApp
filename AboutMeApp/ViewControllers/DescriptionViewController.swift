import UIKit

final class DescriptionViewController: UIViewController {

    @IBOutlet var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addVerticalGradientLayer(topColor: BackgroundColor.primary,
                                      bottomColor: BackgroundColor.secondary)

    }
    

}
