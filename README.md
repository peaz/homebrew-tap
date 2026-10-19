# Homebrew Tap for peaz

This is a [Homebrew](https://brew.sh) tap containing formulae for various tools and utilities developed by [peaz](https://github.com/peaz).

## What is a Homebrew Tap?

A Homebrew tap is a third-party repository that provides additional formulae for the Homebrew package manager on macOS and Linux. This tap allows you to easily install and manage peaz's tools using Homebrew.

## Installation

First, add this tap to your Homebrew:

```bash
brew tap peaz/tap
```

## Available Formulae

### wistia-downloader

A command-line tool to download videos from the Wistia hosting platform.

**Install:**
```bash
brew install wistia-downloader
```

**Usage:**
```bash
wistia-downloader --help
```

**Project Repository:** [peaz/wistia-downloader](https://github.com/peaz/wistia-downloader)

### displaymodemenu (cask)

A macOS menu bar app for switching display resolutions, with Shortcuts integration. Signed and notarized. Requires macOS 13+.

**Install:**
```bash
brew install --cask displaymodemenu
```

**Project Repository:** [peaz/displaymodemenu](https://github.com/peaz/displaymodemenu)

## Important Notes

### Code Signing
The binaries provided through this tap are unsigned. On macOS, you may encounter Gatekeeper restrictions. If you see a security warning:

1. Go to **System Preferences > Security & Privacy**
2. Click "Allow Anyway" for the blocked application

Or run this command to remove the quarantine attribute:
```bash
xattr -d com.apple.quarantine $(which wistia-downloader)
```

### Building from Source
If you prefer to build from source instead of using pre-built binaries, visit the individual project repositories linked above for build instructions.

## Support

For issues with specific tools, please visit their respective GitHub repositories:
- [wistia-downloader issues](https://github.com/peaz/wistia-downloader/issues)

For issues with this tap itself, please [create an issue](https://github.com/peaz/homebrew-tap/issues) in this repository.

## Contributing

Contributions are welcome! Please feel free to submit pull requests or create issues for new formulae or improvements to existing ones.

## License

This tap is available under the MIT License. Individual tools may have their own licenses - please check their respective repositories.