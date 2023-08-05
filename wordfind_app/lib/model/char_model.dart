class CharModel {
   String? currentValue;
   int? currentIndex;
   String? correctValue;
  bool hintShow;
  CharModel({
    this.correctValue,
    this.currentIndex,
    this.currentValue,
    this.hintShow = false,
  });

   _getCurrentValue(){
    if(
    correctValue!=null
    ){return currentValue;}
    else if (correctValue!=hintShow){
      return correctValue;
    }


  }
   void _clearValue(){
     currentIndex = null;
     currentValue = null;
  }

}
