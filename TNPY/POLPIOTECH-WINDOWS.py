import os
os.system("Title TICNOTE")


print("DANE PERSONALNE:")
print("===================================")
firstName = input("PODAJ IMIĘ: ")
secondName = input("PODAJ DRUGIE IMIĘ: ")
Surname = input("PODAJ NAZWISKO: ")
BornDate = input("PODAJ DATĘ URODZENIA: ")
PlaceBorn = input("PODAJ MIEJSCE URODZENIA: ")
IDnumber = input("PESEL: ")
IDcard = input("SERIA DOWODU / PASZPORTU / KARTY POBYTU: ")
print()
print("DANE ADRES: ")
print("===================================")
Street = input("ULICA: ")
numberHouse = input("NR DOMU/MIESZKANIA: ")
City = input("MIEJSCOWOŚĆ: ")
ZipCode = input("KOD POCZTOWY: ")
post = input("POCZTA: ")
print()
print("DANE KONTAKTOWE: ")
print("===================================")
Email = input("E-MAIL: ")
Phone = input("TELEFON: ")

import os
os.system("cls")
import time
n = 0
while n < 3:
    n = n + 1
    print(f"Loading system: {n}", "s.")
    time.sleep(1)
    import os
    os.system("cls")
print("IMIĘ I NAZWISKO: ", firstName, Surname)
print("DRUGIE IMIĘ: ", secondName)
print("DATA URODZENIA: ", BornDate)
print("MIEJSCE URODZENIA: ", PlaceBorn)
print("PESEL: ", IDnumber)
print("SERIA DOKUMENTU TOŻSAMOŚCI: ", IDcard)
print("AKTUALNY ADRES: ", Street, numberHouse, City, ",", ZipCode, post)
print("DANE KONTAKTOWE: ", "T:", Phone, ",", "E:", Email)
import os 
os.system("cls")
#import os
#os.system("type >> textPython.txt"), open(file:)

from time import sleep
formatTxt = firstName + Surname +".txt"
#fileName = str(input(f'WPISZ NAZWĘ PLIKU: {formatTxt}' )) 

print("===================================")
print("NAZWA PLIKU: ", formatTxt)
print("===================================")
sleep(2)
print()
print("\n", "IMIĘ I NAZWISKO: ", firstName, Surname, "\n",
"DRUGIE IMIĘ: ", secondName, "\n",
"DATA I MIEJSCE URODZENIA: ", BornDate, PlaceBorn, "\n",
"PESEL: ", IDnumber, "\n",
"SERIA DOKUMENTU TOŻSAMOŚCI: ", IDcard, "\n",
"AKTUALNY ADRES: ", Street, numberHouse, City, ",", ZipCode, post, "\n",
"DANE KONTAKTOWE: ", "T:", Phone, ",", "E:", Email)
print()
text = str(input('Opis: '))
print()
print()
print("===================================")
print("ZAPISANE DANE:")
print("===================================")
print("\n", "IMIĘ I NAZWISKO: ", firstName, Surname, "\n", "DRUGIE IMIĘ: ", secondName, "\n", "DATA I MIEJSCE URODZENIA: ", BornDate, PlaceBorn, "\n",
"PESEL: ", IDnumber, "\n", "SERIA DOKUMENTU TOŻSAMOŚCI: ", IDcard, "\n", "AKTUALNY ADRES: ", Street, numberHouse, City, ",", ZipCode, post, "\n", "DANE KONTAKTOWE: ", "T: ", Phone, ",", "E: ", Email, "\n", print(), text)
with open(formatTxt, 'w') as f:
    f.write(f"{firstName, Surname, secondName, BornDate, PlaceBorn, IDnumber, IDcard, Street, numberHouse, City, ZipCode, post, Phone, Email, text}")
f.close
print()
print()






