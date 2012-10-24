require 'spec_helper'

describe "Workouts" do
  describe "GET /workouts" do
    it "works!" do
      visit workouts_path
      click_link "New Workout"
      fill_in "Name", with: "name"
      fill_in "Activity", with: "run"
      click_button "Create Workout"
    
      error_message = "Minutes can't be blank"
      page.should have_content(error_message)
    end
  end
end
