module ParasutRubySdk
  module REST
    class Transaction < BaseRequest

      def initialize(*args)
        super(*args)
        @resource = 'transactions'
      end

      def get( id, params = {} )
        prepare_request( Util::RequestType::GET, "#{@resource}/#{id}", params)
      end

      def delete( id )
        prepare_request( Util::RequestType::DELETE, "#{@resource}/#{id}")
      end

    end
  end
end
