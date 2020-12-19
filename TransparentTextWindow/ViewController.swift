import Cocoa

class ViewController: NSViewController {
    @IBOutlet var textView: NSTextView?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        textView?.alignment = .center
        textView?.font = NSFont.systemFont(ofSize: 36)
        textView?.textColor = NSColor.labelColor
    }

}
