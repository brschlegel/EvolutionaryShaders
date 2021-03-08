#include <iostream>
#include <vector>
#include <string>
#include "../headers/Writer.h"
#include "../headers/Node.h"
#include "../headers/Tree.h"

using namespace std;

int main()
{
    vector<string> msg {"Hello", "C++", "World", "from", "VS Code", "and the C++ extension!"};
    for (const string& word : msg)
    {
        cout << word << " ";
    }
    cout << endl;

    Writer w;
    w.write("bruh.shader");

    Node* root = new Node("+");
    root->left = new Node("-");
    root->left->left = new Node("X");
    root->left->right = new Node("10");
    root->right = new Node("23");
    Tree t = Tree(root);
    cout<<"tree comes out to: " << t.solve(10,20,1) << endl;
    cout<<"Tree tostring is: " <<t.toString() << endl;
   

    
}