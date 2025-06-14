os.execute("chcp 65001")

local monstros = {
    {
        ['monsterName'] = "Creeper",
        ['monsterDescription'] = "Uma criatura silenciosa que explode ao se aproximar do jogador.",
        ['dropItem'] = "Pólvora",
        ['monsterSound'] = "ssss... BOOM!",
        ['favoriteEmoji'] = "💣",
        ['favoriteTime'] = "Noite",
        ['attackAttribute'] = 9,      -- Explosão poderosa
        ['defenseAttribute'] = 7,     -- Difícil de detectar (silencioso)
        ['lifeAttribute'] = 3,        -- Baixa vida
        ['speedAttribute'] = 5,       -- Velocidade média
        ['inteligenceAttribute'] = 3  -- Baixa inteligência
    },
    {
        ['monsterName'] = "Enderman",
        ['monsterDescription'] = "Criatura alta e sombria que se teletransporta e odeia ser encarada.",
        ['dropItem'] = "Pérola do Ender",
        ['monsterSound'] = "*sons distorcidos*",
        ['favoriteEmoji'] = "👁️‍🗨️",
        ['favoriteTime'] = "Noite",
        ['attackAttribute'] = 7,      -- Golpes fortes + teletransporte
        ['defenseAttribute'] = 9,     -- Alta evasão por teleporte
        ['lifeAttribute'] = 8,        -- Vida alta
        ['speedAttribute'] = 8,       -- Velocidade alta
        ['inteligenceAttribute'] = 6  -- Inteligência média
    },
    {
        ['monsterName'] = "Esqueleto",
        ['monsterDescription'] = "Ataca à distância com arco e flecha.",
        ['dropItem'] = "Ossos e flechas",
        ['monsterSound'] = "Clique-clique",
        ['favoriteEmoji'] = "🏹",
        ['favoriteTime'] = "Noite",
        ['attackAttribute'] = 6,      -- Ataque à distância
        ['defenseAttribute'] = 5,     -- Defesa média por distância
        ['lifeAttribute'] = 5,        -- Vida média
        ['speedAttribute'] = 5,       -- Velocidade média
        ['inteligenceAttribute'] = 5  -- Inteligência média
    },
    {
        ['monsterName'] = "Zumbi",
        ['monsterDescription'] = "Criatura básica que ataca em grupo e queima no sol.",
        ['dropItem'] = "Carne podre",
        ['monsterSound'] = "Uhhhh...",
        ['favoriteEmoji'] = "🧟",
        ['favoriteTime'] = "Noite",
        ['attackAttribute'] = 5,      -- Ataque corpo a corpo
        ['defenseAttribute'] = 6,     -- Defesa por quantidade (horda)
        ['lifeAttribute'] = 5,        -- Vida média
        ['speedAttribute'] = 3,       -- Velocidade baixa
        ['inteligenceAttribute'] = 2  -- Baixa inteligência
    },
    {
        ['monsterName'] = "Aranha",
        ['monsterDescription'] = "Monstro ágil que pode escalar paredes.",
        ['dropItem'] = "Linha e olho de aranha",
        ['monsterSound'] = "Chirrados rápidos",
        ['favoriteEmoji'] = "🕷️",
        ['favoriteTime'] = "Noite (mas não é hostil de dia)",
        ['attackAttribute'] = 6,      -- Ataque ágil
        ['defenseAttribute'] = 6,     -- Defesa com movimento rápido
        ['lifeAttribute'] = 5,        -- Vida média
        ['speedAttribute'] = 8,       -- Velocidade alta
        ['inteligenceAttribute'] = 3  -- Baixa inteligência
    }
}



local function getProgressBar(attribute)
    local fullChar = "■"
    local emptyChar = "▢"
    local result = ""
    for i = 1, 10, 1 do
        if i <= attribute then
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end
    return result
end

for _, monstro in ipairs(monstros) do
    print(string.rep("=", 50))
    print("|")
    print("| Nome: " .. monstro['monsterName'])
    print("| Descrição: " .. monstro['monsterDescription'])
    print("|")
    print("| Item Dropado: " .. monstro['dropItem'])
    print("| Som: " .. monstro['monsterSound'])
    print("| Emoji favorito: " .. monstro['favoriteEmoji'])
    print("| Horário favorito: " .. monstro['favoriteTime'])
    print("|")
    print("| Atributos:")
    print("| Ataque:            "    .. getProgressBar(monstro['attackAttribute']))
    print("| Defesa:            "    .. getProgressBar(monstro['defenseAttribute']))
    print("| Vida:              "    .. getProgressBar(monstro['lifeAttribute']))
    print("| Velocidade:        "    .. getProgressBar(monstro['speedAttribute']))
    print("| Inteligência:      "    .. getProgressBar(monstro['inteligenceAttribute']))
    print(string.rep("=", 50))
    print("\n")
end