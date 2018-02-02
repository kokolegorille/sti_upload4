# StiUpload4

This project rocks and uses MIT-LICENSE.

To prepare database inside engine, use
* bundle exec rake app:db:migrate
* bundle exec rake app:db:test:prepare

To prepare main application, you need to add engine migrations with 
* rake sti_upload4_engine:install:migrations

Updated February 2018, fix security warnings with paperclip and older version of Rails.