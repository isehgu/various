'''This script will read through a MopsOrderbookInquiry log file and print out the number of occurrences of
each IORS order in the core appears in the log file.  This script will also print out the total number of UNIQUE IORS orders
present in the log file (in the core) as well.'''
#!/usr/bin/python
import re

# Create a variable and assign it a string that contains the regular expression you are searching for:
# *HINT*: Use parentheses to capture poritions of a regular expression:
# The regular expression should match the string below and capture the gtsOrderId and productId
# *NOTE*: The date/time is insignificant and should be be hardcoded into the regular expression
# *HINT*: Use the '.*' metacharacter to skip through portions of the string that the regular expression is not reliant on
''' -I 09-17 06:33:14.785 5700 1 IorsOrderInquiry record reconciled with core: <iors  gtsOrderId='1376394457879432000' iorsOrderId='09550800000000013331' timeInserted='2013-09-16 17:49:43' adapterName='GEB02E_22552' adapterType='ORA' marketId='XISX' instrumentName='MCD3SEP100.0C' partitionId='0' execId='1376354048676052993' clOrdId='AMA7368081313' ordStatus='New' productId='1051' securityId='72062108048631806' legSecurityId='2574372' productComplex='2' side='Buy' orderQty='5' price='-7.5200' leavesQty='5' cumQty='0' transactTime='8/13/2013 8:32:33 AM' /> '''



# Open file for reading (create file object)
target_file = open('../week_4/MopsOrderbookInquiry_0917_001_ALL.log','r')
# Create a dictionary 'order_to_count' to keep track of orders and their counts
# Key - represents the order (gtsOrderId, productId)
# Value - represents the count of that order
order_to_count = {}

# Iterate over file using a for loop
for line in target_file:
    # Remove trailing characters with the rstrip() method
 line = line.rstrip()

    # Create a match object by using the re.search(PATTERN,STRING) method
 regex = ".*IorsOrderInquiry record reconciled with core.*gtsOrderId='(\d+)'.*productId='(\d+)'.*"
 matched = re.search(regex,line)
    # If there is a match (do this by just checking if the match object exists):
 if matched:

        # Extract the gtsOrderId from the match object using the match.group(INDEX) method
  orderId = matched.group(1)

        # Extract the productId from the match object using the match.group(INDEX) method
  productId = matched.group(2)

        # Create a key for order_to_count dictionary (tuple which contains the gtsOrderId and productId)

  key_tuple = (orderId,productId)
        # If the key is not in order_to_count dictionary:
            # Add a new entry (key) into order_to_count and set the count (value) to 1
  if not(key_tuple in order_to_count):
   order_to_count[key_tuple] = 1
  else:
        # Else (if the key is in the dictionary)
            # Increase that order count(value) by 1
   order_to_count[key_tuple] += 1

# Iterate over the dictionary using a for loop and print the key (gtsOrderId, productId) and its value (count)
# *HINT* when iterating over a dictionary with a for loop, the iterator is assigned to the keys
for key in order_to_count:
 print ("%s:%d") % (key,order_to_count[key])

# Print the number of unique orders in the file (length of the dictionary)
print ("There are %d orders matched") % (len(order_to_count))
target_file.close()
