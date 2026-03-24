cask "semafor" do
  version "1.1.2"
  sha256 "70bd911ccbfdaa6bc31feded627c7b66f5cb635914de8fa1830020da59dd4a49"

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
