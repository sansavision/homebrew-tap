# Homebrew formula for the Hush CLI.
#
#   brew tap sansavision/tap        # -> github.com/sansavision/homebrew-tap
#   brew install hush               # (or: brew install sansavision/tap/hush)
#
# Downloads the SAME prebuilt macOS binaries the curl installer serves from
# tap.tritonscaler.com, verifies the sha256, and installs them as `hush`.
class Hush < Formula
  desc "Hush secrets CLI — login, fetch secrets, and run with injected env"
  homepage "https://hush.tritonscaler.com"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://tap.tritonscaler.com/bin/0.1.1/hush-darwin-arm64"
      sha256 "faa8f742add7e0043bf1ea4b1c20729c19c957eeaf625d92a9400f0b2ca7489a"
    end
    on_intel do
      url "https://tap.tritonscaler.com/bin/0.1.1/hush-darwin-x86_64"
      sha256 "dfda7ad7224bffdbf587bd363075816d9a537539904b4b2ebf60c1fa67a15907"
    end
  end

  on_linux do
    on_intel do
      url "https://tap.tritonscaler.com/bin/0.1.1/hush-linux-x86_64"
      sha256 "24b600ae87e5051cd831aaad118c1af5d19aacf5c2fecee96e7f13b153ae1e12"
    end
  end

  def install
    bin.install Dir["*"].find { |f| File.file?(f) } => "hush"
  end

  test do
    assert_match "hush", shell_output("#{bin}/hush --version")
  end
end
