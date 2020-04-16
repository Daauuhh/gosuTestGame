require 'gosu'

class GameWindow < Gosu::Window 
    def initialize
        super(640, 480, false)
    end
end

window = GameWindow.new
window.show

class GameWindow < Gosu::Window
    def initialize
        super(640, 480, false)
        @background_image = Gosu::Image.new(self, "images/background.png")
    end

    def update
    end

    def draw
        @background_image.draw(0, 0, 0)
    end
end

class Player

    def initialize(x, y, window)
        @x, @y = x, y
        @image = Gosu::Image.new(window, "images/player.png"))
    end

    def draw
        @image.draw(@x, @y, 1)
    end

    def move_left
        @x -= 1
    end
    ...
end

class GameWindow < Gosu::Window
    def initialize
        ...
        @player = Player.new(550, 4400, self)
    end

    def update
        @player.move_left if button_down?(Gosu::Button::KbLeft)
        @player.move_right if button_down?(Gosu::Button::KbRight)
        @player.move_up if button_down?(Gosu::Button::KbUp)
        @player.move_down if button_down?(Gosu::Button::Kbdown)
    end

    def draw
     ...
     @player.draw
    end

class GameWindow < Gosu::Window
    def initialize
    ...
        @player = Player.new(550, 400, self)
        @monster = Monster.build(5)
    end

    def update
    ...
    @monster.each do |monster|
      monsters.follow(@player)
      gameover! if monster.touch?(@player)
    end
end

def draw
    @monsters.each {|monster| monster.draw}
    ...
end


