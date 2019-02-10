﻿
&НаСервере
Процедура ОтправитьСообщениеНаСервере()
	
	МассивПользователейДляОтправки = Новый Массив;
	МассивПользователейДляОтправки.Добавить(ЭтотОбъект.ПользовательДляОтправки);
	пОбъект = РеквизитФормыВЗначение("Объект");
	пОбъект.ОтправитьСообщениеTelegram(ЭтотОбъект.ТескстСообщенияДляОтправки, МассивПользователейДляОтправки);
	
КонецПроцедуры

&НаКлиенте
Процедура ОтправитьСообщение(Команда)
	ОтправитьСообщениеНаСервере();
КонецПроцедуры

&НаСервере
Процедура ПрочитатьСообщенияНаСервере()
	
	пОбъект = РеквизитФормыВЗначение("Объект");
	пОбъект.ПрочитатьСообщенияTelegram();
	ЗначениеВРеквизитФормы(пОбъект, "Объект");
	
КонецПроцедуры

&НаКлиенте
Процедура ПрочитатьСообщения(Команда)
	ПрочитатьСообщенияНаСервере();
КонецПроцедуры
