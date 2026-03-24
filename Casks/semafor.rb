cask "semafor" do
  version "1.1.1"
  sha256 "ef6e2de2c4a4807e700935bf93aacc49a136b174b81fbe61e11388cce05fbd74"

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
