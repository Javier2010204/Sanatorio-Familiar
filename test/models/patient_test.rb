# == Schema Information
#
# Table name: patients
#
#  id          :integer          not null, primary key
#  code        :string
#  first_name  :string
#  last_name   :string
#  birthday    :date
#  age         :integer
#  phone       :string
#  email       :string
#  dpi         :string
#  sex         :string
#  manager     :string
#  nit         :string
#  alergies    :string
#  annotations :text
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  room_id     :integer
#

require 'test_helper'

class PatientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
