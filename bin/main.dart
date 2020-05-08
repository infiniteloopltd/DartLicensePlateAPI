import 'package:RegCheck/RegCheck.dart' as RegCheck;

void main(List<String> arguments) async {
  // Usage:
  // dart bin/main.dart *VRM* *USERNAME* *PASSWORD*
  // Where *VRM* is a UK vehicle registration mark (license plate)
  // *USERNAME* and *PASSWORD* are available from https://www.regcheck.org.uk
  var vehicle = await RegCheck.LicensePlateUK(arguments[0],arguments[1],arguments[2]);
  print('Description: ${vehicle['Description']}');
  print('Engine: ${vehicle['EngineSize']['CurrentTextValue']}');
  print('Fuel Type: ${vehicle['FuelType']['CurrentTextValue']}');
  print('Transmission: ${vehicle['Transmission']['CurrentTextValue']}');
  print('Image: ${vehicle['ImageUrl']}');  
  print('Body Style: ${vehicle['BodyStyle']['CurrentTextValue']}');
  print('Colour: ${vehicle['Colour']}');
  print('Registration Date: ${vehicle['RegistrationDate']}');
  print('Engine Number: ${vehicle['EngineNumber']}');
  print('VIN: ${vehicle['VehicleIdentificationNumber']}');
}
