cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.4"
  sha256 arm:   "513b37b3d768b260041cc2afa73a7a5dd21e83be707a3d1b5ef6fae9e49342dd",
         intel: "ad910f1a0825c565fe84777f39525e47c20600871b6437813b8c3cab006b70d3"

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
