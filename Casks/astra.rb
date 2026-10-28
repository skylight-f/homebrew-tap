cask "astra" do
  version "0.1.38"
  sha256 "1299ce75f1ca67fa7e469f8ccc5cbe28a7346bc7b07e4df69ffc95f8082635b1"

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
