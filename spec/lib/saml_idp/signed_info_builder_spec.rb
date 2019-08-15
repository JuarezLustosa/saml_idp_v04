require 'spec_helper'
module SamlIdp
  describe SignedInfoBuilder do
    let(:reference_id) { "abc" }
    let(:digest) { "em8csGAWynywpe8S4nN64o56/4DosXi2XWMY6RJ6YfA=" }
    let(:algorithm) { :sha256 }
    let(:audience_uri) { '' }
    subject { described_class.new(
      reference_id,
      digest,
      algorithm,
      audience_uri
    ) }

    before do
      Time.stub now: Time.parse("Jul 31 2013")
    end

    it "builds a legit raw XML file" do
      subject.raw.should == "<ds:SignedInfo xmlns:ds=\"http://www.w3.org/2000/09/xmldsig#\"><ds:CanonicalizationMethod Algorithm=\"http://www.w3.org/2001/10/xml-exc-c14n#\"></ds:CanonicalizationMethod><ds:SignatureMethod Algorithm=\"http://www.w3.org/2001/04/xmldsig-more#rsa-sha256\"></ds:SignatureMethod><ds:Reference URI=\"#_abc\"><ds:Transforms><ds:Transform Algorithm=\"http://www.w3.org/2000/09/xmldsig#enveloped-signature\"></ds:Transform><ds:Transform Algorithm=\"http://www.w3.org/2001/10/xml-exc-c14n#\"></ds:Transform></ds:Transforms><ds:DigestMethod Algorithm=\"http://www.w3.org/2001/04/xmlenc#sha256\"></ds:DigestMethod><ds:DigestValue>em8csGAWynywpe8S4nN64o56/4DosXi2XWMY6RJ6YfA=</ds:DigestValue></ds:Reference></ds:SignedInfo>"
    end

    context '#signed' do
      context 'when provider has a new certificate' do
        before { allow_any_instance_of(ServiceProvider).to receive(:new_cert?).and_return true }

        it 'return a different signed encoded' do
          subject.signed.should == "sjkwhREoe/2b+WmWeh8z0jCS0Yob+cR5oicDsmsVSUXzsHhfmax0PAvUTxrR51Nb6JDMrNFkJqb2k+qTB3RR/Bs3uRnbIaDaBYFBT90/+dXK1k3/3dibWQcae/dqSGg/EPFGvb2ynVgWNUdPJb09KhVMNN9DdMPYFZx33WgSW74="
        end
      end

      context 'when provicer do not have a new certificates' do
        it 'return signed encoded' do
          subject.signed.should == "hKLeWLRgatHcV6N5Fc8aKveqNp6Y/J4m2WSYp0awGFtsCTa/2nab32wI3du+3kuuIy59EDKeUhHVxEfyhoHUo6xTZuO2N7XcTpSonuZ/CB3WjozC2Q/9elss3z1rOC3154v5pW4puirLPRoG+Pwi8SmptxNRHczr6NvmfYmmGfo="
        end
      end
    end
  end
end
