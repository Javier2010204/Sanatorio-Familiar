# == Schema Information
#
# Table name: patients
#
#  id         :integer          not null, primary key
#  code       :string
#  name       :string
#  last_name  :string
#  birthdate  :date
#  phone      :string
#  allergies  :text
#  manager    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  sex        :integer
#  status     :string
#  email      :string
#  dpi        :string
#  nit        :string
#

require 'test_helper'

class PatientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
