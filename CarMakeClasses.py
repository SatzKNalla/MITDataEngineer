
import pgeocode

global myZipCode
global myCountryCode

myZipCode = 19403
myCountryCode = 'US'

def CarMakeCountry(iCountry):
    CarMakes= {
                'Japan' : ['Honda','Toyota']
                ,'Sweden' : ['Volvo']
                ,'Germany' : ['Audi','BMW']
                ,'US' : ['GMC','Tesla','Ford']
                ,'South Korea' : ['Kia','Hyundai']
                }

    for key, value in CarMakes.items():
        if iCountry.upper() in [x.upper() for x in value]:
            return key

class CarModels:
    def __init__(self, Year, Make, Model, Color, Cylinders, Country, Zipcode, Mileage, Price, Currency, BodyType, Fuel, Drivetrain):
        self.Year = Year
        self.Make = Make
        self.Model = Model
        self.Color = Color
        self.Cylinders = Cylinders
        self.Zipcode = Zipcode
        self.Country = Country
        self.Mileage = Mileage
        self.Price = Price
        self.Currency = Currency
        self.BodyType = BodyType
        self.Fuel = Fuel
        self.Drivetrain = Drivetrain
    
    def CarSummary(self):
        dist = pgeocode.GeoDistance(myCountryCode)
        distance = dist.query_postal_code(str(myZipCode), str(self.Zipcode))
        carCountry = CarMakeCountry(self.Make)
        CylindersDesc =  ''
        
        if self.Mileage <= 100:
            carCondition = 'Brand New'
        elif self.Mileage <= 10000:
            carCondition = 'Pretty New'
        elif self.Mileage <= 10000:
            carCondition = 'Used'
        elif self.Mileage <= 50000:
            carCondition = 'Pretty Used'
        else:
            carCondition = 'Pretty Old'

        
        if self.Drivetrain == 'FWD':
            DrivetrainDesc = 'Front Wheel Drive'
        elif self.Drivetrain == 'AWD':
            DrivetrainDesc = 'All Wheel Drive'
            
        if self.Cylinders > 0:
            CylindersDesc = f"it has {self.Cylinders} cylinders,"
            
        SummaryStatement = (
                                f"{self.Make} {self.Model} which is {self.Year} built, which is years old,"
                                f" its {self.Color} in color, its a {carCondition}"
                                f" {DrivetrainDesc} car in {self.BodyType} type, it runs on {self.Fuel},{CylindersDesc}"
                                f" and this Car has a mileage of {self.Mileage}  miles, "
                                f" the listing price is {self.Currency} {self.Price}, "
                                f"the car is {int(distance)}"
                                f" Miles away from your current location."
                            )
        return SummaryStatement


HondaAccord = CarModels(2022, 'Honda', 'Accord', 'Black', 4, 'US', 11356, 1000, 20000, 'USD', 'Sedan',  'Gasoline', 'FWD')
HondaCRV = CarModels(2020, 'Honda', 'CRV', 'White', 4, 'US', 27506, 12500, 50000, 'USD', 'Sedan',  'Gasoline', 'AWD')
TeslaModel3 = CarModels(2023, 'Tesla', 'Model 3', 'Red', 0, 'US', 27560, 7500, 55000, 'USD', 'Sedan',  'Electric', 'FWD')
TeslaModelY = CarModels(2021, 'Tesla', 'Model Y', 'Blue', 0, 'US', 19406, 12500, 72000, 'USD', 'Sedan',  'Electric', 'FWD')
ToyotaPrius = CarModels(2019, 'Toyota', 'Prius', 'Silver', 4, 'US', 19406, 50000, 20000, 'USD', 'Sedan',  'Hybrid', 'FWD')

print(HondaAccord.CarSummary())
print("\n")
print(HondaCRV.CarSummary())
print("\n")
print(TeslaModel3.CarSummary())
print("\n")
print(TeslaModelY.CarSummary())
print("\n")
print(ToyotaPrius.CarSummary())


