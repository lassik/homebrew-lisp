cask "wraith-scheme" do
  version "2.26"
  sha256 "cfd61006ba14e3b0db0c2e254b4c396cb4bd17d896871d280b99d762452cf82e"
  url "http://jayreynoldsfreeman.com/Public/Wraith%20Scheme%20#{version}.dmg"
  name "Wraith Scheme"
  desc "R5RS Scheme implementation"
  homepage "http://jayreynoldsfreeman.com/My/Software.html"

  app "Wraith Scheme.app"

  zap trash: [
        #"~/Library/Application Support/WraithScheme"
        "~/Library/Preferences/com.JayReynoldsFreeman.WraithScheme.64.plist",
      ]
end
