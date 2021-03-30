main: main.tex

args = "$(filter-out $@,$(MAKECMDGOALS))"

letter:
	if [ $(args) == "" ]; then echo "Requires a company name"; exit 1; fi;
	xelatex --shell-escape "\newcommand{\companyName}{$(args)} \input{coverletter.tex}"

main.tex:
	xelatex --shell-escape resume.tex

clean:
	latexmk -C

%:
  @:
