module ErrorCatching
  extend ActiveSupport::Concern

  included do
    rescue_from ActionController::ParameterMissing, NoMethodError, with: :show_error
    rescue_from ActiveRecord::RecordNotFound, with: :show_not_found

    def show_error(exception)
      respond_with_errors({ exception: [exception] }, status: 500)
    end

    def show_not_found(exception)
      respond_with_errors({ resource: ['not found'] }, status: 404)
    end
  end
end
