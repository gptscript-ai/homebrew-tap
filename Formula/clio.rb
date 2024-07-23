# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Clio < Formula
  desc "Clio CLI"
  homepage "https://github.com/gptscript-ai/clio"
  version "0.1.1"

  on_macos do
    on_intel do
      url "https://github.com/gptscript-ai/clio/releases/download/v0.1.1/clio_0.1.1_darwin_amd64.tar.gz"
      sha256 "f2f60dce74270529cd98df8c91b3322279f7726e5147d2125d90a6721d04bcc3"

      def install
        bin.install "clio"
      end
    end
    on_arm do
      url "https://github.com/gptscript-ai/clio/releases/download/v0.1.1/clio_0.1.1_darwin_arm64.tar.gz"
      sha256 "1931c8c79b6abff958c81a9b455a823eb611b09d90bc9fb46fef00f747411d7d"

      def install
        bin.install "clio"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/gptscript-ai/clio/releases/download/v0.1.1/clio_0.1.1_linux_amd64.tar.gz"
        sha256 "83c7105c43e2f48307592fa3ebbd38eeb4447da7acd002b5e4a926dcfcd82c09"

        def install
          bin.install "clio"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/gptscript-ai/clio/releases/download/v0.1.1/clio_0.1.1_linux_arm64.tar.gz"
        sha256 "3f5bd16221f396ed7d67dc286b1e5a3ae87be63e70a30664857e7010043967d0"

        def install
          bin.install "clio"
        end
      end
    end
  end
end
