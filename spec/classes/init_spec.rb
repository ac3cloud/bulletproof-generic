require 'spec_helper'
describe 'generic' do

  context 'with default values for all parameters' do
    it { should contain_class('generic') }
  end
end
