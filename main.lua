------VARIABLE------
------TABLEAU------
local backGroudn = {
    x = 200,
    y = 2,
    y2 = -594,
    larg = 400,
    haut = 596,
    speed = 40,
    img = love.graphics.newImage("images/background.png"),
    img2 = love.graphics.newImage("images/background2.png")
}


------FONCTION LOAD------
------FONCTION UPDATE------
------FONCTION KEYPRESSED------
------FONCTION MOUSEPRESSED------
------FONCTION UTILE------








-----LOAD----- : ACTION DU JEU AU DEMARAGE
function love.load()

end

-----UPDATE----- : ACTION DU JEU A CHAQUE FRAME  
function love.update(dt)

    backGroudn.y = backGroudn.y + backGroudn.speed * dt
    backGroudn.y2 = backGroudn.y2 + backGroudn.speed * dt
    if backGroudn.y > love.graphics.getHeight() then
        backGroudn.y = -backGroudn.haut + 2
        backGroudn.y2 = 2
        -- Inversez les images pour les faire alterner
        backGroudn.img, backGroudn.img2 = backGroudn.img2, backGroudn.img
    end

    -----------------------------------
    if love.mouse.isDown(1) then
        print(love.mouse.getPosition())
    end
end


-----DRAW----- : DESSINE CE QUE TU VOIS A L'ECRAN
function love.draw()
    --love.graphics.setColor(1,1,1)
    --love.graphics.rectangle("line", backGroudn.x, backGroudn.y, backGroudn.larg, backGroudn.haut)
    love.graphics.draw(backGroudn.img, backGroudn.x, backGroudn.y, 0, backGroudn.larg / backGroudn.img:getWidth(), backGroudn.haut /
            backGroudn.img:getHeight(), 0, 0)
    --love.graphics.rectangle("line", backGroudn.x, backGroudn.y2, backGroudn.larg, backGroudn.haut)
    love.graphics.draw(backGroudn.img2, backGroudn.x, backGroudn.y2, 0, backGroudn.larg / backGroudn.img2:getWidth(), backGroudn.haut /
            backGroudn.img2:getHeight(), 0, 0)
end



-----KEYPRESSED----- : ACTION DU JOUEUR CLAVIER
function love.keypressed(key)
    print(key)
end

-----MOUSEPRESSED----- : ACTION DU JOUEUR SOURIS
function love.mousepressed()
end
























