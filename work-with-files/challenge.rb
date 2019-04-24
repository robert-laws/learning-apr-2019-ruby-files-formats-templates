require_relative 'lib/controller'

# Challenge - List Maker

# interactive program for managing a list saved in a file
# finds list file if it exists or creates new file
# user can view current list
# add to the end of the list
# edit item in the list

this_dir = File.dirname(__FILE__)
txt_file = File.expand_path(File.join(this_dir, '..', "files"))
APP_ROOT = txt_file



controller = ListMaker::Controller.new
puts controller.do_action('view', '')
# controller.launch!