module ForceLeads
  class OauthCredential

    def initialize(credentials = {})
      raise ArgumentError.new 'Please specify a hash of attributes' if credentials.nil? || credentials.empty? || !credentials.has_key?(:instance_url)
      @credentials = credentials
    end

    def build_client
      Restforce.new(@credentials)
    end
  end
end