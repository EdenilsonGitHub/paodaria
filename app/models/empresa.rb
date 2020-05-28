class Empresa < ActiveRecord::Base
    self.table_name = 'table_empresas'

    include Paperclip::Glue

    has_attached_file :logo, styles: { medium: "300x300>", thumb: "100x100>" }
    validates_attachment_content_type :logo, content_type: /\Aimage\/.*\z/

end 