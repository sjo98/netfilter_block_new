all: 1m_block

1m_block: main.o
	g++ -o 1m_block main.o -lnetfilter_queue

main.o: main.cpp
	g++ -c -o main.o main.cpp -lnetfilter_queue

clean:
	rm -f 1m_block *.o
