cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.17"
  sha256 arm:   "b21cfeaa663177bfa17db7b8155cf340b4daaf56e55f538a253e03887712b780",
         intel: "3e8c9ab7f45fcd22a9235a5f911b98fcd598dc081298e30ec4717675f3a60850"

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
