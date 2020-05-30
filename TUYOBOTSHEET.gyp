#TUYOBOTSHEET
#BOTZAO BOLADO QUE PROCURA INFO NA PLANILHA 

import gspread
from oauth2client.service_account import ServiceAccountCredentials

scope = ['https://spreadsheets.google.com/feeds']

credentials = ServiceAccountCredentials.from_json_keyfile_name('pythonlojatuyo-0eb2b8cc2d13.json', scope)

gc = gspread.authorize(credentials)

wks = gc.open_by_key('1Ltc8Cbqlq_JmENptM24E0b6CDuuxtvaimllnRmxlaBI')

worksheet = wks.get_worksheet(2)

#Seleciona a primeira página da planilha
worksheet = wks.get_worksheet(2)


infoloja = worksheet.row_values(24)
print(infoloja)

#Procurar valor específico
val3 = worksheet.cell(1,1).value
print(val3)