cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.37"
  sha256 arm:   "2d573dca5dc10db11425abb7eef539e31380acceeb5bfa31110d47f517431c81",
         intel: "38e4ef67a03d2da9ce0b052d037eeadb0acd7babff2d0cd8b4d96b06c89ad1e5"

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
