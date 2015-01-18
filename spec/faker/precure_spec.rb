describe Faker::Precure do
  it 'has a version number' do
    expect(Faker::Precure::VERSION).not_to be nil
  end

  describe "#human_name" do
    subject{ Faker::Precure.human_name }

    let(:all_human_names){ ::Precure.all_stars.map(&:human_name) }

    it{ should_not be_blank }
    it{ should be_an_element_of all_human_names }
  end

  describe "#precure_name" do
    subject{ Faker::Precure.precure_name }

    let(:all_precure_names){ ::Precure.all_stars.map(&:precure_name) }

    it{ should_not be_blank }
    it{ should be_an_element_of all_precure_names }
  end

  describe "#transform_message" do
    subject{ Faker::Precure.transform_message }

    let(:all_transform_messages){ ::Precure.all_stars.map(&:transform_message) }

    it{ should_not be_blank }
    it{ should be_an_element_of all_transform_messages }
  end

  describe "#user_name" do
    subject{ Faker::Precure.user_name }

    let(:all_user_names){ ::Rubicure::Girl.uniq_names.map(&:to_s) }

    it{ should_not be_blank }
    it{ should be_an_element_of all_user_names }
    it{ should match /^[0-9a-z_]+$/ }
  end

  describe "#title" do
    subject{ Faker::Precure.title }

    let(:all_titles){ ::Rubicure.core.map(&:title) }

    it{ should_not be_blank }
    it{ should be_an_element_of all_titles }
  end

  describe "#cast_name" do
    subject{ Faker::Precure.cast_name }

    let(:all_cast_names){ ::Precure.all_stars.map(&:cast_name) }

    it{ should_not be_blank }
    it{ should be_an_element_of all_cast_names }
  end
end
