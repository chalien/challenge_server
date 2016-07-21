module RenderHandler

  extend ActiveSupport::Concern

  included do
    def render_json_api_serializer(resource, status = :ok, args = {})
      render json: generate_json_api_serializer(resource, args), status: status
    end

    def generate_json_api_serializer(resource, args)
      args[:include] = params[:include].split(",") if params[:include].present?
      args[:fields] = params[:fields].permit!.to_h if params[:fields].present?
      JSONAPI::Serializer.serialize(resource, args)
    end

    def respond_with_errors(exception, **options)
      errors = exception.is_a?(StandardError) && exception.errors['errors'] || exception
      render json: JSONAPI::Serializer.serialize_errors(errors), status: options[:status]
    end
  end
end
