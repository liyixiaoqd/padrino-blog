# Minimal sample configuration file for Unicorn (not Rack) when used
# with daemonization (unicorn -D) started in your working directory.
#
# See https://bogomips.org/unicorn/Unicorn/Configurator.html for complete
# documentation.
# See also https://bogomips.org/unicorn/examples/unicorn.conf.rb for
# a more verbose configuration using more features.

root_path = File.expand_path '../', File.dirname(__FILE__)  
log_file = root_path + '/log/unicorn.log'  
err_log_file  = root_path + '/log/unicorn_error.log'  
pid_file = root_path + '/tmp/pids/unicorn.pid'

listen 2007 # by default Unicorn listens on port 8080
worker_processes 2 # this should be >= nr_cpus
pid pid_file
stderr_path err_log_file
stdout_path log_file
