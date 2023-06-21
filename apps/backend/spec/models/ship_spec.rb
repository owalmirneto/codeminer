# frozen_string_literal: true

describe Ship do
  subject(:ship) { build(:ship) }

  describe "validations" do
    it { is_expected.to validate_numericality_of(:fuel_level).only_integer.is_greater_than(0) }
    it { is_expected.to validate_numericality_of(:fuel_capacity).only_integer.is_greater_than(0) }
    it { is_expected.to validate_numericality_of(:weight_capacity).only_integer.is_greater_than(0) }

    it { is_expected.to be_valid }

    context "when ship valid" do
      subject(:ship) { build(:blank_ship) }

      it { is_expected.to be_invalid }
    end
  end
end
