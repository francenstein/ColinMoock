package
{
	internal class VirtualPet
	{
		private var currentCalories:Number = 1000;
		private var petName:String; // створили нову змінну екземпляра 
		private static var maxLengthName:Number = 15;
		private static var maxHunger:Number = 2000;
		
		public function VirtualPet(name:String) // конструктор класа з обовязковим параметром - name 
		{
			setName(name); 
		}
		
		public function eat(numberOfCalories:Number):void
		{
			
			var newCurrentCalories:Number = currentCalories + numberOfCalories;
			
			if(newCurrentCalories > maxHunger)
			{
				currentCalories = maxHunger;
			}
			else
			{
				currentCalories = newCurrentCalories;
			} 
		}
		
		public function getHunger():Number // написали метод екземпляра для перегляду ситості тварини
		{
			return (currentCalories/2000)*100; // Функція повертає значення у відсотках
		}
		
		public function setName(newname:String):void
		{
			if(newname.length > maxLengthName)
			{
				newname = newname.substr(0, maxLengthName) // коли к-сть символів буде більшою ніж 15 то ф-я стринг - substr "відрубає" лише перших 15 символів
			}
			else if(newname == "") // якщо слово не записано то просто завершити виконування метода, не змінюючи petName
			{
				return;
			}
			
			petName = newname; // Ми обовязковому параметру newname задали глобальну змінну  petName, так як тоді ми не змогли б використовувати за межами функції newname бо вона локальна   
		}
		
		public function getName():String
		{
			return petName; 	
		}
		
		public function traceName():void
		{
			trace(petName);
		}
		
	}
}