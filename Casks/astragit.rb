cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.31"
  sha256 arm:   "f8fa527defc56c6fefdb561ab8c1220a4466d5364045049ea5b158155216cb61",
         intel: "44d405ac9ce7cafffb045d44018aa93d34ded7c722d0734424e2ad75fd78918c"

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
