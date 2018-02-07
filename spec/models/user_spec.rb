require 'rails_helper'

RSpec.describe User do
	 
	context 'check validity of name' do

		let(:user)  { build(:user, name: 'pinky rout') }
    let(:user1) { build(:user, name: '12pinky') }
    let(:user2) { build(:user, name: '_pinky') }
    let(:user3) { build(:user, name: 'p') }
    let(:user4) { build(:user, name: 'pinkyroutbv egbs brejgbjbjkg bnjmsbnsjgrtkhb grejhgb') }
    let(:user5) { build(:user, name: 'pinkyrout') }
		
		it 'validates name with only alphabets' do
	  expect(user.valid?).to eq(true)
	  end

    it 'validates name with only alphabets' do
      expect(user.valid?).to eq(true)
    end

    it 'validates name starting with a number' do
      expect(user1.valid?).to eq(false)
      expect(user1.errors['name']).to eq(["name cannot start with a number or underscore"])
    end

    it 'validates name starting with underscore'  do
    	expect(user2.valid?).to eq(false)
    	expect(user2.errors['name']).to eq(["name cannot start with a number or underscore"])
    end
    
    it 'validates name with length less than 2'  do
    	expect(user2.valid?).to eq(false)
    	expect(user2.errors['name']).to eq([""])
    end
    
    it 'validates name with length more than 20' do
    	expect(user3.valid?).to eq(false)
    	expect(user3.errors['name']).to eq([""])
    end
      
    it 'valiadtes dublicate name' do 
      expect(user4.valid?).to eq(false)
      expect(user4.errors['name'].to eq([""]))
    end   	
	
  end

end
	
