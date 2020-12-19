import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {
    @IBAction func toggleWindowChrome(_ sender: NSMenuItem) {
        guard let window = NSApp?.mainWindow else { return }

        if sender.state == .on {
            hideChrome(for: window)
            sender.state = .off
        } else {
            showChrome(for: window)
            sender.state = .on
        }
    }

    private func showChrome(for window: NSWindow) {
        window.styleMask = [.resizable, .titled]
        window.isOpaque = true
        window.titleVisibility = .visible
        window.backgroundColor = .windowBackgroundColor
        window.title = "Transparent Text Box"
        window.hasShadow = true
    }

    private func hideChrome(for window: NSWindow) {
        window.styleMask = []
        window.isOpaque = false
        window.titleVisibility = .hidden
        window.backgroundColor = .clear
        window.hasShadow = false
    }
}
