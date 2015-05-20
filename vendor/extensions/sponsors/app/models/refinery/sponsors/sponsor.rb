module Refinery
  module Sponsors
    class Sponsor < Refinery::Core::BaseModel
      self.table_name = 'refinery_sponsors'

      attr_accessible :name, :sponsor_website, :sponsor_image_id, :position

      validates :name, :presence => true, :uniqueness => true

      belongs_to :sponsor_image, :class_name => '::Refinery::Image'
    end
  end
end
