# frozen_string_literal: true

require 'faker'

# table brands

brand_attributes = []

brand_attributes.each do |attr|
  Brand.create(attr) unless Brand.where(attr).first
end

# - - - - -

# table categories

apple = Category.create(title: 'Apple', bytitle: 'Apple', keywords: 'Apple', description: 'Apple')

honor = Category.create(title: 'HONOR', bytitle: 'HONOR', keywords: 'HONOR', description: 'HONOR')

samsung = Category.create(title: 'Samsung', bytitle: 'Samsung', keywords: 'Samsung', description: 'Samsung')


# - - - - - - - -

# table products
product_attributes = [
  {
    category_id: '1',
    title: 'Apple iPhone SE 2020 64 GB white',
    bytitle: 'apple iphone se 2020 64 gb white',
    content: Faker::Lorem.sentence(word_count: 20),
    price: 625,
    status: 1,
    keywords: 'keywords',
    description: Faker::Lorem.sentence(word_count: 10),
    img: 'Apple iPhone SE 2020 64 GB white.jpg',
    hit: 1
  },
  {
    category_id: '2',
    title: 'Honor 50 Lite 128 GB silver',
    bytitle: 'honor 50 lite 128 gb silver',
    content: Faker::Lorem.sentence(word_count: 20),
    price: 330,
    status: 1,
    keywords: 'keywords',
    description: Faker::Lorem.sentence(word_count: 10),
    img: 'Honor 50 Lite 128 GB silver.jpg',
    hit: 1
  },
  {
    category_id: '3',
    title: 'Samsung Galaxy A03 Core 32 GB blue',
    bytitle: 'samsung galaxy a03 core 32 gb blue',
    content: '8x(1.6 ГГц), 2 Гб, 2 SIM, TN, 1600x720, камера 8 Мп, 4G, GPS, FM, 5000 мА*ч',
    price: 135, #Faker::Commerce.price,
    status: 1,
    keywords: 'keywords',
    description: 'Заводские данные: Гарантия 12 мес.
                  Страна-производитель: Китай
                  Общие параметры:
                  Тип: смартфон
                  Модель: Samsung Galaxy A03 Core
                  Год: релиза 2021
                  Внешний вид:
                  Цвет задней панели: синий
Цвет передней панели: черный
Цвет граней: синий
Цвет, заявленный производителем: синий
Мобильная связь: Поддержка сетей 2G:
GSM 900, GSM 1800, GSM 1900, GSM 850
Поддержка сетей 3G:
UMTS 900, UMTS 850, UMTS 2100
Поддержка сетей 4G (LTE):
есть
Диапазоны частот LTE:
LTE 2600 (B7), LTE 700 (B28), LTE 800 (B20), LTE 2100 (B1), LTE 900 (B8), LTE 1800 (B3), LTE 850 (B5)
Поддержка сетей 5G:
нет
Формат SIM-карт:
Nano-SIM (12.3x8.8x0.67 мм)
Количество SIM-карт:
2 SIM
Поддержка eSIM:
нет
Экран:
Диагональ экрана (дюйм):
6.5"
Разрешение экрана:
1600x720
Плотность пикселей:
269 ppi
Технология изготовления экрана:
TN
Соотношение сторон:
20:9
Количество цветов экрана:
16 млн
Частота обновления экрана:
60 Гц
Корпус и защита:
Материал корпуса:
пластик
Система:
Операционная система:
Android
Версия ОС:
Android 11 Go
Производитель процессора:
Unisoc (Spreadtrum)
Модель процессора:
Spreadtrum SC9863A
Количество ядер:
8
Частота работы процессора:
1.6 ГГц
Конфигурация процессора:
8x Cortex-A55 1.6 ГГц
Техпроцесс:
28 нм
Графический ускоритель:
PowerVR GE8322
Объем оперативной памяти:
2 Гб
Объем встроенной памяти:
32 ГБ
Слот для карты памяти:
есть (отдельный слот)
Типы поддерживаемых карт памяти:
microSD
Максимальный объем карты памяти:
1024 ГБ
Датчики:
датчик освещенности, датчик приближения, акселерометр
FM радио:
есть
Основная (тыловая) камера:
Количество основных (тыловых) камер:
1
Количество мегапикселей основной камеры:
8 Мп
Апертура основной камеры:
2
Автофокусировка основной камеры
есть
Тип вспышки
светодиодная
Оптическая стабилизация
нет
Зум (фото)
4-кратный цифровой зум
Видеосъемка (основная камера)
Формат видеосъемки
Full HD
Разрешение видео и частота кадров
1920x1080 (30 кадр./сек.)
Фронтальная камера
Двойная фронтальная камера
нет
Количество мегапикселей фронтальной камеры
5 Мп
Апертура фронтальной камеры
2.2
Автофокусировка
нет
Встроенная вспышка
нет
Аудио
Отдельный ЦАП
нет
Стереодинамики
нет
Форматы аудиофайлов
MP3, M4A, 3GA, AAC, OGG, OGA, WAV, AMR, AWB, FLAC, MID, MIDI, XMF, MXMF, IMY, RTTTL, RTX, OTA
Коммуникации
Версия Bluetooth
4.2
Стандарт Wi-Fi
4 (802.11n)
NFC
нет
Системы навигации
ГЛОНАСС, GPS, A-GPS
ИК-порт
нет
Проводные интерфейсы
Интерфейс
micro USB
Поддержка MHL
нет
Разъем для наушников
Mini Jack 3.5 мм
Дополнительная информация
Наушники в комплекте
нет
Зарядное устройство в комплекте
есть
Комплектация
документация, зарядное устройство, скрепка для извлечения слота SIM-карты, кабель micro USB
Биометрическая защита
нет
Питание
Тип аккумулятора
Li-Ion
Емкость аккумулятора
5000 мА*ч
Съемный аккумулятор
нет
Выходная мощность ЗУ
7.75 Вт
Поддержка быстрой зарядки
нет
Поддержка беспроводной зарядки
нет
Габариты и вес
Ширина
75.9 мм
Высота
164.2 мм
Толщина
9.1 мм
Вес
211 г

',
    img: 'Samsung Galaxy A03 Core 32 GB blue.jpg',
    hit: 1
  },
]

product_attributes.each do |attr|
  Product.create(attr) unless Product.where(attr).first
end

# - - - - -
