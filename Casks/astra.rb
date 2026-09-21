cask "astra" do
  version "0.1.30"
  sha256 "fb83d8b556945acde1710a798784e6a3e7e9093f564e67fa46e44e352a0b0dc4"

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
