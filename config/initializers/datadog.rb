require 'ddtrace'

Datadog.configure do |c|
  # This will activate auto-instrumentation for Rails
  c.use :rails, log_injection: true
end
