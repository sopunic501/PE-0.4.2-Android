function onCreate()
	-- background shit
	makeLuaSprite('front', 'moon', -400, 100);
	setScrollFactor('front', 1, 1);
	
	makeLuaSprite('sky', 'space', -200, -500);
	setScrollFactor('sky', 1, 0.7);

	addLuaSprite('sky', false);
	addLuaSprite('front', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end