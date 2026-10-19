# peaz/tap

A [Homebrew](https://brew.sh) tap for tools by [peaz](https://github.com/peaz).

```bash
brew tap peaz/tap
```

## What's in the tap

| Name | Type | Platform | What it does |
| --- | --- | --- | --- |
| [wistia-downloader](#wistia-downloader) | Formula (CLI) | macOS, Linux (Intel + ARM) | Downloads videos from Wistia |
| [displaymodemenu](#displaymodemenu) | Cask (GUI app) | macOS 13+ | Menu bar app for switching display resolutions |

## wistia-downloader

A command-line tool for downloading videos hosted on Wistia.

```bash
brew install peaz/tap/wistia-downloader
wistia-downloader --help
```

- Pre-built binaries for macOS and Linux, on both amd64 and arm64.
- The binaries are signed and notarized, so no Gatekeeper workaround is needed.
- Source and issues: [peaz/wistia-downloader](https://github.com/peaz/wistia-downloader)

## displaymodemenu

A macOS menu bar app for switching display resolutions quickly, with Shortcuts integration so you can automate mode changes. The app is signed and notarized, so no Gatekeeper workaround is needed.

```bash
brew install --cask peaz/tap/displaymodemenu
```

- Requires macOS 13 (Ventura) or later.
- Uninstalling with `brew uninstall --zap --cask displaymodemenu` also removes its preferences.
- Source and issues: [peaz/displaymodemenu](https://github.com/peaz/displaymodemenu)

## Support

Problems with a specific tool belong in that tool's repository (linked above). For problems with the tap itself, such as install failures or outdated versions, [open an issue](https://github.com/peaz/homebrew-tap/issues) here.

## License

The tap is MIT licensed. Each tool may have its own license; check its repository.
