cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.28"
  sha256 arm:   "738adf4bc14f29044e2e75b7e69849d7cfe0ca45b63cbd77a53b37c829c8bbfd",
         intel: "817f19cf2c425028e80937dc8ce93122b4e53d65d082f2905542b110544f1ae1"

  url "https://github.com/skylight-f/AstraGit/releases/download/v#{version}/AstraGit-#{version}-#{arch}.dmg"
  name "AstraGit"
  desc "Git workbench with AI commit messages and multi-repository commits"
  homepage "https://github.com/skylight-f/AstraGit"

  depends_on macos: :ventura

  app "AstraGit.app"

  uninstall quit: "com.astragit.desktop"

  zap trash: [
    "~/Library/Application Support/AstraGit",
    "~/Library/Caches/com.astragit.desktop",
    "~/Library/Logs/AstraGit",
    "~/Library/Preferences/com.astragit.desktop.plist",
  ]
end
