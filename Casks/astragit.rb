cask "astragit" do
  arch arm: "arm64", intel: "x64"

  version "0.1.29"
  sha256 arm:   "d0a42c753ccc53927e068bef234d7b739a41d560c892fa2efcd4b124d136db1c",
         intel: "45dee679d1ce1c5b36aaed51301fd3271eb93c1fd357560e8681fb367a31af01"

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
