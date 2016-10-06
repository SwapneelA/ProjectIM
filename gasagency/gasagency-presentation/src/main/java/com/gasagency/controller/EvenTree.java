package com.gasagency.controller;

import java.util.Scanner;

public class EvenTree 
{
	static Scanner sc = new Scanner(System.in);
	static int vertices = sc.nextInt();
	static int edges = sc.nextInt();
	static int [][] arr= new int[vertices+1][vertices+1];
	static int breakEdges = 0;
	public static void main(String[] args) 
	{
		for(int i=0;i<edges;i++)
		{
		    int a = sc.nextInt();
		    int b= sc.nextInt();
		    arr[a][b] = 1;  
		}
		
		for(int i=1;i<=edges+1;i++)
		{
		    for(int j=1;j<=edges+1;j++)
		    {
		        int value = arr[i][j];
		        if(value==1)
		        {
		        	arr[i][j]=0;
		             int left = countVerticesOfSubtree(i,0)+1; 
		             int right= countVerticesOfSubtree(j,0)+1;
		             if(left%2==0 && right%2==0)
		             {
		                 breakEdges++; 
		             }
		             else{
		            	 arr[i][j]=1;
		             }
		        }
		            
		    }
		}
		System.out.println(breakEdges);

	}
	static int countVerticesOfSubtree(int vertice,int count)
	{
	    for(int i=1;i<=edges+1;i++)
	    {
	        if(arr[i][vertice]==1)
	        {
	        	arr[i][vertice] = 0;
	            count = count + 1;
	            count = countVerticesOfSubtree(i,count);
	            arr[i][vertice] = 1;
	            
	        }
	        if(arr[vertice][i]==1)
	        {
	            count++;
	            countVerticesOfSubtree(i,count);
	        }
	    }
		return count;
	}

}
