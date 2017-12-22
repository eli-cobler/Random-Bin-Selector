#text_file = open("/Users/elicobler/Resilio_Sync/Treehouse Swift/Random Bin Selector/Auto_Bin_Insert/insert_bins_statements.txt", "a")

yale21st_bins = [  
    "A1A", "A1B", "A1C",
    "A2A", "A2B", "A2C",
    "A3A", "A3B", "A3C", "A3D",
    "A4A", "A4C", "A4D", "A4E",
    "A5A",
    "9A9", "SP"
]

broken_arrow_bins = [    
    "A1A", "A1B", "A1C", "A1D", "A1E",
    "A2A", "A2B", "A2C", "A2D", "A2E",
    "A3A", "A3B", "A3C", "A3D", "A3E",
    "A4A", "A4B", "A4C", "A4D", "A4E",
    "A5A", "A5B", "A5C", "A5D", "A5E",
    "A6A", "A6B", "A6C",
    "SO", "SOP"
]

main71st_bins = [    
    "A1L", "A1M", "A1N", "A1P", "A1Q", "A1R", "A1S", "A1T", "A1U", "A1V", "A1W", "A1X", "A1Y", "A1Z",
    "A2G", "A2H", "A2J", "A2K", "A2L", "A2M", "A2N", "A2P", "A2Q", "A2R", "A2S", "A2T", "A2U", "A2V", "A2W", "A2X", "A2Y", "A2Z",
    "A3A", "A3B", "A3C", "A3D", "A3E", "A3F", "A3G", "A3H", "A3J", "A3K", "A3L", "A3M", "A3N", "A3P", "A3Q", "A3R", "A3S", "A3T", "A3U", "A3V", "A3W", "A3X", "A3Y", "A3Z",
    "A4A", "A4B", "A4C", "A4D", "A4E", "A4F", "A4G", "A4H", "A4J", "A4K", "A4L", "A4M", "A4N", "A4P", "A4Q", "A4R", "A4S", "A4T", "A4U", "A4V", "A4W", "A4X", "A4Y", "A4Z",
    "A5A", "A5B", "A5C", "A5G", "A5H", "A5J", "A5K", "A5L", "A5M", "A5N"
]

jenks_bins = [    
    "A2A", "A2B", "A2C", "A2D", "A2E",
    "A3A", "A3B", "A3C", "A3D", "A3E",
    "A4A", "A4B", "A4C", "A4D", "A4E",
    "A5C", "A5D", "A5E",
    "A6A", "A6B", "A6C"
]

bixby_bins = [
    "A1A", "A1B", "A1C", "A1D", "A1E",
    "A2B", "A2C", "A2D", "A2E",
    "A3E",
    "A4B", "A4C", "A4D", "A4E",
    "A5A", "A5B", "A5C",
    "A6A", "A6C", "A6D", "A6E",
    "A7A", "A7B", "A7C"
]

downtown_bins = [    
    "A1B", "A1C", "A1E",
    "A2A", "A2B", "A2C", "A2D",
    "A3B", "A3C", "A3D", "A3E",
    "A4A", "A4C", "A4D", "A4E"
]

fort_smith_bins = [
    "A1A", "A1B", "A1C", "A1D", "A1E", "A1F", "A1G", "A1H", "A1J", "A1K",
    "A2A", "A2C", "A2D", "A2E", "A2F", "A2G", "A2H", "A2J", "A2K",
    "A3D", "A2E", "A3F", "A3G", "A3H", "A3J", "A3K",
    "A4A", "A4B", "A4C", "A4D", "A4E", "A4F", "A4G", "A4H", "A4J", "A4K",
    "A5A",
    "A7A", "A7B", "A7C", "A7D",
    "A8A",
    "SOP", "NDP", "1F"
]

