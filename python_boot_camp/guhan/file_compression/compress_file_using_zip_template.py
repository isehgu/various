#!/usr/bin/python
# ----------------------------------------------------------------------------
# ----------------------------------------------------------------------------
# Author:       <NAME>
# Created Date: <DATE>
# Description:  Perform a compression on the specified file
# ----------------------------------------------------------------------------
# ----------------------------------------------------------------------------


"""
INSTRUCTIONS:
    Create a function called 'compress_file_using_zip' that takes in
    two arguments: directory, filename
    Use os.listdir() to search through the specified directory
    Verify the requested filename is found by os.listdir()
    Create a Zipfile object to create the zipfile
    The zipfile name should be the filename + .zip extension
    Print only three lines if successful:
        1) One line introducing the function
        2) Once you find the file to compress, print:
               Compress file: <filename>
        3) Once done compressing file, print:
               Created zip archive: <zipfile name>
    Print only two lines if failed:
        1) One line introducing the function
        2) If the file was not found, print:
               Did not find <DIR+FILENAME> to compress
    Return True inside conditional if successful
    Return False inside conditional if failed
"""

# Import required modules here:
import os
import zipfile
import zlib


# Function goes here:
def compress_file_using_zip(directory,filename):
    print "compress_file_using_zip zips the named file"
    file_list = os.listdir(directory)
    if filename in file_list:
        print "Compress file: %s" % (filename)
        file_name_tuple = os.path.splitext(filename)
        #zipfile_name = file_name_tuple[0] + '.zip'
        zipfile_name = filename + '.zip'
        zip_file = zipfile.ZipFile(file=zipfile_name,mode='w')
        compression_type = zipfile.ZIP_DEFLATED
        zip_file.write(filename,compress_type=compression_type)
        zip_file.close()
        print "Created zip archive: %s" % (zipfile_name)
        return True
    else:
        print "Did not find %s%s" % (directory,filename)
        return False
# Call your function inside here:
if __name__ == '__main__':
    pass
