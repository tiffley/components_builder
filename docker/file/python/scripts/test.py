import pandas

di = {'Page_ID': [1,2,3], 'page_name': [1,2,3], 'Card_IDs': [4,2,5]}
df = pandas.DataFrame(di)

print(df.to_string())