fayetteville_bins = [
    "A1A", "A1B", "A1C", "A1E", "A1F", "A1G", "A1H", "A1J", "A1K",
    "A2A", "A2B", "A2C", "A2D", "A2E", "A2G", "A2J", "A2K",
    "A3F", "A3G", "A3H", "A3J", "A3K",
    "A4A", "A4B", "A4C", "A4D", "A4E", "A4F", "A4G", "A4H", "A4K",
    "A5A", "A5F",  "A5H", "A5J", "A5K",
    "A8A", "A8B", "A8C", "A8D",
    "SOP", "NDP", "1C"
]

owasso_bins = [
    "A1B", "A1H",
    "A2A", "A2B", "A2C", "A2D", "A2E", "A2G", "A2H", "A2J", "A2K", "A2L",
    "A3A", "A3B", "A3C", "A3D", "A3E", "A3G", "A3J", "A3K", "A3L",
    "A4A", "A4B", "A4C", "A4D", "A4E", "A4F", "A4G", "A4H", "A4J", "A4K", "A4L",
    "A5A", "A5B", "A5C", "A5D", "A5K",
    "A6A", "A6B", "A6H",
    "A7F",
    "A8G",
    "A9A", "A9B", "A9C", "A9D", "A9E",
    "DSK"
]

tahlequah_bins = [
    "A1A", "A1B", "A1C", "A1D", "A1E",
    "A2A", "A2B", "A2C", "A2D", "A2E",
    "A3A", "A3B", "A3C", "A3D", "A3E",
    "A4A", "A4B", "A4C", "A4D", "A4E",
    "A5A", "A5B", "A5C", "A5D", "A5E",
    "A6A", "A6B", "A6C"
]

def insertBA():
    table = "broken_arrow_bins"
    #text_file.write("\n******************** Broken Arrow ********************\n\n")
    text_file.write('  "%s":{\n' % table)
    #print('  "%s":{\n' % table)

    for i, bin in enumerate(broken_arrow_bins):
        #insert_statement = 'INSERT INTO `%s` (`id`,`bin`) VALUES (NULL, "%s");\n' % (table, bin)
        #print(insert_statement)
        #text_file.write(insert_statement)
        json_file = '      "bin_id_%s" : "%s",\n' % (i, bin)
        text_file.write(json_file)
        #print(json_file)

    #print("     }")
    text_file.write("     },\n")

            
def insertJenks():
    table = "jenks_bins"
    #text_file.write("\n******************** Jenks ********************\n\n")
    text_file.write('  "%s":{\n' % table)

    for i, bin in enumerate(jenks_bins):
        #insert_statement = 'INSERT INTO `%s` (`id`,`bin`) VALUES (NULL, "%s");\n' % (table, bin)
        #print(insert_statement)
        #text_file.write(insert_statement)
        json_file = '      "bin_id_%s" : "%s",\n' % (i, bin)
        text_file.write(json_file)

    text_file.write("     },\n")
        
def insertOwasso():
    table = "owasso_bins"
    #text_file.write("\n******************** Owasso ********************\n\n")
    text_file.write('  "%s":{\n' % table)
    
    for i, bin in enumerate(owasso_bins):
        #insert_statement = 'INSERT INTO `%s` (`id`,`bin`) VALUES (NULL, "%s");\n' % (table, bin)
        #print(insert_statement)
        #text_file.write(insert_statement)
        json_file = '      "bin_id_%s" : "%s",\n' % (i, bin)
        text_file.write(json_file)
    
    text_file.write("     },\n")
        
def insertTahlequah():
    table = "tahlequah_bins"
    #text_file.write("\n******************** Tahlequah ********************\n\n")
    text_file.write('  "%s":{\n' % table)
    
    for i, bin in enumerate(tahlequah_bins):
        #insert_statement = 'INSERT INTO `%s` (`id`,`bin`) VALUES (NULL, "%s");\n' % (table, bin)
        #print(insert_statement)
        #text_file.write(insert_statement)
        json_file = '      "bin_id_%s" : "%s",\n' % (i, bin)
        text_file.write(json_file)

    text_file.write("     },\n")
           
