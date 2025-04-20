extends Window

func _ready():
    # Убираем рамки и делаем фон прозрачным
    set_flag(Window.FLAG_BORDERLESS, true)
    set_flag(Window.FLAG_TRANSPARENT, true)
    
    # Окно поверх всех остальных
    always_on_top = true
    
    # Добавляем Label (текст)
    var label = Label.new()
    label.text = "Только текст, без фона!"
    label.add_theme_font_size_override("font_size", 24)
    
    # Убираем фон у Label (если он есть)
    label.add_theme_stylebox_override("normal", StyleBoxEmpty.new())
    
    add_child(label)
