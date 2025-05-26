import UIKit

final class ProfileViewController: UIViewController {


    @IBOutlet var descriptionLabels: [UILabel]!
    @IBOutlet var avatarImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        avatarImage.layer.cornerRadius = avatarImage.frame.height / 2
        avatarImage.clipsToBounds = true
        view.addVerticalGradientLayer(topColor: BackgroundColor.primary,
                                      bottomColor: BackgroundColor.secondary)
        title = "\(Description.name) \(Description.surname)"
        
        for label in descriptionLabels {
            switch label.tag {
            case 0:
                label.text = "\(Description.name)"
            case 1:
                label.text = "\(Description.surname)"
            case 2:
                label.text = "\(Description.age)"
            case 3:
                label.text = "\(Description.placeOfWork)"
            default:
                label.text = "\(Description.post)"
            }
        }
    }
}
