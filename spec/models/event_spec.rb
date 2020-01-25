# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Event, type: :model do
  context 'New event' do
    describe '#new' do
      e = Event.new
      it 'should be valid with valid data' do
        User.create(name: 'Bob')
        e.title = 'Not empty'
        e.date = Time.now + 4000
        e.creator_id = User.last.id
        expect(e.valid?).to be_truthy
      end

      it 'should have at least 5 chars on title' do
        e.title = ''
        e.date = Time.now + 4000
        expect(e.valid?).to be_falsy
      end

      it 'should have a date at least one hour from now' do
        e.title = 'Party'
        e.date = Time.now
        expect(e.valid?).to be_falsy
      end
    end
  end
end
