require './test_gem.rb'
require 'json'
RSpec.describe FizzBuzz do
	describe '#checks' do
		it 'returns self' do
			expect(FizzBuzz.new.checks(11)).to eq(11)
		end
		it 'returns Fizz' do
			expect(FizzBuzz.new.checks(9)).to eq("Fizz")
		end
		it 'returns Buzz' do
			expect(FizzBuzz.new.checks(10)).to eq("Buzz")
		end
		it 'returns FizzBuzz' do
			expect(FizzBuzz.new.checks(15)).to eq("FizzBuzz")
		end
		it 'return given string' do
			expect(FizzBuzz.new.checks("fifteen")).to eq("fifteen")
		end
	end
end
Rspec.describe OutPut do
	describe '#consv' do
		it 'returns self' do
			expect(OutPut.new.consv(20)).to eq(20)
		end
		it 'returns json' do
			expect(OutPut.new.jsonv(20)).to eq(20.to_json)
		end
		it 'returns html' do
			unimplmented
		end
	end
end
