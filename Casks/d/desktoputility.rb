cask "desktoputility" do
  version "5.3.5"
  sha256 :no_check

  url "https://sweetpproductions.com/products/desktoputility/DesktopUtility.dmg"
  name "DesktopUtility"
  desc "Quick access to useful system tasks"
  homepage "https://sweetpproductions.com/"

  livecheck do
    url "https://sweetpproductions.com/products/desktoputility/updates.htm"
    regex(/<h\d+>\s*(\d+(?:\.\d+)+)\s*</i)
  end

  depends_on macos: ">= :big_sur"

  app "DesktopUtility.app"

  zap trash: [
    "~/Library/Application Scripts/com.sweetpproductions.DesktopUtility",
    "~/Library/Containers/com.sweetpproductions.DesktopUtility",
  ]
end
