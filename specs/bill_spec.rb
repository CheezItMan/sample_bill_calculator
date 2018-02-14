# bill_spec.rb

require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/bill'

Minitest::Reporters.use!

describe "Bill" do

  before do
    @bill = Bill.new([2.4, 5.7, 10.1])
  end

  it "can be created" do
    # bill = Bill.new([2.4, 5.7, 10.1])
    @bill.class.must_equal Bill
    @bill.must_be_instance_of Bill
    #  2.must_equal 2.0
  end
  it "can calculate the subtotal" do
    # Arrange
    @bill = Bill.new([2.4, 5.7, 10.1])
    # Act
    subtotal = @bill.subtotal
    # Assert
    subtotal.must_equal (2.4 + 5.7 + 10.1)
  end
  it "can calculate the subtotal with negative numbers" do
    # Arrange
    bill = Bill.new([-2.4, 5.7, 10.1])
    # Act
    subtotal = bill.subtotal
    # Assert
    subtotal.must_equal (-2.4 + 5.7 + 10.1)
  end
  it "can calculate the subtotal with an empty list" do
    # Arrange
    bill = Bill.new([])
    # Act
    subtotal = bill.subtotal
    # Assert
    subtotal.must_equal "No Bill required"
  end

  it "can calculate the tax" do
    # Arrange
    @bill = Bill.new([2.4, 5.7, 10.1])
    # Act
    tax = @bill.tax
    # Assert
    tax.must_equal (@bill.subtotal * 0.08)
  end

  it "can calculate the total" do

    # Act
    total = @bill.total
    # Assert
    total.must_equal @bill.subtotal + @bill.tax
  end











#
end






##
