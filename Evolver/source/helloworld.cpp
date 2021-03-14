#include <iostream>
#include <vector>
#include <string>
#include "../headers/Writer.h"
#include "../headers/Node.h"
#include "../headers/Tree.h"

using namespace std;

int main()
{
   

    Writer w;
    w.write("bruh.shader");
    Node* root = new Node("+");
    root->left = new Node("+cos(");
    root->left->left = new Node("UV.x");
    root->left->right = new Node("/");
    root->left->right->left = new Node("27");
    root->left->right->right = new Node("7");
    root->right = new Node("23");
    Tree t = Tree(root);
    Tree copyT = Tree(t);
    cout<<"tree comes out to: " << t.solve(10,20,1) << endl;
    cout<<"Copy tree comes out to: " <<copyT.toString() <<endl;
    cout<<"Tree tostring is: " <<t.toString() << endl;
    for(int i = 0; i < 12; i++)
    {
        t.naiveMutate();
    }
    cout<<"Tree tostring post-mutate is: " <<t.toString() << endl;
    cout <<"Tree solving post-mutate is: " << t.solve(10,20,1)<< endl;
    cout<<"Copy tree comes out to: " <<copyT.toString() <<endl;
    Tree randT = Tree();
    cout << "Making random tree results in: " <<randT.toString() << endl;
    
}