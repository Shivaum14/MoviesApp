require 'test_helper'

class ReviewTest < ActiveSupport::TestCase

    test 'should not save invalid review' do
        review = Review.new

        review.save
        refute review.valid?             
    end
end
