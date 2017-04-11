module Slackistrano
  module Messaging
    module Helpers

      def icon_url
        'https://raw.githubusercontent.com/phallstrom/slackistrano/master/images/slackistrano.png'
      end

      def icon_emoji
        nil
      end

      def username
        'R2-D2'
      end

      def deployer
        ENV['USER'] || ENV['USERNAME']
      end

      def branch
        fetch(:branch)
      end

      def application
        fetch(:application)
      end

      def stage(default = 'an unknown stage')
        fetch(:stage, default)
      end

      #
      # Return the elapsed running time as a string.
      #
      # Examples: 21-18:26:30, 15:28:37, 01:14
      #
      def elapsed_time
        `ps -p #{$$} -o etime=`.strip
      end

    end
  end
end
