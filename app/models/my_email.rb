class MyEmail < ActiveRecord::Base
	validates_presence_of :email, message: "No olvide escribir un correo electrónico por favor"
	validates_uniqueness_of :email, message: "Este correo ya fue registrado"
	validates_format_of :email, with: Devise::email_regexp
end