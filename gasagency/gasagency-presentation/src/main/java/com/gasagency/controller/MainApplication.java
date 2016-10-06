package com.gasagency.controller;
import java.io.*;
import java.util.*;
import java.text.*;
import java.math.*;
import java.util.regex.*;
public class MainApplication {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int n = sc.nextInt();
		Map<Integer,Integer> missingMap = new TreeMap<Integer,Integer>();
		for(int i=0;i<n;i++)
		{
		    Integer val = sc.nextInt(); 
		    if(missingMap.get(val) == null)
		    {
		        Integer count = 1;
		        missingMap.put(val,count);
		     }
		    else
		    {
		        Integer count = missingMap.get(val);
		        missingMap.put(val,++count);
		    }   
		}

		int m = sc.nextInt();
		Map<Integer,Integer> map = new TreeMap<Integer,Integer>();
		for(int i=0;i<m;i++)
		{
		    Integer val = sc.nextInt(); 
		    if(map.get(val) == null)
		    {
		        Integer count = 1;
		        map.put(val,count);
		     }
		    else
		    {
		        Integer count = map.get(val);
		        map.put(val,++count);
		    }   
		}

		for (Map.Entry<Integer, Integer> entry : map.entrySet())
		{
		       Integer key = entry.getKey();
		        Integer value = entry.getValue();
		    if(missingMap.get(key)!=null && missingMap.get(key).intValue() == value.intValue())
		        continue;
		    else
		     System.out.print(key+" ");
		}

	}

}


