CXX      = g++
CXXFLAGS = -std=c++17 -Wall -Wextra -O2 -Iinclude

SRCS = src/Product.cpp src/User.cpp src/ShoppingCart.cpp \
       src/Order.cpp src/RecommendationEngine.cpp \
       src/ECommerceSystem.cpp src/main.cpp

UNAME := $(shell uname -s 2>/dev/null || echo Windows)

ifeq ($(findstring Windows,$(UNAME)),)
TARGET = ecommerce
RM      = rm -f
SEP     = /
else
TARGET = ecommerce.exe
RM      = del /Q
SEP     = \
endif

all: $(TARGET)

$(TARGET):
	$(CXX) $(CXXFLAGS) $(SRCS) -o $(TARGET)

clean:
	$(RM) $(TARGET) 2>/dev/null || true
	$(RM) output.txt 2>/dev/null || true

run: all
	@mkdir -p data
	./$(TARGET)
