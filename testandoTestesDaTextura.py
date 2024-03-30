salario = float(input())
percentual = 0.04
if salario <= 400:
    percentual = 0.15
elif salario <= 800:
    percentual = 0.12
elif salario <= 1200:
    percentual = 0.10
elif salario <= 2000:
    percentual = 0.07
else:
    percentual = 0.04
reajuste = salario * percentual
percentual *= 100
salario += reajuste
print("""Novo salario: {:.2f}}
Reajuste ganho: {:.2f}
Em percentual: {} % """.format(salario, int(percentual), reajuste))