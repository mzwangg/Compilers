.PHONY:expr_plus, infix2suffix, expr_plus2, assembly
expr_plus:
	yacc expr_plus.y
	gcc y.tab.c -o compute_expr_plus
	./compute_expr_plus
	rm -fr y.tab.c
	rm -fr compute_expr_plus
infix2suffix:
	yacc infix2suffix.y
	gcc y.tab.c -o compute_infix2suffix
	./compute_infix2suffix
	rm -fr y.tab.c
	rm -fr compute_infix2suffix
expr_plus2:
	yacc expr_plus2.y
	gcc y.tab.c -o compute_expr_plus2
	./compute_expr_plus2
	rm -fr y.tab.c
	rm -fr compute_expr_plus2
assembly:
	yacc assembly.y
	gcc y.tab.c -o compute_assembly
	./compute_assembly
	rm -fr y.tab.c
	rm -fr compute_assembly