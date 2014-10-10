public class MainScene : SEScene
{


	SESprite pic1;
	SESprite pic2;
	SESprite pic3;
	SESprite pic4;
	SESprite text;
	double trans = 0;
	
	public void initialize(SEResourceCache rsc) {
	base.initialize(rsc);
	add_sprite_for_color(Color.instance("#FF0066"), get_scene_width(), get_scene_height());
	rsc.prepare_image("pic1", "pic1", get_scene_width()*0.5,get_scene_height()*0.5);	
	rsc.prepare_image("pic2", "pic2", get_scene_width()*0.5,get_scene_height()*0.5);
	rsc.prepare_image("pic3", "pic3", get_scene_width()*0.5,get_scene_height()*0.5);
	rsc.prepare_image("pic4", "pic4", get_scene_width()*0.5,get_scene_height()*0.5);
	rsc.prepare_font("myfont", "arial color=black", 40);
	
	pic1 = add_sprite_for_image(SEImage.for_resource("pic1"));
	pic2 = add_sprite_for_image(SEImage.for_resource("pic2"));
	pic3 = add_sprite_for_image(SEImage.for_resource("pic3"));
	pic4 = add_sprite_for_image(SEImage.for_resource("pic4"));
	text = add_sprite_for_text("Home Scene", "myfont");
	
	pic1.move(0,0);
	pic2.move(0,get_scene_height()*0.5);
	pic3.move(get_scene_width()*0.5,0);
	pic4.move(get_scene_width()*0.5,get_scene_height()*0.5);
	text.move(0,0);
	}

	public void on_pointer_press(SEPointerInfo pi) {

		base.on_pointer_press(pi);
		
		if(pi.is_inside(0,0,0.5*get_scene_width(),0.5*get_scene_height())) {
			switch_scene(new Scene1());
		}
		else if(pi.is_inside(0,0.5*get_scene_height(),0.5*get_scene_width(),0.5*get_scene_height())) {
			switch_scene(new Scene2());		
		}
		else if(pi.is_inside(0.5*get_scene_width(),0,0.5*get_scene_width(),0.5*get_scene_height())) {
			switch_scene(new Scene3());
		}
		else if(pi.is_inside(0.5*get_scene_width(),0.5*get_scene_height(),0.5*get_scene_width(),0.5*get_scene_height())) {
			switch_scene(new Scene4());
		}
	}

	public void cleanup() {
		base.cleanup();
	}
}