cask "semafor" do
  version "1.1.0"
  sha256 "280cb3a6978e8bcec46d751c6ea68f923a085d7f1720b184d29be44efe6dc9af"

  url "https://github.com/rnavratil/semafor/releases/download/v#{version}/Semafor.zip"
  name "Semafor"
  desc "Menu bar status indicator with CLI support"
  homepage "https://github.com/rnavratil/semafor"

  depends_on macos: ">= :sonoma"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Semafor.app"

  # Symlink CLI tool from app bundle into $HOMEBREW_PREFIX/bin
  binary "#{appdir}/Semafor.app/Contents/Resources/semafor"

  zap trash: [
    "~/.semafor",
    "~/Library/Preferences/com.rnavratil.semafor.plist",
    "~/Library/Application Support/Semafor",
  ]
end
