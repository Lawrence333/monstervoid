/*
 * Monstermove
 * Created by Eqela Studio 2.0b7.4
 */

public class Monstermove : SEEntity
{
    SESprite mon;
    int w;
    int h;
    public static int mx;
    public static int my;

    public void initialize(SEResourceCache rsc) {
        base.initialize(rsc);
        w = get_scene_width();
        h = get_scene_height();    
        rsc.prepare_image("mymonster","mon",0.1*w,0.1*h);
        mon=add_sprite_for_image(SEImage.for_resource("mymonster"));
        mon.move(Math.random(0,w), Math.random(0,h));
    
    }
    public void tick(TimeVal now, double delta) {
        base.tick(now,delta);
        mx = mon.get_x();
        my = mon.get_y();
        mon.move(mx+(GameStart.x-mx)/Math.random(100,1000),my+(GameStart.y-my)/Math.random(100,1000));
    }

    public void cleanup() {
        base.cleanup();
    }
}