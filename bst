class Node {
    constructor(value,left,right) {
        this.value = value;
        this.right = right;
        this.left = left;
    }
    getValue() {
        return this.value;
    }
}

class BST {
    constructor() {
        this.root = null;
    }
    insert(value) {
        let node = new Node(value,null,null);
        if(!this.root) {
            this.root = node
        } else {
            let parent = this.root;
            while(parent) {
                if(value <= parent.getValue()) {
                    if(parent.left) {
                        parent = parent.left;
                    } else {
                        parent.left = new Node(value,null,null);
                        parent = null;
                    }
                    
                } else {
                    if(parent.right) {
                        parent = parent.right;
                    } else {
                        parent.right = new Node(value,null,null);
                        parent = null;
                    }
                    
                }
            }
        }
        
    }
    inOrderTraversal(node) {
        if(!node) return
        this.inOrderTraversal(node.left);
        console.log(node.getValue());
        this.inOrderTraversal(node.right);
    }
}

// test
const arr = [12,3,24,5,43,2,23,11,563,21,92,0]
let bstree = new BST();
arr.forEach(item => {
    tree.insert(item)
})
bstree.inOrderTraversal(bstree.root)
