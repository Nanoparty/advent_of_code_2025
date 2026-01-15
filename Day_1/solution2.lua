local lock = 50
local zeros = 0

for line in io.lines("Input.txt") do
    local direction = line:sub(1, 1)
    local distance = tonumber(line:sub(2))
    local start = lock

    if direction == "L" then
        for i = 1, distance do
            lock = lock - 1
            if lock < 0 then
                lock = lock + 100
            end
            if lock == 0 then
                zeros = zeros + 1
                print("point")
            end
        end
    else 
        for i = 1, distance do
            lock = lock + 1
            if lock > 99 then
                lock = lock - 100
            end
            if lock == 0 then
                zeros = zeros + 1
                print("point")
            end
        end
    end

    print(line .. " Starts at " .. start .. " Ends at " .. lock)

   
end
print(zeros)
