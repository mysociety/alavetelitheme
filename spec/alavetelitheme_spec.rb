# If defined, ALAVETELI_TEST_THEME will be loaded in config/initializers/theme_loader
ALAVETELI_TEST_THEME = 'alavetelitheme'
require File.expand_path(File.join(File.dirname(__FILE__),'..','..','..','..','spec','spec_helper'))

describe "testing the truth" do

    it 'should be true' do
        assert true
    end

end
