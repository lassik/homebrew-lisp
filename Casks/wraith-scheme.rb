cask "wraith-scheme" do
  version "2.27"
  sha256 "6bf97c3d2932bcea6bb451cf7e0d218fb00042a6668eb3830e27edcb6b0ece47"
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
