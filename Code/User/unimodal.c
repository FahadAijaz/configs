#include <stdlib.h>
#include <math.h>
#include <stdio.h>


#define MAXLEN 100
#define PEAK 55
#define PR 0.02
float msqroot(float s);
int main (){
    int arr[MAXLEN];
    int i;
    int srted[MAXLEN];
    for (i = 0; i < PEAK; ++i){
        arr[i] = i;
    }
    int j ;
    arr[i] = PEAK;
    for (j = PEAK - 1, i = PEAK + 1; i < MAXLEN; --j, ++i){
        arr[i] = j;
    }
    print_arr(arr);

    printf("reponse\n");
    printf("%d\n", find_unimodal(arr));
    for (i = 0; i < MAXLEN; ++i){
        srted[i] = i - 12;
    }
    printf("%d\n", b_search(srted, 12));
    float s = 17.0;
    float ans =  msqroot(s);
    printf("%lf", ans);
}

void print_arr(int * arr){
    int i = 0;
    for (i = 0; i < MAXLEN; ++i){
        printf("%d: %d ", i, arr[i]);
    }
    printf("\n");
}

int b_search (int * A, int e){
    int L = 0, R = MAXLEN - 1;
    
    while(L<=R){
        int mid = L + floor((R-L)/2);
        if (A[mid] == e){
            return mid;
        }
        else if (A[mid]<e){
            L = mid+1;
        }
        else if (A[mid]>e){
            R = mid-1;
        }
    }
    return -1;
}

float msqroot(float x){
    float L = 0.0, R = x;
    while(R - L >= PR){
        float mid = L + (R-L)/2.0;
        if (mid*mid < x){
            L = mid;
        }
        else{
            R = mid;
        }
    }
    return (L + (R-L)/2.0);
}

int find_unimodal (int * A){
    int L = 0, R = MAXLEN - 1;
    
    while (L+1 <= R){
        int mid = L + floor((R-L)/2);
        if (R == L+1){
            return L;
        }
        if (A[mid]>=A[mid-1]){
            L=mid;
        }
        else if (A[mid]<A[mid-1]){
            R=mid-1;
        }
        // printf("%d\n", mid);
    }
}