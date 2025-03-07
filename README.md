# Tutorial 4

For this tutorial's latihan mandiri, I created a level with a different tilemap, which is the stone tilemap as opposed to the ground used in the tutorial.

I found it a bit annoying that I had to jump over the falling fish with limited space on the ground with no double jump, so I adjusted the collision layer and mask for the player, the platform, and the obstacle (fish in level 1 and barnacle in level 2) so that the player could collide with both the platform and the fish, but the fish would just pass through the platform.

| Scene | Collision Layer | Collision Mask |
|--- |--- | --- |
|Player | 1 | 1, 2 |
|TileMapLayer | 1 | 1 |
| FishFall/NewObstacle | 2 | 2 |

I also edited the WinScreen and the LoseScreen so that it would be clickable. If you got the WinScreen from level 1, clicking it would lead you to level 2. If you got the LoseScreen, you could click it to restart your level. I'm not sure my way of doing it is the most sophisticated way (using a TextureButton), but it works for now and I hope to explore with it more in the future since I've been meaning to implement this since the second tutorial (first Godot tutorial).

Similarly, I added a background by attaching a Sprite2D node to my Camera which I also implemented in the previous tutorial. 

## References
Collision layers and masks: https://forum.godotengine.org/t/collisions-layers-masks/66193