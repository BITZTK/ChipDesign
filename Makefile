# 当前的绝对路径
PRJ_DIR = $(shell pwd)
# 当前生成的工程文件 .v .firrtl .json
BUILD_DIR = $(PRJ_DIR)/build
# src/main/scala下编写的对应文件/类名
mod = First
# build.rc中的object类
mill_mod = ChipDesign
# 包名
PACKAGE = xCache

default: rtl

init:
	git submodule update --init
	cd rocket-chip && git submodule update --init hardfloat cde

compile:
	mill -i ${mill_mod}.compile
	mill -i ${mill_mod}.test.compile

# rtl:
# 	@echo mod is $(mod)
# 	mill -j 16 $(mill_mod).runMain $(PACKAGE).$(mod)GenRTL -dt $(BUILD_DIR) --output-file ${mod}.v

test:
	mill -i ${mill_mod}.test.runMain $(PACKAGE).$(mod)Test -td build

raw_test:
	mill -j 16 $(mill_mod).runMain ${PACKAGE}.$(mod)RawTest -dt $(BUILD_DIR) --output-file ${mod}.v

print_verilog:
	@echo
	@cat $(PRJ_DIR)/build/${mod}.v
	@echo

idea:
	mill -i mill.idea.GenIdea/idea

amend_commit:
	@git add .
	@git commit --amend -am $(AMEND_INFO)
	@git status
	@git log

compile_asm:
	@python3 ${PRJ_DIR}/scripts/simple_asm/simple_asm.py test.asm test_out hex
	@bash ${PRJ_DIR}/scripts/simple_asm/copy_to_mem.sh
	@echo "compile done!"


.phony: rtl tests clean print_verilog idea amend_commit compile_asm test_and_log

clean:
	rm -rf generated/ out/ test_run_dir/
