HFBML = {
    internal_name = "hfbml",
    title = "Hell Factorio Basic Mod Library"
}
HFBML.version = "0.18.0"

function HFBML.load(path)
    log("Load file \""..path.."\"")
    require(path)
end

function HFBML.LoadData(...)
    for _, prototype_type in ipairs({...}) do
        HFBML.load(prototype_type .. "init-data")
    end
end

function HFBML.LoadDataUpdates(...)
    for _, prototype_type in ipairs({...}) do
        HFBML.load(prototype_type .. "init-data-update")
    end
end

function HFBML.LoadDataFinal(...)
    for _, prototype_type in ipairs({...}) do
        HFBMl.load(prototype_type .. "init-data-final")
    end
end