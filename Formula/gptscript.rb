# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gptscript < Formula
  desc "GPTScript CLI"
  homepage "https://github.com/gptscript-ai/gptscript"
  version "0.5.2-rc2"

  on_macos do
    url "https://github.com/gptscript-ai/gptscript/releases/download/v0.5.2-rc2/gptscript-v0.5.2-rc2-macOS-universal.tar.gz"
    sha256 "138ac83dbbb8a7c724d6ce5d019931e44dc9b3d8715a4930e9d7393d346af86f"

    def install
      bin.install "gptscript"
      bin.install "gptscript-credential-osxkeychain"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/gptscript-ai/gptscript/releases/download/v0.5.2-rc2/gptscript-v0.5.2-rc2-linux-arm64.tar.gz"
      sha256 "aaf5e40925e2a2cb15401f0915418684eb3952a2277b1c0dcaa770cd5c23bf95"

      def install
        bin.install "gptscript"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/gptscript-ai/gptscript/releases/download/v0.5.2-rc2/gptscript-v0.5.2-rc2-linux-amd64.tar.gz"
      sha256 "1e475efdad1e2e4320537a997ba96ba6b8cefccec40c31ad4a11578d0866b5e8"

      def install
        bin.install "gptscript"
      end
    end
  end
end