def insertFayeteville():
    table = "fayetteville_bins"
    #text_file.write("\n******************** Fayetteville ********************\n\n")
    text_file.write('  "%s":{\n' % table)
    
    for i, bin in enumerate(fayetteville_bins):
        #insert_statement = 'INSERT INTO `%s` (`id`,`bin`) VALUES (NULL, "%s");\n' % (table, bin)
        #print(insert_statement)
        #text_file.write(insert_statement)
        json_file = '      "bin_id_%s" : "%s",\n' % (i, bin)
        text_file.write(json_file)

    text_file.write("     },\n")
        
def insertFort_smith():
    table = "fort_smith_bins"
    #text_file.write("\n******************** Fort Smith ********************\n\n")
    text_file.write('  "%s":{\n' % table)
    
    for i, bin in enumerate(fort_smith_bins):
        #insert_statement = 'INSERT INTO `%s` (`id`,`bin`) VALUES (NULL, "%s");\n' % (table, bin)
        #print(insert_statement)
        #text_file.write(insert_statement)
        json_file = '      "bin_id_%s" : "%s",\n' % (i, bin)
        text_file.write(json_file)

    text_file.write("     },\n")
        
def insertDowntown():
    table = "downtown_bins"
    #text_file.write("\n******************** Downtown ********************\n\n")
    text_file.write('  "%s":{\n' % table)

    for i, bin in enumerate(downtown_bins):
        #insert_statement = 'INSERT INTO `%s` (`id`,`bin`) VALUES (NULL, "%s");\n' % (table, bin)
        #print(insert_statement)
        #text_file.write(insert_statement)
        json_file = '      "bin_id_%s" : "%s",\n' % (i, bin)
        text_file.write(json_file)

    text_file.write("     },\n")
        
def insertBixby():
    table = "bixby_bins"
    #text_file.write("\n******************** Bixby ********************\n\n")
    text_file.write('  "%s":{\n' % table)
    
    for i, bin in enumerate(bixby_bins):
        #insert_statement = 'INSERT INTO `%s` (`id`,`bin`) VALUES (NULL, "%s");\n' % (table, bin)
        #print(insert_statement)
        #text_file.write(insert_statement)
        json_file = '      "bin_id_%s" : "%s",\n' % (i, bin)
        text_file.write(json_file)

    text_file.write("     },\n")
        
def insertMain71st():
    table = "71st_bins"
    #text_file.write("\n******************** 71st ********************\n\n")
    text_file.write('  "%s":{\n' % table)

    for i, bin in enumerate(main71st_bins):
        #insert_statement = 'INSERT INTO `%s` (`id`,`bin`) VALUES (NULL, "%s");\n' % (table, bin)
        #print(insert_statement)
        #text_file.write(insert_statement)
        json_file = '      "bin_id_%s" : "%s",\n' % (i, bin)
        text_file.write(json_file)

    text_file.write("     },\n")
        
def insertYale21st():
    table = "21st_bins"
    #text_file.write("\n******************** 21st ********************\n\n")
    text_file.write('  "%s":{\nq' % table)
    
    for i, bin in enumerate(yale21st_bins):
        #insert_statement = 'INSERT INTO `%s` (`id`,`bin`) VALUES (NULL, "%s");\n' % (table, bin)
        #print(insert_statement)
        #text_file.write(insert_statement)
        json_file = '      "bin_id_%s" : "%s",\n' % (i, bin)
        text_file.write(json_file)

    text_file.write("     },\n")


text_file = open("/Users/elicobler/Resilio_Sync/Treehouse Swift/Random Bin Selector/phone_doctors_bins.json", "a")     

def main():
    text_file.write("{\n")
    #print("{")

    insertBA()
    insertJenks()
    insertBixby()
    insertDowntown()
    insertFayeteville()
    insertFort_smith()
    insertMain71st()
    insertOwasso()
    insertTahlequah()
    insertYale21st()
    
    text_file.write("\n   }\n")
    #print("   }\n}")
    
    text_file.close()

if __name__ == '__main__':
    main()