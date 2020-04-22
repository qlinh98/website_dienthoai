Rails.configuration.exceptions_app = ->(env) {
  ApplicationController.action(:error).call(env)
}
