module Lita
  module Handlers
    class Redis < Handler
      route /^redis /, :send, command: true, restrict_to: :admins, help: {'redis COMMAND [ARG ...]' => 'Sends a COMMAND to Redis with ARG.'}

      def send(response)
        command, *args = response.args

        ret = Lita.redis.__send__(command, *args)

        response.reply ret.inspect
      rescue => e
        response.reply e.message
      end
    end

    Lita.register_handler Redis
  end
end
