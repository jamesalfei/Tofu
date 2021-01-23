import UIKit

private func placeholderImageWithText(_ text: String) -> UIImage {
    let image = UIImage(named: "Placeholder")!
    UIGraphicsBeginImageContextWithOptions(image.size, false, image.scale)
    image.draw(at: CGPoint.zero)
    defer { UIGraphicsEndImageContext() }
    let paragraphStyle = NSMutableParagraphStyle()
    paragraphStyle.alignment = .center
    let fontSize: CGFloat = 36

    let foregroundColor: UIColor
    if #available(iOS 13.0, *) {
        foregroundColor = .tertiaryLabel
    } else {
        foregroundColor = .lightGray
    }

    let attributes: [NSAttributedString.Key: Any] = [
        .font: UIFont.systemFont(ofSize: fontSize, weight: UIFont.Weight.ultraLight),
        .foregroundColor: foregroundColor,
        .paragraphStyle: paragraphStyle,
    ]
    let origin = CGPoint(x: 0, y: (image.size.height - fontSize) / 2 - 0.1 * fontSize)
    text.draw(with: CGRect(origin: origin, size: image.size), options: .usesLineFragmentOrigin,
              attributes: attributes, context: nil)
    return UIGraphicsGetImageFromCurrentImageContext()!
}

private func imageForAccount(_ account: Account) -> UIImage {
    switch account.issuer {
    case .some("Adobe ID"): return UIImage(named: "Adobe")!
    case .some("Allegro"): return UIImage(named: "Allegro")!
    case .some("Amazon"): return UIImage(named: "Amazon")!
    case .some("AnonAddy"): return UIImage(named: "AnonAddy")!
    case .some("Atlassian"): return UIImage(named: "Atlassian")!
    case .some("AWS"), .some("Amazon Web Services"): return UIImage(named: "AWS")!
    case .some("Backblaze"): return UIImage(named: "Backblaze")!	
    case .some("Basecamp's+Launchpad"): return UIImage(named: "Basecamp")!
    case .some("Binance.com"): return UIImage(named: "Binance")!
    case .some("BitBayAuth"): return UIImage(named: "BitBay")!
    case .some("Bitbucket"): return UIImage(named: "Bitbucket")!
    case .some("Bittrex"): return UIImage(named: "Bittrex")!
    case .some("Bitwarden"): return UIImage(named: "Bitwarden")!
    case .some("Cloudflare"): return UIImage(named: "Cloudflare")!
    case .some("Coinbase"): return UIImage(named: "Coinbase")!
    case .some("CorporateTrust"): return UIImage(named: "CorporateTrust")!
    case .some("CyDIS"): return UIImage(named: "CyDIS")!
    case .some("DigitalOcean"): return UIImage(named: "DigitalOcean")!
    case .some("DNSimple"): return UIImage(named: "DNSimple")!
    case .some("Dropbox"): return UIImage(named: "Dropbox")!
    case .some("Discord"): return UIImage(named: "Discord")!
    case .some("hub.docker.com"): return UIImage(named: "Docker")!
    case .some("Electronic Arts"): return UIImage(named: "ElectronicArts")!
    case .some("Epic+Games"): return UIImage(named: "EpicGames")!
    case .some("Evernote"): return UIImage(named: "Evernote")!
    case .some("Facebook"): return UIImage(named: "Facebook")!
    case .some("Fastmail"): return UIImage(named: "FastMail")!
    case .some("Firefox"): return UIImage(named: "Firefox")!
    case .some("gandi.net"): return UIImage(named: "Gandi")!
    case .some("Gitea"): return UIImage(named: "Gitea")!
    case .some("GitHub"): return UIImage(named: "GitHub")!
    case .some("gitlab.com"): return UIImage(named: "GitLab")!
    case .some("Google"): return UIImage(named: "Google")!
    case .some("GreenAddress"): return UIImage(named: "GreenAddress")!
    case .some("Hack The Box"): return UIImage(named: "HackTheBox")!
    case .some("Heroku"): return UIImage(named: "Heroku")!
    case .some("HEY"): return UIImage(named: "HEY")!
    case .some("Hostek"): return UIImage(named: "Hostek")!
    case .some("Hover"): return UIImage(named: "Hover")!
    case .some("HumbleBundle"): return UIImage(named: "HumbleBundle")!
    case .some("IFTTT"): return UIImage(named: "IFTTT")!
    case .some("Instagram"): return UIImage(named: "Instagram")!
    case .some("Intercom"): return UIImage(named: "Intercom")!
    case .some("JetBrains+Account"): return UIImage(named: "JetBrains")!
    case .some("Kickstarter"): return UIImage(named: "Kickstarter")!
    case .some("LastPass"): return UIImage(named: "LastPass")!
    case .some("LinkedIn"): return UIImage(named: "LinkedIn")!
    case .some("LinodeManager"): return UIImage(named: "Linode")!
    case .some("LocalBitcoins"): return UIImage(named: "LocalBitcoins")!
    case .some("Microsoft"): return UIImage(named: "Microsoft")!
    case .some("Name.com"): return UIImage(named: "Name.com")!
    case .some("Nextcloud"): return UIImage(named: "Nextcloud")!
    case .some("NiceHash"), .some("NiceHash - New platform"): return UIImage(named: "NiceHash")!
    case .some("NordPass"): return UIImage(named: "NordPass")!
    case .some("ownCloud"): return UIImage(named: "ownCloud")!
    case .some("Paladin Extensions"): return UIImage(named: "PaladinExtensions")!
    case .some("Parler"): return UIImage(named: "Parler")!
    case .some("PayPal"): return UIImage(named: "PayPal")!
    case .some("Privacy.com"): return UIImage(named: "Privacy")!
    case .some("ProtonMail"): return UIImage(named: "ProtonMail")!
    case .some("Reddit"): return UIImage(named: "Reddit")!
    case .some("Robinhood"): return UIImage(named: "Robinhood")!
    case .some("Slack"): return UIImage(named: "Slack")!
    case .some("Snapchat"): return UIImage(named: "Snapchat")!
    case .some("STACK"): return UIImage(named: "STACK")!
    case .some("Stripe"): return UIImage(named: "Stripe")!
    case .some("Surfshark"): return UIImage(named: "Surfshark")!
    case .some("Time4VPS"): return UIImage(named: "Time4VPS")!
    case .some("TorGuard"): return UIImage(named: "TorGuard")!
    case .some("Tresorit"): return UIImage(named: "Tresorit")!
    case .some("Tumblr"): return UIImage(named: "Tumblr")!
    case .some("TurboTax"): return UIImage(named: "TurboTax")!
    case .some("Tutanota"): return UIImage(named: "Tutanota")!
    case .some("Twitter"): return UIImage(named: "Twitter")!
    case .some("Ubisoft"): return UIImage(named: "Ubisoft")!
    case .some("WordPress"): return UIImage(named: "WordPress")!
    default:
        let text = String(account.description.first ?? "?").uppercased()
        return placeholderImageWithText(text)
    }
}

