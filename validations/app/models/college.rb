class College < ActiveRecord::Base
	before_validation :ensure_name_valid
	validates :name, :presence=>true, :length=>{:minimum=> 6}
	
	validates :email,:presence=>true,:uniqueness=>{:case_sensitive=>false}
    validates :phone, :presence=>true,:uniqueness=>true, :length=>{:in=>6..20}

    protected
    def ensure_name_valid
      name="prmsh"
    end
end