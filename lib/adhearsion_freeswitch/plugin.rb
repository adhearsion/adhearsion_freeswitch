require 'ruby_fs'

module AdhearsionFreeswitch
  class Plugin < Adhearsion::Plugin
    init :adhearsion_freeswitch do
      logger.info "Connecting to FreeSWITCH"
      stream = RubyFS::Stream.new Adhearsion.config.punchblock.host, Adhearsion.config.punchblock.port, Adhearsion.config.punchblock.password, ->(e) {}
      stream.async.run

      $ruby_fs_stream = stream
    end
  end
end
