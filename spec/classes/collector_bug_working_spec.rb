require 'spec_helper'

describe 'collector_bug::working', :type => :class do
  let(:exported_resources) do
    [
      'collector_bug::resource' => { 'mock_host' => {} }
    ]
  end
  let(:params) do { :external_host => 'mock_host' } end

  it { should contain_notify('working') }
end
