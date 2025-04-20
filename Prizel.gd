extends Window

func _ready():
    # Настройки окна (без рамок, прозрачное, поверх других окон)
    set_flag(Window.FLAG_BORDERLESS, true)
    set_flag(Window.FLAG_TRANSPARENT, true)
    always_on_top = true
    
    # Создаём прицел (можно заменить на спрайт)
    var crosshair = Label.new()
    crosshair.text = "+"
    crosshair.add_theme_font_size_override("font_size", 48)
    crosshair.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
    crosshair.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
    
    # Центрируем прицел
    self.size = Vector2(100, 100)
    crosshair.size = self.size
    
    add_child(crosshair)
    
    # Делаем окно некликабельным (чтобы клики проходили сквозь)
    mouse_filter = MOUSE_FILTER_IGNORE


var crosshair = TextureRect.new()
crosshair.texture = load("res://crosshair.png")  # Ваш PNG-прицел
crosshair.stretch_mode = TextureRect.STRETCH_KEEP_ASPECT_CENTERED
crosshair.size = Vector2(50, 50)  # Размер прицела
add_child(crosshair)

# Центрируем окно при запуске
func _ready():
    # ...
    var screen_size = DisplayServer.screen_get_size()
    self.position = (screen_size - self.size) / 2  # Центр экрана

# Для всех элементов
crosshair.mouse_filter = Control.MOUSE_FILTER_IGNORE
# Или для всего окна
self.mouse_filter = Control.MOUSE_FILTER_IGNORE
