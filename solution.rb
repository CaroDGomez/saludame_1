require 'sinatra'

get '/' do
  nombre = params.empty? ? 'desconocido' :
          (params['nombre'].length > 0 ? params['nombre'] : 'desconocido')
  erb :greeting, locals: {name: nombre}
end
