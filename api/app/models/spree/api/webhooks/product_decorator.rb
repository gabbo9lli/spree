module Spree
  module Api
    module Webhooks
      module ProductDecorator
        def self.prepended(base)
          def base.custom_webhook_events
            %w[product.back_in_stock product.backorderable product.discontinued product.out_of_stock]
          end

          base.after_update_commit :queue_webhooks_requests_for_product_discontinued!
        end

        private

        def queue_webhooks_requests_for_product_discontinued!
          return unless discontinue_on_previously_changed?
          return if (change = discontinue_on_previous_change).blank? || change.last.blank?

          queue_webhooks_requests!('product.discontinued')
        end
      end
    end
  end
end

Spree::Product.prepend(Spree::Api::Webhooks::ProductDecorator)

