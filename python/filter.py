def fn_even(n):
	if n%2 == 0:
		return True
	else:
		return False

def fn_odd(n):
	if n%2 == 0:
		return False
	else:
		return True

a = filter(fn_even,range(20))	

for each in a:
    print(each)

print('-' * 20)

a = filter(fn_odd,range(20))

for each in a:
    print(each)
