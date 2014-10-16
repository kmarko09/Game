
/*
 * MainScene.eq
 * Generated by Eqela Studio 2.0b7.4
 */


public class MainScene : SEScene
{


SESprite play;
    
    public void initialize(SEResourceCache rsc) {
        base.initialize(rsc);
        add_sprite_for_color(Color.instance("white"),get_scene_width(),get_scene_height());
       
        rsc.prepare_image("a","start",get_scene_width()*0.5, get_scene_height()*0.25);
        play = add_sprite_for_image(SEImage.for_resource("a"));
        play.move(get_scene_width()*0.5, get_scene_height()*0.5);
      
    }

 public void on_pointer_press(SEPointerInfo pi) {
       base.on_pointer_press(pi);
            switch_scene(new GameScene());   
        
   
    }
}