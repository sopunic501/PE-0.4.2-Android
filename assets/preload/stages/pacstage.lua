function onCreate()
makeLuaSprite('bg1', 'frontwallspacman', 400, 301.15);
    setScrollFactor('bg1', 1, 1);
    addLuaSprite('bg1', true);
    
    makeLuaSprite('bg2', 'stagepacman', 100, 400);
    addLuaSprite('bg2', false);
    
    makeLuaSprite('b22', 'portable', 100, 400);
    addLuaSprite('b22', false);
	setProperty('b22.visible', false);
    
   makeLuaSprite('bg3', 'bolaspacman', 1510, 1400);
   setScrollFactor('bg3', 1, 1);
   addLuaSprite('bg3', true);
   
makeAnimatedLuaSprite('bg', 'BG', 1000, 380);
   addAnimationByPrefix('bg','idle', 'JON', 100, true)
    setProperty('bg.visible', false);
   
makeAnimatedLuaSprite('par', 'PAREDES', 2800, 800);
   addAnimationByPrefix('par','idle', 'JON', 150, true);
   setProperty('par.visible', false);
   
   makeAnimatedLuaSprite('bolas', 'BOLAS', 1000, 1180);
   scaleObject('bolas', 0.65, 0.65);
    addAnimationByPrefix('bolas','idle', 'JON', 150, true);
    setProperty('bolas.visible', false);
    
	addLuaSprite('bg', false);
	addLuaSprite('par', true);
	addLuaSprite('bolas', true);
	
	--no longer needed lmao but im keeping it here just in case -ekical
end
function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'A' then
			setProperty('bg.visible', true);
			setProperty('par.visible', true);
			setProperty('bolas.visible', true);
			setProperty('bg2.visible', false);
			setProperty('bg3.visible', false);
			setProperty('bg1.visible', false);
		end

		if value1 == 'FIN' then
	        setProperty('b22.visible', true);
			setProperty('bg.visible', false);
			setProperty('par.visible', false);
			setProperty('bolas.visible', false);
		end
	end
end