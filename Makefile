objects = BaseAPI.o EWmain.o SocksBase.o Sock_Tunnel.o \
          ssocksd_pro.o rssocks_pro.o CMD_Protocol.o Lcx_Base.o 
EWhere : $(objects)
	cc -o EWhere $(objects) -lpthread
	rm *.o
forwin : $(objects)
	cc -o EWhere $(objects) -lpthread -lwsock32 
	rm *.o
clean:
	rm EWhere