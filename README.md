Raindrops Game
==============

After being started, a raindrop will fall from the top of the screen 
and will continue to fall again unless stopped by the catcher. The 
catcher will cause the raindrop to stop, the score to increase, and 
the raindrop to disappear. After 5 raindrops manage to fall to the 
ground, the player will lose and the lose screen will be displayed. 


Raindrops Steps
===============

Create a Raindrops Class

Create a Catcher Class

Create a Poison Class

Make a CheckCatcher Function in Catcher class so when
the catcher intersects with both types of raindrops, it will stop.

After a raindrop is caught, the score will increase by 2 but if 
a poisonous (green) raindrop is caught, the score will decrease by 3.

If the raindrop is caught, the raindrops will disappear. 

Bug / Issues
============

If the raindrop becomes leveled with the catcher, it sometimes will not allow 
the raindrop to be caught. The raindrop must be above or falling to the relative 
middle of the catcher or it will not be caught. 

Sometimes the Poisonous raindrop and the regular raindrop are so close together 
that it is impossible to catch one without catching the other, decreasing the score
but not increasing the death count.
