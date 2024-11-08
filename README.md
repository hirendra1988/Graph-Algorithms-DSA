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


# 5. Depth-First Search (DFS) Using a Stack in Swift

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

----------------------------------------------------------------------------------------------

# 6. Detect Cycle in an Undirected Graph: Recursive Depth-First Search (DFS) in Swift

## Overview:
This Swift implementation of Depth-First Search (DFS) uses recursion to detect cycles in an undirected graph. By exploring each path as deeply as possible before backtracking, the algorithm identifies cycles by revisiting previously visited nodes from different paths. This recursive approach is simple to implement and effective for moderate graph depths.

## Features:
- Recursive Cycle Detection for Undirected Graphs: Uses a recursive DFS approach to detect cycles, making the code concise and easy to understand.
- Dynamic Edge Addition: Supports adding edges between nodes, allowing flexible construction and modification of the graph.
- Cycle Detection Logic: Checks for revisited nodes that aren’t the immediate parent in the recursion stack, identifying cycles effectively.
- Traversal Order Output: Provides the order of node traversal, helping to understand the recursive flow and debugging.

Time Complexity: O(V+E) — each vertex and edge is processed once,<br />
Space Complexity: O(V) — for recursion stack depth and the visited set.<br />
where V is the number of vertices and E is the number of edges.

----------------------------------------------------------------------------------------------

# 7. Detect Cycle in a Directed Graph: Recursive Depth-First Search (DFS) in Swift

## Overview:
This Swift implementation of Depth-First Search (DFS) uses recursion to detect cycles in a directed graph. By exploring each path as deeply as possible before backtracking, the algorithm identifies cycles by revisiting nodes that are still in the recursion stack. This recursive approach is efficient and straightforward for cycle detection in directed graphs.

## Features:
- Recursive Cycle Detection for Directed Graphs: Utilizes a recursive DFS approach to effectively identify cycles in directed graphs.
- Dynamic Edge Addition: Supports adding directed edges between nodes, allowing flexible construction and modification of the graph.
- Cycle Detection Logic: Utilizes a recursion stack (recStack) to track the current path. If a node is revisited while it is still in the recursion stack, a cycle is detected.
- Traversal Order Output: Provides the order of node traversal, which helps in understanding the recursive flow and debugging.

Time Complexity: O(V+E) — each vertex and edge is processed once.<br />
Space Complexity: O(V) — for the recursion stack depth and the visited set.<br />
V is the number of vertices and E is the number of edges)

----------------------------------------------------------------------------------------------

# 8. Topological Sorting in a Directed Graph: BFS (Kahn's Algorithm) in Swift

## Overview
This Swift implementation of topological sorting uses Breadth-First Search (BFS) based on Kahn's Algorithm to produce a valid topological order for a directed acyclic graph (DAG). By processing nodes with zero incoming edges and iteratively removing edges, the algorithm builds an ordering of nodes with linear time complexity.

## Features
- Topological Sorting for DAGs: Implements Kahn's Algorithm using BFS to obtain a valid topological order of nodes in a DAG.
- Dynamic Edge Addition: Supports adding directed edges between nodes, allowing for flexible graph construction and modification.
- Cycle Detection: If the graph contains a cycle, the algorithm identifies it by the inability to process all nodes, thus confirming that the graph is not a DAG.

Time Complexity: O(V+E) — each vertex and edge is processed once, where V is the number of vertices and E is the number of edges.<br />
Space Complexity: O(V) — for storing the in-degrees and the queue.<br />

----------------------------------------------------------------------------------------------

# 9. Topological Sorting in a Directed Graph: DFS

## Overview
This Swift implementation of topological sorting uses Depth-First Search (DFS) to produce a valid topological order for a directed acyclic graph (DAG). By recursively visiting nodes and marking them as visited, the algorithm builds an ordering of nodes, appending them to a result list after all their descendants have been processed.

## Features
- Topological Sorting for DAGs: Implements a DFS approach to obtain a valid topological order of nodes in a DAG by traversing the graph and storing nodes in a result list post-visit.
- Dynamic Edge Addition: Supports adding directed edges between nodes, allowing for flexible graph construction and modification.
- Cycle Detection: If the graph contains a cycle, the algorithm identifies it by the inability to process all nodes, thus confirming that the graph is not a DAG.
  
Time Complexity: O(V+E) — each vertex and edge is processed once, where V is the number of vertices and E is the number of edges.<br />
Space Complexity: O(V) — for storing the visited status and the result list.

----------------------------------------------------------------------------------------------

# 10. Prims Algorithm in a Undirected weighted graph

## Overview
This Swift implementation of Prim’s algorithm constructs a Minimum Spanning Tree (MST) for an undirected, weighted graph. By iteratively selecting the smallest-weight edge that connects the current MST to any remaining vertex, the algorithm builds the MST while tracking vertices inside and outside the spanning tree.

