# Kuan V, Denaxas S, Gonzalez-Izquierdo A, Direk K, Bhatti O, Husain S, Sutaria S, Hingorani M, Nitsch D, Parisinos C, Lumbers T, Mathur R, Sofat R, Casas JP, Wong I, Hemingway H, Hingorani A, 2024.

import sys, csv, re

codes = [{"code":"105680.0","system":"readv2"},{"code":"45904.0","system":"readv2"},{"code":"34669.0","system":"readv2"},{"code":"72478.0","system":"readv2"},{"code":"41148.0","system":"readv2"},{"code":"50893.0","system":"readv2"},{"code":"45523.0","system":"readv2"},{"code":"103757.0","system":"readv2"},{"code":"67261.0","system":"readv2"},{"code":"23990.0","system":"readv2"},{"code":"48057.0","system":"readv2"},{"code":"64622.0","system":"readv2"},{"code":"101453.0","system":"readv2"},{"code":"24736.0","system":"readv2"},{"code":"8607.0","system":"readv2"},{"code":"104532.0","system":"readv2"},{"code":"57784.0","system":"readv2"},{"code":"41159.0","system":"readv2"},{"code":"94842.0","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('tubulo-interstitial-nephritis-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["tubulointerstitial---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["tubulointerstitial---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["tubulointerstitial---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
