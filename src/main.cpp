#include"GameEngine.h"
#include<SFML/Graphics.hpp>
#include<time.h>
#include<iostream>
bool exitMain = false;
int main()
{
	srand(time(NULL));
	GameEngine mygame(sf::Vector2u(1000, 800), "Ghosting Apes");
	mygame.setScene(GameEngine::Scene::mainMenu);
	mygame.initial();
	mygame.run();
	mygame.exitMain = &exitMain;
	std::cout << "every thing works \n";
	while (!exitMain)
	{
		mygame.getAndSetRandom(rand(), false);
	}
	std::cout << "exit success\n";
	return 0;
}