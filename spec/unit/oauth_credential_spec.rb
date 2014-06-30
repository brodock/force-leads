require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe ForceLeads::OauthCredential do

  let(:credential) { {instance_url: 'https://nax.salesforce.com'} }
  subject { ForceLeads::OauthCredential.new(credential) }

  it { should respond_to :build_client }

  describe '#build_client' do

    it 'generates a valid client' do
      subject.build_client.should be_a(Restforce::AbstractClient)
    end

  end

  describe '#initialize' do

    context 'when using valid credential' do
      it 'should initialize a valid OauthCredential object' do
        expect{ ForceLeads::OauthCredential.new(nil) }.to raise_error(ArgumentError)
        expect{ ForceLeads::OauthCredential.new(credential).to not_raise_error }
      end
    end

    context 'when credentials are invalid' do
      it 'should not accept empty credentials' do
        expect{ ForceLeads::OauthCredential.new(nil) }.to raise_error(ArgumentError)
        expect{ ForceLeads::OauthCredential.new({}) }.to raise_error(ArgumentError)
      end

      it 'should not accept missing essential credential attributes' do
        credential = { timeout: '30' }
        expect{ ForceLeads::OauthCredential.new(credential) }.to raise_error(ArgumentError)
      end
    end
  end
end
