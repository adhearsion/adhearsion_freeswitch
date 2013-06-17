module AdhearsionFreeswitch
  class Plugin < Adhearsion::Plugin
    # Actions to perform when the plugin is loaded
    #
    init :adhearsion_freeswitch do
      logger.warn "AdhearsionFreeswitch has been loaded"
    end

    # Basic configuration for the plugin
    #
    config :adhearsion_freeswitch do
      greeting "Hello", :desc => "What to use to greet users"
    end

    # Defining a Rake task is easy
    # The following can be invoked with:
    #   rake plugin_demo:info
    #
    tasks do
      namespace :adhearsion_freeswitch do
        desc "Prints the PluginTemplate information"
        task :info do
          STDOUT.puts "AdhearsionFreeswitch plugin v. #{VERSION}"
        end
      end
    end

  end
end
