require "faker/precure/version"

module Faker
  module Precure
    require "rubicure"

    # @return [String]
    def self.human_name
      sample_girl.human_name
    end

    # @return [String]
    def self.precure_name
      sample_girl.precure_name
    end

    # @return [String]
    def self.transform_message
      ::Precure.all.map(&:transform_message).compact.sample
    end

    # @return [String]
    def self.cast_name
      sample_girl.cast_name
    end

    # @return [String]
    def self.user_name
      ::Rubicure::Girl.uniq_names.sample.to_s
    end

    # @return [String]
    def self.title
      sample_series.title
    end

    private
      def self.sample_girl
        ::Precure.all.sample
      end

      def self.sample_series
        ::Rubicure.core.to_a.sample
      end
  end
end
