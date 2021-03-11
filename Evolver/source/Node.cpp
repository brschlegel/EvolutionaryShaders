#include "../headers/Node.h"

Node::Node(string info){
    this->info = info;
    typeId = GlobalVars::getInstance()->GetId(info);
    left = NULL;
    right = NULL;
}