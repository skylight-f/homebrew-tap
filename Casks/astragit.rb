cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.24"
  sha256 arm:   "f43e70854f698b66c5aa60c70ae71dda3de5c62da42c50989fd7a8156a9fb5fb",
         intel: "23b0f6a14713ca336ca87de871113d32648d45a6d9b28bc0820cdd72474e4756"

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
