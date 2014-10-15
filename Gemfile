#-------        Sample App Gemfile --------------------------------------------------------------------
# -------       07.000-Gemfile.txt                                                          ---
# ---                                                                                       ---
# http://www.railstutorial.org/book
# http://ruby.railstutorial.org/chapters/updating-showing-and-deleting-users?version=4.0#code-final_gemfile
# http://yopefonic.wordpress.com/2011/06/23/multi-platform-ruby-development-with-bundler/
#
#
# Hartl publishes his gemfile on-line where he keeps it upto date.
#
#--------Sample App Gemfile --Listing 9.47------------------------------------------------------#
#  Rails 4.0 Listing 9.47                                                                       #
#        http://www.railstutorial.org/book/updating_and_deleting_users#code-final_gemfile       #
#-----------------------------------------------------------------------------------------------#
# --- https://devcenter.heroku.com/articles/ruby-versions
# --- http://bundler.io/v1.3/bundle_version.html
# --- Heroku wants the ruby version specified for the sample_app
#
# Hartl builds his Gemfile in 3 listings with Listing 9.47 the complete list of gems.
# 1) Listing 3.1: A Gemfile for the sample app.
#      http://www.railstutorial.org/book/static_pages#code-gemfile_rspec
# 2) Listing 3.32: The Gemfile needed to use PostgreSQL instead of SQLite.
#     https://www.railstutorial.org/book/static_pages#code-Gemfile_pg_gem
# 3) Listing 3.34. A Gemfile for the sample app, including Guard
#      http://www.railstutorial.org/book/static_pages#code-gemfile_guard
# 4) Listing 3.36: A Gemfile for the sample app, including Spork.
#      http://www.railstutorial.org/book/static_pages#code-gemfile_spork
# 5) Listing 9.47: The final Gemfile for the sample application.
#      http://www.railstutorial.org/book/updating_and_deleting_users#code-final_gemfile
# ----------------------------------------------------------------------------------------------
#    Listing 3.2: A Gemfile for the sample app.
#    https://www.railstutorial.org/book/static_pages#code-gemfile_sample_app
#    Listing 11.66: The final Gemfile for the sample application.
#    https://www.railstutorial.org/book/user_microposts#code-final_gemfile
#------------------------------------------------------------------------------------------------

# To make our gemfile compatible with Linux were using:
#   gem 'rb-inotify', '0.9.1'
#   gem 'libnotify',  '0.5.9'
#
# which work with rspec. Factory_girl is a fixtures library.   Spork is a Rails test preloaders
# which speeds up testing. Capybara allows testing of web pages by simulating HTTP requests as
# if someone was using a browser. Database_cleaner is used to initialize a database to a clean
# state during tests.

# +----  RUBY_PLATFORM.downcase.include ---------------------------------------------------------------+
# |  http://stackoverflow.com/questions/11565517/how-can-i-use-multiple-gemfiles-for-my-application    |
# |  http://www.dzone.com/snippets/determine-operating-system                                          |
# |  In a real-world environment some people might be developing on Linux and others on a MAC, and     |
# |  few if any using Windows.  The gemfile must be able to differentiate between environments.        |
# |  The Ruby_Platform statment can be used in the gemfile for this purpose to differentiate           |
# |  OS for specific gems.   That said, I never got it to work.                                        |
# +----------------------------------------------------------------------------------------------------+

# --- Hartl's sample_app gemfile
 source 'https://rubygems.org'
 ruby '2.1.2'
 gem 'rails', '4.2.0.beta2'

gem 'bcrypt',      '3.1.7'   # no change
gem 'faker',       '1.4.2'
gem 'carrierwave', '0.10.0'
gem 'mini_magick', '3.8.0'
gem 'fog',         '1.23.0'
gem 'will_paginate', '3.0.7'
gem 'bootstrap-will_paginate', '0.0.10'  # was '0.0.9'
gem 'bootstrap-sass', '3.2.0.0' # was  '2.3.2.0'
gem 'sass-rails',              '5.0.0.beta1'# was '4.0.1'
gem 'uglifier', '2.5.3'  # was '2.1.1'
gem 'coffee-rails', '4.0.1'   # no change
gem 'jquery-rails', '3.1.2' # was '3.0.4'
gem 'turbolinks', '2.3.0' # was '1.1.1'
gem 'jbuilder','2.1.3' # was '1.0.2'
gem 'rails-html-sanitizer',    '1.0.1'
gem 'sdoc',                    '0.4.0', group: :doc    # was '0.3.20'

#  gem 'sprockets', '2.11.0'
# gem 'bcrypt-ruby', '3.1.2'






# timezone information  --> http://rubydoc.info/gems/tzinfo/0.3.41/frames
gem 'tzinfo'


group :development, :test do
   # -- sqlite -----
   # -- In  Listing 3.32 Hartl discusses eliminating sqlite3 from development
      gem 'sqlite3', '1.3.9'
      gem 'byebug',      '3.4.0'
      gem 'web-console', '2.0.0.beta3'
      gem 'spring',      '1.1.3'

   #--------------------------------------------------------------------------------------
   # -- Test Drive Development Gems: rspec, guard, spork & capybara.
   # -- guard & rspec --
       gem 'rspec-rails', '2.13.1'
       gem 'guard-rspec', '2.5.0'
   #--------------------------------------------------------------------------------------
   # -- guard & spork ---->>   see Listing 3.3.6
       gem 'spork-rails', '4.0.0'
       gem 'guard-spork', '1.5.0'
   #--------------------------------------------------------------------------------------
   # -- Capybara ---->>  http://railscasts.com/episodes/257-request-specs-and-capybara
      gem 'capybara', '2.1.0'

   # Other TDD gems
   #---------------------------------------------------------------------------------------
    # gem 'selenium-webdriver', '2.35.1'
    # gem 'factory_girl_rails', '4.2.0'
    # gem 'cucumber-rails', '1.4.0', :require => false
    # gem 'database_cleaner', github: 'bmabey/database_cleaner'

   #--------------------------------------------------------------------------------------
   # -- childprocess controlls external programs running in the background
    #  gem 'childprocess', '0.3.6'   # ---> http://rubydoc.info/gems/childprocess/0.5.3/frames


   # Linux specific gems
   #--------------------
   # http://confluence.jetbrains.com/display/IDEADEV/Inotify+Watches+Limit
      gem 'libnotify',  '0.8.0'
      gem 'rb-inotify', '0.9.3'


end



group:production do
 # -- use Postgres --  as the database for Active Record
 gem 'pg',  '0.17.1' # was '0.15.1'

 #  rails_12factor is used by Heroku to serve static assets such as images and stylesheets.
 gem 'rails_12factor', '0.0.2'

 # Use unicorn as the app server and not the default of webrick.
   gem 'unicorn', '4.8.3'
end


#Gems used only for assets and not required
#in production environments by default.
#group :assets do
#   gem 'sass-rails', '4.0.1'
#   gem 'coffee-rails', '4.0.1'
#   gem 'uglifier', '2.1.1'
# end

#-------------------------------------------------------------------------------------------------
