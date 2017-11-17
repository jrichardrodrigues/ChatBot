import mysql.connector

cnx = mysql.connector.connect(user='root', database='delivery', password='', host='127.0.0.10')

from telegram.ext import Updater, CommandHandler, Filters, MessageHandler

def start(bot, update):
 update.message.reply_text('Olá! Tudo bem? O que você deseja comer?')

def hello(bot, update):
  update.message.reply_text(
  'Olá {} !'.format(update.message.from_user.first_name))
  
def echo(bot, update):
	nStr = update.message.text
	print(nStr)
	ocorrencia = nStr.count('Pizza')
	resposta = ""
	print(resposta)
	print(ocorrencia)
	if ocorrencia>0:
		cursor = cnx.cursor()
		query = ("SELECT `id_produto`, `nome_produto`, `tipo_produto` FROM `produto` WHERE 1")   
		#query = ("select date_format(now(),'%H:%i') as horabanco")  
		cursor.execute(query)
		for (tipo_produto) in cursor:
		    resposta = 'Nós temos {}'.format(tipo_produto)	
	if resposta != "":
		bot.send_message(chat_id=update.message.chat_id, text=resposta)   
	else:
	   bot.send_message(chat_id=update.message.chat_id, text=update.message.text)	    
	
  
def hora(bot, update):
  #cursor = cnx.cursor()   
  #query = ("select date_format(now(),'%d/%m/%Y %H:%i') as horabanco")  
  #cursor.execute(query)
   
  #for (horabanco) in cursor:
    #print(horabanco)
    #update.message.reply_text('Hora do Servidor #horáriodeverão {}'.format(horabanco))
  
  cursor.close()
  cnx.close()  

updater = Updater('496598896:AAEKAarMxKjcJCFlM4YqtFoUy_lpQ12OItM')

updater.dispatcher.add_handler(CommandHandler('start', start))
updater.dispatcher.add_handler(CommandHandler('hello', hello))
#updater.dispatcher.add_handler(CommandHandler('hora', hora))

echo_handler = MessageHandler(Filters.text, echo)
updater.dispatcher.add_handler(echo_handler)


updater.start_polling()
updater.idle()

