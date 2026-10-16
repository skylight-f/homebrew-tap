cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.10"
  sha256 arm:   "f15978822c1c7b6ca711173a7b50f1623f367ea67d1a926e76c296c8ae7dcfa0",
         intel: "f72c83af3fcab65971ce948e620e50448027ee6b850044388f3d7c0fe2838787"

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
