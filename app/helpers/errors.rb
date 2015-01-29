def error_msg(msg)
  # "inside error message"
  session[:error] = msg
end

def display_error
  error = session[:error]
  session[:error] = nil
  error
end

