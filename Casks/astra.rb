cask "astra" do
  version "0.1.16"
  sha256 "05d8af4e96b9810adfed0dd089983f24f6382143a980d4ac6c578afec1b6b48b"

  url "https://github.com/skylight-f/zeus/releases/download/skylight-v#{version}/Astra-#{version}-arm64.dmg"
  name "Astra"
  desc "Local-first AI development workbench"
  homepage "https://github.com/skylight-f/zeus"

  depends_on macos: :ventura
  depends_on arch: :arm64

  app "Astra.app"

  uninstall quit: "dev.hypha.zeus"

  zap trash: [
    "~/Library/Application Support/Zeus",
    "~/Library/Caches/dev.hypha.zeus",
    "~/Library/Logs/Zeus",
    "~/Library/Preferences/dev.hypha.zeus.plist",
  ]
end
