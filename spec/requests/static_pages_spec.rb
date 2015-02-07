require 'spec_helper'

describe "Static pages" do
  subject { page }
#  let(:base_title) { "Ruby on Rails Tutorial Sample App" } # добавлен spec/support c кодом fuii_title из хелпера вместо этой конструкции
### HOME
  describe "Home page" do
before { visit '/' }
   it { should have_content('Sample App') }
   it { should have_title(full_title('')) }
   it { should_not have_title('| Home') }
   # it "should have the content 'Sample App'" do
   # visit root_path  
   # expect(page).to have_content('Sample App')
   # end
# изменения в связи с созданием хелпера full-title
   # it "should have the full-title" do
   # visit root_path  
   #  expect(page).to have_title("#{base_title}")
   # end

   # it "should not have a custom page title 'Home'" do
   # visit root_path     
   # expect(page).not_to have_title('| Home')
 #   end
  end
### HELP
  describe "Help page" do
before { visit '/help' }
   it { should have_content('Help') }
   it { should have_title(full_title('')) }
    #  it "should have the content 'Help'" do
    #  visit help_path   
    #  expect(page).to have_content('Help')
    # end

    #  it "should have the title 'Help'" do
    #  visit help_path 
    #  expect(page).to have_title("#{base_title} | Help")
    # end
  end
### ABOUT
  describe "About page" do
before { visit '/about' }
   it { should have_content('About Us') }
   it { should have_title(full_title('')) }
   # it "should have the content 'About Us'" do
   #  visit about_path
   #   expect(page).to have_content('About Us')
   # end

   # it "should have the title 'About Us'" do
   #  visit about_path
   #   expect(page).to have_title("#{base_title} | About Us")
   # end
  end
### CONTACT
  describe "Contact page" do
before { visit '/contact' }
   it { should have_content('Contact') }
   it { should have_title(full_title('')) }
   # it "should have the content 'Contact'" do
   #  visit contact_path      
   #   expect(page).to have_content('Contact')
   # end

   # it "should have the title 'Contact'" do
   #  visit contact_path       
   #   expect(page).to have_title("#{base_title} | Contact")
   # end
  end
end
