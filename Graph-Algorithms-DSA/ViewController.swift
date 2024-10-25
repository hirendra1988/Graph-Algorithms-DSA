//
//  ViewController.swift
//  Graph-Algorithms-DSA
//
//  Created by Hirendra Sharma on 23/10/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let graph = ShortestPath(vertexCount: 6)
        graph.runTest()
    }


}

