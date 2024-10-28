# DSA-Problems

# 1. Breadth-First Search (BFS) in Swift

## Overview
This repository contains an implementation of the Breadth-First Search (BFS) algorithm for traversing or searching through a graph or tree data structure. The algorithm explores all the neighbor nodes at the present depth prior to moving on to nodes at the next depth level.

## Features
- Implements BFS for an undirected graph.
- Supports adding edges between nodes.
- Displays the graph structure.
- Outputs the traversal order of nodes.

Time Complexity: O(V + E)<br />
Space Complexity: O(V)<br />
Where V is the number of vertices (nodes) in the graph and E is the number of edges.



----------------------------------------------------------------------------------------------



# 2. Depth-First Search (DFS) in Swift
## Overview
This repository contains an implementation of the Depth-First Search (DFS) algorithm for traversing or searching through a graph or tree data structure. The algorithm explores as deep as possible along each branch before backtracking to explore other branches, making it useful for problems where exhaustive path exploration is required before moving to the next path.

## Features
- Implements DFS for an undirected graph.
- Supports adding edges between nodes.
- Displays the graph structure.
- Outputs the traversal order of nodes.

Time Complexity: O(V + E)<br />
Space Complexity: O(V)<br />
Where V is the number of vertices (nodes) in the graph and E is the number of edges.



----------------------------------------------------------------------------------------------



# 3. Shortest Path in an Unweighted Graph Using BFS
## Overview
This repository contains an implementation of the Breadth-First Search (BFS) algorithm to find the shortest path in an unweighted, undirected graph. BFS explores each level of nodes one at a time, ensuring the shortest path is discovered for each vertex from the starting node. This approach is ideal for problems where finding the minimum path cost between nodes is required.

## Features
- Shortest Path Calculation: Implements BFS to compute the shortest path from a starting vertex to all other vertices in an unweighted graph.
- Edge Management: Supports adding edges between nodes for constructing and managing graph connections.
- Distance Output: Displays the shortest distance from the starting node to each reachable node.
- Traversal Order: Outputs nodes in the order they are visited during BFS traversal.
  
Time Complexity: O(V+E)<br />
Space Complexity: O(V)<br />
Where V is the number of vertices (nodes) in the graph and E is the number of edges.



----------------------------------------------------------------------------------------------



# 4. Counting Disconnected Components in an Unweighted Graph Using BFS

## Overview
This repository provides an implementation of the Breadth-First Search (BFS) algorithm to count the total number of disconnected components in an unweighted, undirected graph. BFS systematically explores all nodes in each component, ensuring that every isolated section is identified and counted. This approach is ideal for problems that require identifying and counting separate groups within a graph.

## Features
- Disconnected Component Count: Uses BFS to identify and count each disconnected component in the graph by exploring from unvisited nodes.
- Edge Management: Supports adding edges between nodes to construct and manage connections in the graph.
- Component Tracking: Displays each disconnected component as a unique count and lists nodes within each component if desired.
- Traversal Order: Outputs nodes in the order they are visited during BFS traversal for each component.

Time Complexity: O(V + E)<br />
Space Complexity: O(V)<br />
Where V is the number of vertices (nodes) in the graph and E is the number of edges.


----------------------------------------------------------------------------------------------


# 5. Depth-First Search (DFS) Using a Stack in Swift 🌐

## Overview:
This Swift implementation of Depth-First Search (DFS) uses a stack to traverse a graph, exploring each path as deeply as possible before backtracking. By using an iterative stack-based approach, we avoid recursion and make the algorithm suitable for graphs with deep or complex structures. Perfect for applications like maze solving, connectivity checks, and exhaustive path exploration.

## Features:
- Stack-Based DFS for Undirected Graphs: Implements DFS using a stack instead of recursion, making it safe from stack overflow in deep graphs.
- Dynamic Edge Addition: Supports adding edges between nodes, creating a flexible graph structure.
- Graph Visualization: Displays the graph structure for easy comprehension of connections.
- Traversal Order Output: Outputs the order of node traversal, helping in debugging and understanding DFS flow.

Time Complexity: O(V+E)<br />
Space Complexity: O(V)<br />
Where V is the number of vertices, and E is the number of edges.


