require 'test_helper'

class ChargesControllerTest < ActionController::TestCase
  setup do
    @charge = charges(:one)
  end

  test "check list" do
    @failed   = Customer.select('firstname, lastname, amount, created_at').joins(:charge).merge(Charge.failed).order("created_at desc", "lastname asc")
    @disputed = Customer.select('firstname, lastname, amount, created_at').joins(:charge).merge(Charge.disputed).order("created_at desc", "lastname asc")
    @success  = Customer.select('firstname, lastname, amount, created_at').joins(:charge).merge(Charge.success).order("created_at desc", "lastname asc")
    
    if @failed && @disputed && @success
      assert true
    end
  end

  test "check failed count" do
    @failed = Customer.joins(:charge).merge(Charge.failed).count
    if @failed == 5
      assert true
    end
  end

  test "check disputed count" do
    @disputed = Customer.joins(:charge).merge(Charge.disputed).count
    if @disputed == 5
      assert true
    end
  end

  test "check success count" do
    @success = Customer.joins(:charge).merge(Charge.success).count
    if @success == 10
      assert true
    end
  end
end
