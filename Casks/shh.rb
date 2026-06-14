cask "shh" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.2"
  sha256 arm:   "d559648065990205f5ef1af42bda84d38bc8c60bf671a9a613c045662513240d",
         intel: "bb2713a59d87fb7efd1c9d708618dda9da912e7c229769319fb5d3eeffd92d45"

  url "https://tap.tritonscaler.com/bin/#{version}/shh-darwin-#{arch}"
  name "Hush CLI (shh)"
  desc "Hush secrets CLI — login, fetch secrets, run with injected env"
  homepage "https://hush.tritonscaler.com"

  binary "shh-darwin-#{arch}", target: "shh"
end
