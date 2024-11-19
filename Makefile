BIN_DIR := bin/

.PHONY: all clean run

all:
	@if [ ! -d $(BIN_DIR) ]; then mkdir -p $(BIN_DIR); fi
	for d in */; do \
		if [ "$$d" != "$(BIN_DIR)" ]; then \
			cd "$$d"; \
			make; \
			cp $(BIN_DIR)* ../$(BIN_DIR); \
			cd ..; \
		fi; \
	done

clean:
	for d in */; do \
		if [ "$$d" != "$(BIN_DIR)" ]; then \
			cd "$$d"; \
			make clean; \
			cd ..; \
		fi; \
	done
	rm -rf $(BIN_DIR)*

run:
	@echo -n "Program name: "; \
	read prog_name; \
	make -C "$$prog_name" run --no-print-directory
