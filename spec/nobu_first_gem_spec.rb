# frozen_string_literal: true

RSpec.describe NobuFirstGem do
  it "has a version number" do
    expect(NobuFirstGem::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(NobuFirstGem.greet).to eq("Hello world")
  end
end
