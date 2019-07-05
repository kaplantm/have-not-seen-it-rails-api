# needed to make active admin work with will_paginate
# Will paginate is causing this issue, should swap away from it later https://github.com/activeadmin/activeadmin/issues/5239
Kaminari.configure do |config|
  config.page_method_name = :per_page_kaminari
end

if defined?(WillPaginate)
  module WillPaginate 
    module ActiveRecord
      module RelationMethods
        def per(value = nil) per_page(value) end
        def total_count() count end
      end
    end
    module CollectionMethods
      alias_method :num_pages, :total_pages
    end
  end
end