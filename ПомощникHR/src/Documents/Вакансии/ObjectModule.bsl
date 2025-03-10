#Если Сервер Или ТолстыйКлиентОбычноеПриложение Или ВнешнееСоединение Тогда

#Область ОбработчикиСобытий

Процедура ПередЗаписью(Отказ, РежимЗаписи, РежимПроведения)
	
	Если ОбменДанными.Загрузка Тогда
		Возврат;
	КонецЕсли;
	
	ПредставлениеХарактеристик = "";
	ПредставлениеФункцОбязанностей = "";
	
	Для Каждого Строка Из Характеристики Цикл
		Если Не Строка.Требуется Тогда
			Продолжить;
		КонецЕсли;
		
		ПредставлениеХарактеристик = ПредставлениеХарактеристик + ?(ПредставлениеХарактеристик = "", 
			Строка.Характеристика, ";" + Строка.Характеристика);	
	КонецЦикла;	
		
	Для Каждого Строка Из ФункциональныеОбязанности Цикл
		Если Не Строка.Требуется Тогда
			Продолжить;
		КонецЕсли;
		
		ПредставлениеФункцОбязанностей = ПредставлениеФункцОбязанностей + ?(ПредставлениеФункцОбязанностей = "", 
			Строка.ФункциональнаяОбязанность, ";" + Строка.ФункциональнаяОбязанность);	
	КонецЦикла;	
	
КонецПроцедуры

#КонецОбласти

#КонецЕсли