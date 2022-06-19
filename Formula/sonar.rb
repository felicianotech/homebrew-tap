# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sonar < Formula
  desc "A Docker utility."
  homepage "https://github.com/felicianotech/sonar"
  version "0.18.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felicianotech/sonar/releases/download/v0.18.1/sonar-v0.18.1-macos-arm64.tar.gz"
      sha256 "73d23a97a3c469a1ed746d77c0982c53a52d345066e1f2ea5e295e6ab7892300"

      def install
        bin.install "sonar"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/felicianotech/sonar/releases/download/v0.18.1/sonar-v0.18.1-macos-amd64.tar.gz"
      sha256 "e77666592c5b8e50f59a2784768a197159cf49af6c7e5da904c29304082e248c"

      def install
        bin.install "sonar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/felicianotech/sonar/releases/download/v0.18.1/sonar-v0.18.1-linux-arm64.tar.gz"
      sha256 "cff1dcd5724a294e5fa939d78a25151be59eea061962dce8ebecd784381bb3b8"

      def install
        bin.install "sonar"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/felicianotech/sonar/releases/download/v0.18.1/sonar-v0.18.1-linux-amd64.tar.gz"
      sha256 "3aac13b280edc8c8697a7a9b088054b89df58ac9e67f654d00895b9f8740b803"

      def install
        bin.install "sonar"
      end
    end
  end

  test do
    system "#{bin}/sonar", "help"
  end
end
