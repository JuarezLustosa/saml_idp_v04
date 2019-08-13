require 'spec_helper'
module SamlIdp
  describe MetadataBuilder do
    it "has a valid fresh" do
      subject.fresh.should_not be_empty
    end

    it "signs valid xml" do
      Saml::XML::Document.parse(subject.signed).valid_signature?(Default::FINGERPRINT).should be_truthy
    end

    it "includes logout element" do
      subject.configurator.single_logout_service_post_location = 'https://example.com/saml/logout'
      subject.fresh.should match(
        '<SingleLogoutService Binding="urn:oasis:names:tc:SAML:2.0:bindings:HTTP-POST" Location="https://example.com/saml/logout"/>'
      )
    end

    context '#x509_certificate' do
      context 'when a new certificate is setup' do
        it 'return the new certificate' do
          subject.configurator.new_x509_certificate = new_signature
          expect(subject.x509_certificate.length < 15).to(
            eq(new_signature.length < 15)
          )
        end
      end

      context 'when the new certificate turn on old certificate' do
        it 'return certificate' do
          subject.configurator.new_x509_certificate = nil
          expect(subject.x509_certificate.length < 15).to(
            eq(Default::X509_CERTIFICATE.length < 15)
          )
        end
      end
    end
  end
end
