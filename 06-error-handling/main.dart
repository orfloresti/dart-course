void main(List<String> args) {
  try {
    var age = null;
    int dogYears = 7;

    if( dogYears != 8) throw new Exception('Dog years must be 7');
    if(age == null) throw new UnimplementedError();

    print(age * dogYears);
  } 
  on UnimplementedError {
    print('The value was null!!!');
  }
  on NoSuchMethodError {
    print('Sorry thats not going to happen');
  }
  catch ( e ) {
    print('There was an error: ${e.toString()}');
  } 
  finally {
    print('Complete');
  }
 
}