# frozen_string_literal: true

class ActiveStorage::ActiveRecord::VariantRecord < ActiveStorage::ActiveRecord::Record
  self.table_name = "active_storage_variant_records"

  belongs_to :blob, class_name: "ActiveStorage::Blob"
  has_one_attached :image
end

ActiveSupport.run_load_hooks :active_storage_variant_record, ActiveStorage::ActiveRecord::VariantRecord
