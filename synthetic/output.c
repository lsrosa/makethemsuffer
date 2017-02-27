for(int i=0; i<=n1; i++){
  for(int j=0; j<=n2; j++){
    temp = 0;
    for(int k=0; k<=n2; k++){
      temp += vi1[i][k]*vi2[k][j];
    }
    vo1[i][j] = temp;
  }
}
vo2 = vi1;
vo3 = vi2;
v2i0 = v1o0;
v2i1 = v1o1;
v2i2 = v1o2;
for(int i=0; i<=n21; i++){
  for(int j=0; j<=n22; j++){
    temp = 0;    for(int k=0; k<=n22; k++){
      temp += v2i1[i][k]*v2i2[k][j];
    }    v2o1[i][j] = temp;
  }
}
v2o2 = v2i1;
