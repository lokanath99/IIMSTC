void main(){
  List a = [1,2,3,5];
  // int b = 6;
  double res;
  try {
    res = a[7];
    print(res);
  }on RangeError{
    print('hey its a wrond index try giving index in range');
  }catch(ex){
    print("catch block here: ${ex}");
  }finally{
    print('Hi from Finally');
  }


}