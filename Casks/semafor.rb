cask "semafor" do
  version "1.0.0"
  sha256 "a3fbb87a7b36e71d3ff7b7262d81c63ee81589fba8ca79ed2e9c7dcdeaa1d5e6"

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
