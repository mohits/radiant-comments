require File.dirname(__FILE__) + '/../spec_helper'

describe Page do
  dataset :users_and_pages, :comments
  
  describe "r:comments:field:spam_answer_tag" do
    it "should render the spam_answer input and the valid_spam_answer hidden input" do
      pages(:home).should render("<r:comments:field:spam_answer_tag answer='no spam' />").as('<input type="text" id="comment_spam_answer" name="comment[spam_answer]" value=""  /><input type="hidden" name="comment[valid_spam_answer]" value="no spam" />')
    end
  end
end