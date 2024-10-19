-- Function to save configuration to a file
local function saveCfg(fileName, content)
    local folderName = ".RezWareFucker/cfg"
    
    if not isfolder(folderName) then
        makefolder(folderName)
    end
    
    local filePath = folderName .. "/" .. fileName
    writefile(filePath, content)
    print("Configuration '" .. fileName .. "' has been successfully saved.")
end

-- Function to load configuration from a file
local function loadCfg(fileName)
    local folderName = ".RezWareFucker/cfg"
    local filePath = folderName .. "/" .. fileName
    
    if isfile(filePath) then
        local content = readfile(filePath)
        return content
    else
        print("File '" .. fileName .. "' not found.")
        return nil
    end
end
