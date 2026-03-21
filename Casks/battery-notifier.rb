cask "battery-notifier" do
  version "4.1.0"
  sha256 "82cdf0cd82fc1ade9eb7970c8ec92f168aa7eb733aa716628b3fe57aa98af0b8"

  url "https://github.com/Sandip124/BatteryNotifier/releases/download/v#{version}/BatteryNotifier-osx-arm64.tar.gz"
  name "BatteryNotifier"
  desc "Cross-platform battery monitoring and notification app"
  homepage "https://github.com/Sandip124/BatteryNotifier"

  depends_on macos: ">= :ventura"

  binary "BatteryNotifier"

  zap trash: [
    "~/Library/Application Support/BatteryNotifier",
    "~/Library/LaunchAgents/com.batterynotifier.plist",
  ]
end
