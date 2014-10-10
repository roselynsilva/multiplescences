public class Scene3 : SEScene
{

	SESprite text;
	SESprite main3;
	SESprite sprite;

	
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
			add_sprite_for_color(Color.instance("#FF0066"), get_scene_width(), get_scene_height());
			
			rsc.prepare_image("home1", "home1", get_scene_width()*0.2,get_scene_height()*0.2);
			rsc.prepare_image("pic3", "pic3", get_scene_width()*0.5,get_scene_height()*0.65);
			rsc.prepare_font("myfont", "arial  color=#000000", 60);
			
			main3 = add_sprite_for_image(SEImage.for_resource("home1"));
		    sprite = add_sprite_for_image(SEImage.for_resource("pic3"));
			text = add_sprite_for_text("SCENE 3", "myfont");

			main3.move(0,600);
		    sprite.move(get_scene_width()*0.5,0);
			text.move(get_scene_width()*0.35,0);
	}
	
	public void on_pointer_press(SEPointerInfo pi) {
		base.on_pointer_press(pi);
		
		if(pi.is_inside(0,600,0.75*get_scene_width(),0.75*get_scene_height())) {
			switch_scene(new MainScene());
		}
	}

	public void cleanup() {
		base.cleanup();
	}
}