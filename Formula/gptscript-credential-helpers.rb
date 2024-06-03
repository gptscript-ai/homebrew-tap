# typed: false
# frozen_string_literal: true
class GptscriptCredentialHelpers < Formula
  desc "GPTScript Credential Helpers"
  homepage "https://github.com/gptscript-ai/gptscript-credential-helpers"
  version "0.1.0"

  on_macos do
    url "https://github.com/gptscript-ai/gptscript-credential-helpers/releases/download/v0.1.0/gptscript-credential-osxkeychain"
    sha256 "da4f616da146a74582ca5424afda7e1741c1f49ca1ee3dd625cce871ce6d07ca"

    def install
      bin.install "gptscript-credential-osxkeychain"
    end
  end
end
