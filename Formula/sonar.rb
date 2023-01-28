# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sonar < Formula
  desc "A Docker utility."
  homepage "https://github.com/felicianotech/sonar"
  version "0.19.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/felicianotech/sonar/releases/download/v0.19.1/sonar-v0.19.1-macos-arm64.tar.gz"
      sha256 "635497f577764d4d343be8de94368bf30b0726b6736e988e3f7b930af2af5161"

      def install
        bin.install "sonar"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/felicianotech/sonar/releases/download/v0.19.1/sonar-v0.19.1-macos-amd64.tar.gz"
      sha256 "c9f5fbfb8be38a87d6f2cdfa5bf6ce4e5196504b3234fbcbc5c39f5f13824a48"

      def install
        bin.install "sonar"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/felicianotech/sonar/releases/download/v0.19.1/sonar-v0.19.1-linux-arm64.tar.gz"
      sha256 "0c6f403b995a8d05ad781985bf19139f2fe0937aeec41cb4288f3c424c156e54"

      def install
        bin.install "sonar"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/felicianotech/sonar/releases/download/v0.19.1/sonar-v0.19.1-linux-amd64.tar.gz"
      sha256 "0e94ae21cf22f340cd755f79bb0fdb766df7ee6dcfa8ce9e16ecf20c9ff7a28c"

      def install
        bin.install "sonar"
      end
    end
  end

  test do
    system "#{bin}/sonar", "help"
  end
end