private func imageWithColor(_ color: UIColor, size: CGSize) -> UIImage {
    UIGraphicsBeginImageContext(size)
    color.setFill()
    UIRectFill(CGRect(x: 0, y: 0, width: size.width, height: size.height))
    let image = UIGraphicsGetImageFromCurrentImageContext()
    UIGraphicsEndImageContext()
    return image!;
}

private func formattedValue(_ value: String) -> String {
    let length = value.count
    let prefix = String(value.prefix(length / 2))
    let suffix = String(value.suffix(length - length / 2))
    return "\(prefix) \(suffix)"
}

class AccountCell: UITableViewCell {
    @IBOutlet weak var accountImageView: UIImageView!
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var identifierLabel: UILabel!
    var delegate: AccountUpdateDelegate?
    private let button = UIButton(type: .custom)
    private let progressView = CircularProgressView()

    var account: Account! {
        didSet {
            accessoryView = account.password.timeBased ? progressView : button
            let now = Date()
            updateWithDate(now)
        }
    }

    override func awakeFromNib() {
        let featureSettings: [[UIFontDescriptor.FeatureKey: Any]] =
            [[.featureIdentifier: kNumberSpacingType, .typeIdentifier: kMonospacedNumbersSelector]]
        let fontDescriptor = valueLabel.font.fontDescriptor.addingAttributes([.featureSettings: featureSettings])
        valueLabel.font = UIFont(descriptor: fontDescriptor, size: 0)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 13)
        button.setTitle("NEXT", for: UIControl.State())
        button.setTitleColor(tintColor, for: UIControl.State())
        button.setTitleColor(UIColor.white, for: .highlighted)
        button.setTitleColor(UIColor.white, for: .selected)
        button.layer.borderColor = button.tintColor.cgColor
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 4
        button.contentEdgeInsets = UIEdgeInsets(top: 5, left: 10, bottom: 5, right: 10)
        button.sizeToFit()
        let image = imageWithColor(tintColor, size: button.bounds.size)
        button.setBackgroundImage(image, for: .highlighted)
        button.setBackgroundImage(image, for: .selected)
        button.clipsToBounds = true
        button.addTarget(self, action: #selector(didPressButton(_:)), for: .touchUpInside)
    }

    @objc func didPressButton(_ sender: UIButton) {
        account.password.counter += 1
        delegate?.updateAccount(account)
    }

    func updateWithDate(_ date: Date) {
        accountImageView.image = imageForAccount(account)
        valueLabel.text = formattedValue(account.password.valueForDate(date))
        identifierLabel.text = account.description
        progressView.progress = account.password.progressForDate(date)
        progressView.tintColor = account.password.timeIntervalRemainingForDate(date) < 5 ?
            .systemRed : tintColor
    }

    override func copy(_ sender: Any?) {
        guard let labelText = valueLabel.text else { return }

        UIPasteboard.general.string = labelText.replacingOccurrences(of: " ", with: "")
    }

    override var canBecomeFirstResponder: Bool {
        return true
    }

    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)

        if traitCollection.userInterfaceStyle != previousTraitCollection?.userInterfaceStyle,
           let account = account {
            // When we change between light and dark mode, placeholder images need to be re-generated.
            accountImageView.image = imageForAccount(account)
        }
    }
}
