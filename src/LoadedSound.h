#pragma once
#include <SFML/Audio.hpp>
#include "util.h"

struct LoadedSound {
    std::string name;
    sf::SoundBuffer buffer;
    sf::Sound sound;
    

    bool load(std::string url) {
        std::string path = util::getPath();
        if (buffer.loadFromFile(path+"/assets/sound/" + url)) {
            name = url;
            sound = sf::Sound(buffer);
            return true;
        }
        else {
            return false;
        }
    }

    void play() {
        sound.play();
    }
};

