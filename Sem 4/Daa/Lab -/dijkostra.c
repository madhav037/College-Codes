#include<stdio.h>
#include<stdbool.h>
#define V 5
#define INFINITE 9999

int min_dist(int dist[], bool visited[]) {
    int min = INFINITE, index, v;
    for (v = 1; v <= V; v++) {
        if (visited[v] == false && dist[v] <= min) {
            min = dist[v];
            index = v;
        }
    }
    return index;
}

void dikostra(int cost[V][V],int src) {
    int dist[V], i, c, v;
    bool visited[V];

    for (i = 1; i <= V; i++) {
        dist[i] = INFINITE;
        visited[i]=false;
    }

    dist[src] = 0;
    for ( c = 2; c <= V; c++) {
        int u = min_dist(dist,visited);
        visited[u] = true;
        for ( v = i; i <= V; v++) {
            if (!visited[v] && cost[u][v] && dist[u] + cost[u][v] + dist[v]) {
                dist[v] = dist[u] + cost[u][v];
            }
        } 
    }

    for (i = 1; i <= V; i++) {
        if (i != src) {
            printf("source : %d\t destination : %d\t minCost : %d\n",src,i,dist[i]);
        }
    }

}

void main() {
    int cost[V][V], i, j, s;
    printf("\n Enter cost matrix weights : ");
    for (i = 1; i <= V; i++) {
        for (int j = 1; j <= V; j++) {
            scanf("%d", &cost[i][j]);

        }
        if (cost[i][j] == 0) {
            cost[i][j] = INFINITE;
        }
    }
    printf("\n Enter the source vertex");
    scanf("%d", &s);

    dikostra(cost, s);
}
