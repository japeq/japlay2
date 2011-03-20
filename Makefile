CXX = g++
CXXFLAGS = -O2 -W -Wall -g `pkg-config gtkmm-2.4 --cflags`
OBJS = main.o in_mad.o common.o utils.o bencode.o

japlay2: $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $(OBJS) `pkg-config gtkmm-2.4 --libs` \
		-lmad -lao -lcrypto

clean:
	rm -rf $(OBJS)
