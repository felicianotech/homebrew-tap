# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Warden < Formula
  desc "Audit your git repositories based on policy."
  homepage "https://RepoWarden.com"
  version "0.1.0-alpha.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/repowarden/cli/releases/download/v0.1.0-alpha.1/warden-v0.1.0-alpha.1-macos-arm64.tar.gz"
      sha256 "74aaf3dc35a5475af62132380c2d4b76ef75944e0f3ca431836d98a824b5d302"

      def install
        bin.install "warden"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/repowarden/cli/releases/download/v0.1.0-alpha.1/warden-v0.1.0-alpha.1-macos-amd64.tar.gz"
      sha256 "746b27ac45bd37adcfa9d3847ac6f5957529414efefcb967b3de038ffe578608"

      def install
        bin.install "warden"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/repowarden/cli/releases/download/v0.1.0-alpha.1/warden-v0.1.0-alpha.1-linux-arm64.tar.gz"
      sha256 "92023a909ec02e16444bee67119326f779681735712f97d042665bf0692de7ad"

      def install
        bin.install "warden"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/repowarden/cli/releases/download/v0.1.0-alpha.1/warden-v0.1.0-alpha.1-linux-amd64.tar.gz"
      sha256 "c9524eb7aac011e7cbe9bc1198dfd613fec4c522a0db1e852d7d19e9a15bd58f"

      def install
        bin.install "warden"
      end
    end
  end

  test do
    system "#{bin}/warden", "help"
  end
end
