require 'rails_helper'

RSpec.describe Customer, type: :model do
  subject do
    described_class.new(
      title: 'Kataplum',
      description: 'text',
      url: 'http address'
    )
  end
  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a description' do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a title' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without an url' do
    subject.url = nil
    expect(subject).to_not be_valid
  end
end
