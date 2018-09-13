def the_method; other_method; end
def other_method; end
def start_trace
  trace =
  TracePoint.new(:call) { |tp| p [tp.path, tp.lineno, tp.event, tp.method_id] }
  trace.enable
  yield
  trace.disable
end
start_trace { the_method }