## Features
- Minimum Spanning Tree Construction: Implements a greedy approach to construct the MST by connecting vertices using the smallest-weight edge at each step.
- Dynamic Edge Selection: Continuously updates the set of edges connecting MST vertices to non-MST vertices, ensuring the minimum edge is chosen in each iteration.
- Graph Flexibility: Allows for easy updates to edge weights and vertices to dynamically reflect changes in the graph structure.

Time Complexity O(V×E) — In each step, all edges from MST vertices to non-MST vertices are checked, where V is the number of vertices and E is the number of edges.<br />
Space Complexity O(V+E) — For storing the adjacency list and tracking vertices in and out of the MST.

----------------------------------------------------------------------------------------------

# 11. Prims Algorithm in a Undirected weighted graph version-2

## Overview
This Swift implementation of Prim’s algorithm constructs a Minimum Spanning Tree (MST) for an undirected, weighted graph. By iteratively selecting the smallest-weight edge that connects the current MST to any remaining vertex, the algorithm builds the MST while tracking vertices inside and outside the spanning tree.

## Features
- Minimum Spanning Tree Construction: Implements a greedy approach to construct the MST by connecting vertices using the smallest-weight edge at each step.
- Dynamic Edge Selection: Continuously updates the set of edges connecting MST vertices to non-MST vertices, ensuring the minimum edge is chosen in each iteration.
- Graph Flexibility: Allows for easy updates to edge weights and vertices to dynamically reflect changes in the graph structure.

Time Complexity O(V^2)<br />
Space Complexity O(V+E)

----------------------------------------------------------------------------------------------


# 12. Dijkstra's Algorithm in an Undirected Weighted Graph

## Overview
This Swift implementation of Dijkstra’s algorithm calculates the shortest path from a source vertex to all other vertices in an undirected, weighted graph. By iteratively selecting the vertex with the smallest tentative distance and updating its neighbors, the algorithm efficiently finds the shortest paths while keeping track of visited and unvisited vertices.

## Features
- Shortest Path Calculation: Uses a greedy approach to continuously expand the shortest known path from the source vertex to all other vertices.
- Dynamic Distance Update: Updates the tentative distance to each vertex in each iteration based on the shortest known path, ensuring the minimum distance is recorded for each vertex.
- Graph Flexibility: Allows for easy modifications to edge weights and vertices, dynamically reflecting changes in the graph structure.

Time Complexity: O(V^2) for the basic implementation<br />
Space Complexity: O(V+E), where V is the number of vertices and E is the number of edges.

----------------------------------------------------------------------------------------------

# 13. Union-Find with Rank Optimization

## Overview
This Swift implementation of the Union-Find data structure, optimized with rank, efficiently manages the merging of disjoint sets in problems like cycle detection, graph connectivity, and Minimum Spanning Tree (MST) construction. The rank-based optimization ensures that the tree height remains balanced, improving performance by reducing the time complexity of union and find operations.

## Features
- Efficient Set Merging with Rank: By always attaching the smaller tree to the root of the larger tree (based on the rank), this approach minimizes the height of the trees, ensuring that subsequent find operations are faster.
- Cycle Detection: When adding edges to a graph, Union-Find helps detect cycles by checking if two vertices belong to the same set. If they do, adding the edge would form a cycle.
- Path Compression: Along with rank optimization, path compression is used during the find operation to flatten the structure of the tree, making future queries faster.
- Graph Connectivity: Union-Find can be used to efficiently determine whether two vertices are in the same connected component in a graph.

Time Complexity: O(α(V)) for both find and union operations, where α is the inverse Ackermann function, which grows extremely slowly, making these operations nearly constant time in practice.<br />
Space Complexity: O(V), where V is the number of vertices, as it requires an array to store the parent and rank for each vertex.

----------------------------------------------------------------------------------------------

# 14. Kruskal’s Algorithm in an Undirected Weighted Graph

##Overview
This Swift implementation of Kruskal’s algorithm efficiently finds the Minimum Spanning Tree (MST) for an undirected, weighted graph. By sorting all edges and incrementally adding the smallest edge that doesn't form a cycle, Kruskal’s algorithm ensures that the resulting MST connects all vertices with the minimum possible total edge weight.

## Features
- Efficient MST Construction: Uses a greedy approach to select edges with the lowest weight, ensuring a minimum total edge cost across the graph’s spanning tree.
- Cycle Prevention: Implements Union-Find (Disjoint Set) to prevent cycles as edges are added to the MST, maintaining the tree structure and ensuring each vertex is only included once.
- Graph Flexibility: Easily accommodates different graph structures by dynamically adjusting to changes in vertices and edge weights, allowing the MST to update as needed.

Time Complexity: O(ElogE), where E is the number of edges. Sorting the edges is the most time-consuming operation.<br />
Space Complexity: O(V+E), where V is the number of vertices and E is the number of edges, to store edges and the Union-Find structure.
