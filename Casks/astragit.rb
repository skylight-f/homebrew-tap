cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.27"
  sha256 arm:   "8321e86918cab0020c7272f16b3bcaf56c8c4731227b10e11cfb7f2195dd31e6",
         intel: "98320181581910983791dbf6516aaef3ada86a9ab6e676938164f25ae0096d95"

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
