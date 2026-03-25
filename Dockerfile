FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3

CMD ["python3", "-c", "def isHappy(n):\n\
    s = set()\n\
    while n != 1:\n\
        if n in s:\n\
            return False\n\
        s.add(n)\n\
        n = sum(int(i)**2 for i in str(n))\n\
    return True\n\
print(isHappy(19))\n\
print(isHappy(2))"]