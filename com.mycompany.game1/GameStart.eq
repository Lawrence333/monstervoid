/*
 * GameStart
 * Created by Eqela Studio 2.0b7.4
 */

public class GameStart : SEScene
{
    SESprite land;
    int w;
    int i;
    int h;
    public static int x;
    public static int y;
    public void initialize(SEResourceCache rsc) {
        base.initialize(rsc);
        w = get_scene_width();
        AudioClipManager.prepare("mysound");
        h = get_scene_height();
        add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));
        rsc.prepare_image("myland","land", w , h);
        land = add_sprite_for_image(SEImage.for_resource("myland"));
        land.move(0,0);
        add_entity(new PlayerEntity());
        for(i=0; i<Math.random(5, 10); i++)
        {
        add_entity(new Monstermove());
        }
            AudioClipManager.play("mysound");
    }

    public void on_pointer_move(SEPointerInfo pi) {
        base.on_pointer_move(pi);
        x = pi.get_x();
        y = pi.get_y();
        if(Monstermove.mx==x && Monstermove.my==y)
        {
            switch_scene(new Gameover());
        }
    }
     public void on_pointer_press(SEPointerInfo pi) {
       base.on_pointer_press(pi);
        if(pi.is_inside(0,0,get_scene_width(),get_scene_height()))
       	{
			switch_scene(new Gameover());
			}
			}

    public void cleanup() {
        base.cleanup();
    }
}
