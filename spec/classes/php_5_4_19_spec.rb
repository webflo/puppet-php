require 'spec_helper'

describe "php::5_4_19" do
  let(:facts) { default_test_facts }

  it do
    should contain_php__version("5.4.19")
  end
end
