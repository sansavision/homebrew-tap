cask "hush" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.1"
  sha256 arm:   "faa8f742add7e0043bf1ea4b1c20729c19c957eeaf625d92a9400f0b2ca7489a",
         intel: "dfda7ad7224bffdbf587bd363075816d9a537539904b4b2ebf60c1fa67a15907"

  url "https://tap.tritonscaler.com/bin/#{version}/hush-darwin-#{arch}"
  name "Hush CLI"
  desc "Hush secrets CLI — login, fetch secrets, run with injected env"
  homepage "https://hush.tritonscaler.com"

  binary "hush-darwin-#{arch}", target: "hush"
end
