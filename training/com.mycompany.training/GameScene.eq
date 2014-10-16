
/*
 * GameScene
 * Created by Eqela Studio 2.0b7.4
 */

public class GameScene : SEScene
{
        public static SESprite cloud;
        public static int px;
        public static int py;
        int i = 0;
        public void initialize(SEResourceCache rsc) {
                base.initialize(rsc);
                var w = get_scene_width(), h = get_scene_height();
                add_entity(SESpriteEntity.for_color(Color.instance("white"), w, h));
                rsc.prepare_image("mycloud","cloud",w,h);
                cloud = add_sprite_for_image(SEImage.for_resource("mycloud"));
                cloud.move(0,0);
                add_entity(new PlayerEntity());
                for(i;i<Math.random(5,20);i++){
                        add_entity(new MonsterEntity());
                        }
        }
        public void on_pointer_move(SEPointerInfo pi) {
                px = pi.get_x();
                py = pi.get_y();
        }

        public void cleanup() {
                base.cleanup();
        }
}