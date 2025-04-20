extends Window

func _ready():
    # Убираем рамки и заголовок
    set_flag(Window.FLAG_BORDERLESS, true)
    set_flag(Window.FLAG_TRANSPARENT, true)  # Прозрачный фон
    
    # Устанавливаем окно поверх других
    always_on_top = true
    
    # Добавляем Label
    var label = Label.new()
    label.text = "Текст поверх всех окон!"
    label.add_theme_font_size_override("font_size", 24)
    add_child(label)
