socket = io.connect()

maintainBackPlayerCount = ->
  counter = $('#currentPlayers')
  return unless counter.length

  socket.on 'quiz-join', (user, playerCountStr) ->
    console.log user, playerCountStr
    counter.text playerCountStr

$ ->
  maintainBackPlayerCount()