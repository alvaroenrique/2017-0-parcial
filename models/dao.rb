require_relative "models"

class UsuarioDAO
  def initialize(db)
    @db = db
  end
  def obtener(usuario=nil, password=nil)
    arr_usuarios = @db[:jugadores].where(:usuario=>usuario, :password=>password)
    if arr_usuarios.count == 0
      # Login incorrecto
      nil
    else
      # Login correcto
      hash = arr_usuarios.all
      hash[0]
      player = Jugador.new
      player.id = hash[0][:id]
      player.usuario = hash[0][:usuario]
      player.password = hash[0][:password]

      return player
    end
  end

end
