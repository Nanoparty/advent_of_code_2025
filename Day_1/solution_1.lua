local lock = 50
local zeros = 0
for line in io.lines("Input.txt") do
    local direction = line:sub(1, 1)
    local distance = tonumber(line:sub(2))
    if direction == "L" then
        lock = lock - distance
    else 
        lock = lock + distance
    end
    while lock > 99 do
        lock = lock - 100
    end
    while lock < 0 do
        lock = lock + 100
    end
    if lock == 0 then
        zeros = zeros + 1
    end
    print(lock)
end
print(zeros)
