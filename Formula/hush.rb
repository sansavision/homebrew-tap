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
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://tap.tritonscaler.com/bin/0.1.0/hush-darwin-arm64"
      sha256 "af16970f08a763cd15b2cadd0a8296d7194a87bc70138d15df76eb7768e55525"
    end
    on_intel do
      url "https://tap.tritonscaler.com/bin/0.1.0/hush-darwin-x86_64"
      sha256 "c1ff5647b99d2f87b7950f3385c8892dc3ed66db824b1e0ff182e31f9b1331b0"
    end
  end

  on_linux do
    on_intel do
      url "https://tap.tritonscaler.com/bin/0.1.0/hush-linux-x86_64"
      sha256 "88f6781094345bfe74ab58445161f76e6ec70a09681bd5969db494873a7d5366"
    end
  end

  def install
    bin.install Dir["*"].find { |f| File.file?(f) } => "hush"
  end

  test do
    assert_match "hush", shell_output("#{bin}/hush --version")
  end
end
