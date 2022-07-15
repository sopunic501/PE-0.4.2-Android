function onCreate()
	-- background shit
	makeLuaSprite('BG', 'druggedbackground', 0, 0);
	setScrollFactor('BG', 1, 1);
	
	makeLuaSprite('BGS', 'druggedsilion', 800, 400);
	setScrollFactor('BGS', 1, 1);

	addLuaSprite('BG', false);
	addLuaSprite('BGS', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end