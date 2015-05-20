module Refinery
  module Sponsors
    module Admin
      class SponsorsController < ::Refinery::AdminController

        crudify :'refinery/sponsors/sponsor',
                :title_attribute => 'name',
                :xhr_paging => true

      end
    end
  end
end
