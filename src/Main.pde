final int ARRAY_LENGTH=50;



void setup(){
	float[] arr=new float[ARRAY_LENGTH];
	for (int i=0;i<ARRAY_LENGTH;i++){
		arr[i]=(float)floor(random(10000))/100;
	}
	println(arr);
	println(quicksort(arr,0,arr.length-1));
}



float[] quicksort(float[] arr,int s,int e){
	if (s<e){
		int i=quicksort_partition(arr,s,e);
		arr=quicksort(arr,s,i-1);
		arr=quicksort(arr,i+1,e);
	}
	return arr;
}



int quicksort_partition(float[] arr,int s,int e){
	float pv=arr[e];
	int i=s;
	for (int j=s;j<e;j++){
		if (arr[j]<pv){
			float tmp=arr[i];
			arr[i]=arr[j];
			arr[j]=tmp;
			i++;
		}
	}
	float tmp=arr[i];
	arr[i]=arr[e];
	arr[e]=tmp;
	return i;
}
