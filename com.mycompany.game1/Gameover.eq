
public class Gameover : SEScene
{
    SESprite land;
    SESprite text;
	SESprite t1;
    public void initialize(SEResourceCache rsc) {
        base.initialize(rsc);
        add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));
        rsc.prepare_image("myland","land",get_scene_width(),get_scene_height());
        land = add_sprite_for_image(SEImage.for_resource("myland"));
        land.move(0,0);
        rsc.prepare_font("font1","arial bold color=#000032",50);
        text = add_sprite_for_text("Game Over", "font1");
        text.move(0.50*get_scene_width(),0.50*get_scene_height());   
		rsc.prepare_font("font2","arial bold color=#000032",30);
        t1 = add_sprite_for_text("Press Game Over to return to Main Menu", "font2");
        t1.move(0.50*get_scene_width(),0.60*get_scene_height());     
}

public void on_pointer_press(SEPointerInfo pi)
    {
        base.on_pointer_press(pi);
        if(pi.is_inside(0.5*get_scene_width(),0.5*get_scene_height(),0.6*get_scene_width(), 0.6*get_scene_height())) {
        switch_scene(new MainScene());
        }
        }


        
    public void cleanup() {
        base.cleanup();
    }
}

