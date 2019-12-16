Rspec.describe Product, type: :model do
  describe 'Validations' do
    # validation tests/examples here

      describe Name do
        it { is_expected.to have_many(:surveys) } # shortcut for expect(subject).to
      end
      
      describe Price do
        it { is_expected.to belong_to(:user) }

      describe Quantity do
        it { is_expected.to have_many(:surveys) } # shortcut for expect(subject).to
      end
      
      describe Category do
        it { is_expected.to belong_to(:user) }

      end
    end
  end
end