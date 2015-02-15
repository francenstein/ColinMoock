package
{
	import flash.display.Sprite;
	
	public class VirtualZoo extends Sprite
	{
		private var pet:VirtualPet;
		
		public function VirtualZoo() // По суті саме конструктор головного класа проги є точкою входу в програму 
		{
			pet = new VirtualPet("Kengoruu"); // створили обєкт (new VirtualPet("Stan")) з значенням name => Stan і записали його в змінну pet
			
			pet.traceName();
		}
	}
}