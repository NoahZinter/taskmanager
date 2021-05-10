require 'rails_helper'

RSpec.describe Task do
  describe 'instance methods' do
    describe '#laundry?' do
      it 'returns true if title is laundry' do
        task = Task.create!(title: 'laundry', description: 'do it')

        expect(task.laundry?).to be true
      end

      it 'returns true if description is laundry' do
        task = Task.create!(title:'washing up', description: 'laundry')

        expect(task.laundry?).to be true
      end

      it 'returns false if title is not laundry' do
        task = Task.create!(title: 'fishing', description: 'go fish')

        expect(task.laundry?).to be false
      end

      it 'returns true when title contains laundry' do
        task = Task.create!(title: 'do some laundry', description: 'do it')

        expect(task.laundry?).to be true
      end

      it 'is case insensitive in title' do
        task = Task.create!(title: 'do some LAUNdry!', description: 'do it')

        expect(task.laundry?).to be true
      end

      it 'is case insensitive in description' do
        task = Task.create!(title: 'wash', description: 'yer LaundRY!')

        expect(task.laundry?).to be true
      end
    end
  end
end