cask "semafor" do
  version "1.0.0"
  sha256 :no_check # nahraď skutečným SHA256 po prvním releasu

  url "https://github.com/rnavratil/semafor/releases/download/v#{version}/Semafor.app.zip"
  name "Semafor"
  desc "Menu bar status indicator with CLI support"
  homepage "https://github.com/rnavratil/semafor"

  depends_on macos: ">= :sonoma"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Semafor.app"

  # Symlink CLI nástroje z app bundle do $HOMEBREW_PREFIX/bin
  binary "#{appdir}/Semafor.app/Contents/Resources/semafor"

  zap trash: [
    "~/.semafor",
    "~/Library/Preferences/com.rnavratil.semafor.plist",
    "~/Library/Application Support/Semafor",
  ]
end
