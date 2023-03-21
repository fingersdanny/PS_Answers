n = int(input())
dp = [0] * 1001

dp[1] = 1
dp[2] = 2
dp[3] = 3
dp[4] = 5

for i in range(4, 1001):
    dp[i] = dp[i - 1] + dp[i - 2]
    
print(dp[n] % 10007)
