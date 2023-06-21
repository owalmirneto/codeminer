# frozen_string_literal: true

describe Pilot do
  subject(:pilot) { build(:pilot) }

  describe "validations" do
    it { is_expected.to validate_presence_of(:certification) }
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_presence_of(:age) }
    it { is_expected.to validate_presence_of(:credits) }

    it { is_expected.to be_valid }

    context "when certification valid" do
      subject(:pilot) { build(:invalid_pilot) }

      it { is_expected.to be_invalid }
    end
  end
end
