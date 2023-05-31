install:
	bundle install --path 'vendor/bundle'

run:
	bundle exec ruby -W0 connect_spike.rb
