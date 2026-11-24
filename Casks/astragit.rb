cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.32"
  sha256 arm:   "d1bca0abe67531245c26d5f563689dfd22cdbc2ae312a9d9ef9897683d17be9a",
         intel: "a6920a7c397a1c908427eefe367889f61dc87a682ab1adaf86c031a4f47750d4"

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
