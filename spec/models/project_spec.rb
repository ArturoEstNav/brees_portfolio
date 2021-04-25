require 'rails_helper'

RSpec.describe Project, type: :model do
  subject do
    described_class.new(
      name: 'Kataplum',
      description: 'text',
      url: 'something'
    )
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a description' do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without an url' do
    subject.url = nil
    expect(subject).to_not be_valid
  end
end
