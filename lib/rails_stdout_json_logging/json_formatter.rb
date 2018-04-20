# Custom Json Logger Formatter
class JsonFormatter < Logger::Formatter
  include ActiveSupport::TaggedLogging::Formatter

  def call(severity, time, _progname, msg)
    return if msg.blank?
    log_line = { '@timestamp': time.utc.iso8601(6),
                 level: severity.to_s }.merge(format(msg)).compact
    %(#{log_line.to_json}\n)
  end

  def format(msg)
    case msg
    when ::String
      { message: msg }
    when ::Hash
      msg
    when ::Exception
      format_exception(msg)
    else
      { message: msg.inspect }
    end
  end

  def format_exception(exception)
    {
      exception: exception.class,
      message: exception.message,
      backtrace: exception.backtrace
    }
  end
end
