import csv
import sys
import psycopg2

if __name__ == '__main__':

    # establish connection
    connect_input = "host='localhost' dbname='general_journal' user='general_journal' password='general_journal'"
    conn = psycopg2.connect(connect_input)
    cur = conn.cursor()

    ##############################
    ## LOAD DATA FOR TRANSFERS ##
    #############################

    # open cvs file
    with open('journal_transactions.csv') as data_file:

        # define pointer to values
        reader = csv.reader(data_file, delimiter =',')

        # skip header
        next(reader)

        # load data from dataset
        for row in reader:

            # read data into transfer table
            cur.execute("INSERT INTO transfer VALUES (%s, %s, %s, %s)", (row[1], row[5], row[3], row[4]))
            conn.commit()
