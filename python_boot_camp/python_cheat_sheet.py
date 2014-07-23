################################################################

''' Creating a string '''
str_1 = 'Python Bootcamp'


################################################################

''' Built-in String Functions'''

str_1    = 'Python Bootcamp'

### str.find()

# position_1 will contain the value 7 as the string 'Boot' begins
# at the index 7 in the string
position_1 = str_1.find('Boot')
print position_1

# position_2 will contain the value -1 as the string 'Gemini' is
# not present in the string
position_2 = str_1.find('Gemini')
print position_2

### lower() and upper()

# str_upper will contain the string 'PYTHON BOOTCAMP'
str_upper = str_1.upper()
print str_upper

# str_upper will contain the string 'python bootcamp'
str_lower = str_1.lower()
print str_lower

################################################################

''' Creating an integer '''
int_1 = 4


################################################################

''' if/else conditionals '''

if (int_1 == 4):
    print 'int_1 is equal to 4'

if (int_1 == '4'):
    print 'int_1 is equal to 4'
else:
    print "int_1 is NOT equal to the string '4'"

# To check if an element exists in a container
list_of_numbers = [1,2,3,4,5]
# *NOTE* This syntax works for any type of container
if (5 in list_of_numbers):
    print('5 is in list_of_numbers')

print("")


################################################################

''' Print formatting '''
# Output to stdout: 'It is week 4 for the Python Bootcamp'
print('It is week %d for the %s\n' % (int_1, str_1))

################################################################

''' Creating a list '''
list_1 = [1,2]

# Appending to a list
# list_1 will now be [1,2,'New Element']
list_1.append('New Element')

# Indexing a list
# This will return the element in index 2 ('New Element')
list_1[2]

# Length of a list
len(list_1)

# Iterating over a list
# This will print each element in the list
for element in list_1:
    print element

print("")

################################################################

''' Creating a tuple '''
# Tuples are immutable (they can't be changed)
tuple_1 = ('a', 5, 2)

# Indexing a tuple
# This will return the element in index 1 (5)
tuple_1[1]

# Length of a tuple
len(tuple_1)

# Iterating through a tuple
for element in tuple_1:
    print element

print("")



################################################################

''' Creating a dictionary '''
key_to_value = {}

# Adding an element to a dictionary
key_to_value['key_1'] = 'value_1'
key_to_value['key_2'] = 2

# Indexing a dictionary
# This will return 'value_1'
key_to_value['key_1']

# Length of a dictionary
len(key_to_value)

# Returns a list of the keys in the dictionary
key_to_value.keys()

# Returns a list of the values in the dictionary
key_to_value.values()

# Returns a list of tuples (the tuples will be each key/value pair)
key_to_value.items()

# Iterating over a dictionary
# When iterating over a dictionary, the for loop iterates over a list of the dictionary's keys
for key in key_to_value:
    value = key_to_value[key]
    print key, value


# To check if a key exists in the dictionary
if ('key_1' in key_to_value):
    print ('key_1 is in key_to_value!')


print("")


################################################################

''' Opening a File '''
# FileName.txt - The file we are opening
# 'r' - This means we are opening the file for reading (use 'w' for writing or 'wr' for read/writing)
file_1 = open('FileName.txt', 'r')

# Iterating over a file
# The variable 'line' will be assigned to each successive line in the file
for line in file_1:
    # rstrip will removed trailing characters including '\n' (new line characters)
    line = line.rstrip()
    print line

print("")

################################################################

''' Defining a Function '''

# Function definition
def add_two_numbers(parameter_1, parameter_2=10):
    # The values passed in by the user are assigned to parameter_1 and parameter 2
    # if the user does not pass in a value for parameter_2, the value 10 will be assigned to by default
    sum = parameter_1 + parameter_2
    
    # This value will be returned to the caller
    return sum
    
# Calling a function
result = add_two_numbers(15,12)
# result will contain the sum of the values passed in: 15 and 12, which is 27
print result
    
################################################################

''' Regular Expressions '''

# Import the regular expression module
import re

# Create a regular expression pattern and assign it to a string
# *NOTE* the parentheses are used to capture those parts of the regular expression
regex_address = '(\d+)\s([a-zA-Z]+\s[a-zA-Z]+)'
address_str = '60 Broad Street'

# Create a match object
# re.search(REGEX,STRING)
match_obj = re.search(regex_address, address_str)
address_number = match_obj.group(1) # <-- Assigned to what is captured from (\d+)
street_name = match_obj.group(2) # <-- Assigned to what is captured from ([a-zA-Z]+\s[a-zA-Z]+)
print ('The address number is: %s' % address_number)
print ('The street is: %s' % street_name)

################################################################

''' File Compression '''

# The ZIP file format is a common archive and compression standard. 
# This module provides tools to create, read, write, append, and list a ZIP file
import zipfile

# For applications that require data compression, the functions in this module allow compression and decompression, using the zlib library
# The zipfile module uses zlib to compress files
import zlib

# Create zip file in write mode ("w")
zip_file = zipfile.ZipFile(file="compressed_file.zip", mode="w")

# This is the type of compression the zipfile module will use to compress files
# When zipfile sees ZIP_DEFLATED as the compression type, it will compress the file using the zlib module internally
# This is why we MUST import zlib in addition to zipfile when compressing files
compression_type = zipfile.ZIP_DEFLATED

# Add 'MatchingEngine.log' to the zipfile using the defined compression type above (zipfile.ZIP_DEFLATED)
zip_file.write('MatchingEngine.log', compress_type=compression_type)

# Close zipfile
zip_file.close()

################################################################

''' os Module - Miscellaneous operating system interfaces '''

# This module provides a portable way of using operating system dependent functionality
import os

# Returns a list of the contents of the specified directory
# Each element is represented by as a string
file_list = os.listdir('/home/python_bootcamp/')

# Iterate over list and print each filename
for file_name in file_list:
    print file_name

# This method will take a file name and return a tuple
# The first element will contain the file name without the file extension
# The second element will contain the file extension
file_details_tuple = os.path.splitext('MatchingEngine.log')

file_name = file_details_tuple[0]
extension = file_details_tuple[1]

# This will print 'MatchingEngine'
print file_name

# This will print '.log'
print extension

# You can also assign both values of the tuple at the same time
file_name, extension = os.path.splitext('MatchingEngine.log')

# This will print 'MatchingEngine'
print file_name

# This will print '.log'
print extension

################################################################
