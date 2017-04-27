$ ->
  Tic =
    data:
      turns: 0
      x: {}
      o: {}
      gameOver: false

    #Insert initialization code here

    setPlayerNames: ->
      @data.player1 = $("input[name='pl-1']").val()
      @data.player2 = $("input[name='pl-2']").val()

    getPlayerName: (symbol) ->
      name = if @data.rolep1 == symbol then @data.player1 else @data.player2
      return name

    prepareBoard: ->
      $("form").hide()
      $("#board").empty()
      $(".alerts").removeClass("welcome").show()
      $(".alerts").text("#{@getPlayerName("X")} Goes First")
      $("<div>", {class: "square"}).appendTo("#board") for square in [0..8]

    #Insert function to decide who goes first

    updateNotifications: ->
      $(".notifications").empty().show()

    addNotification: (msg) ->
      $(".notifications").append($("<p>", {text: msg}))

    #Insert script to make moves


    #Insert checkEnd here!


    checkField: (field, storageVar) ->
      if $(".square").eq(field).hasClass("x")
        if @data.x[storageVar]? then @data.x[storageVar]++ else @data.x[storageVar] = 1
      else if $(".square").eq(field).hasClass("o")
        if @data.o[storageVar]? then @data.o[storageVar]++ else @data.o[storageVar] = 1

    checkWin: ->
      for key,value of @data.x
        if value >= 3
          localStorage.x++
          $('#won').text("#{@getPlayerName("X")} wins")
          modal.style.display = "block";
          @data.gameOver = true
          @checkTie("X")
      for key,value of @data.o
        if value >= 3
          localStorage.o++
          $('#won').text("#{@getPlayerName("O")} wins")
          modal.style.display = "block";
          @data.gameOver = true
          @checkTie("O")

    checkTie: (winner) ->
      @data.turns = 0
      @data.x = {}
      @data.o = {}
      @data.gameOver = yes
      if winner is "none"
        $('#won').text("It's a tie!")
        modal.style.display = "block";
      @updateNotifications()
      $(".notifications").append "<a class='play-again'>Play Again?</a>"

    emptyStorageVar: (storageVar) ->
      @data.x[storageVar] = null
      @data.o[storageVar] = null

    showAlert: (msg) ->
      $(".alerts").text(msg).slideDown()

  $("form").on "submit", (evt) ->
    evt.preventDefault()
    $inputs = $("input[type='text']")

    namesNotEntered = $inputs.filter(->
      return @value.trim() isnt ""
    ).length isnt 2

    namesIndentical = $inputs[0].value is $inputs[1].value

    if namesNotEntered then Tic.showAlert("Player names cannot be empty")
    else if namesIndentical then Tic.showAlert("Player names cannot be identical")
    else Tic.initialize()

  $("body").on("click",".play-again", -> Tic.initialize())

  #Insert modal content here
