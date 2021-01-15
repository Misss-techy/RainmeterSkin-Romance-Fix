PROPERTIES =
{
  
}

function Initialize()

end


function Update()
    
    -- Get the current playing artist and track.
    measureArtist = SKIN:GetMeasure("MeasureArtist")
    currentArtist = measureArtist:GetStringValue()
  
    measureTrack = SKIN:GetMeasure("MeasurePlayer")
    currentTrack = measureTrack:GetStringValue()

    -- Get the track from the variable.
    artTrack = SKIN:GetVariable("TRACK");

    -- If the current track isn't the one we have saved update everything and refresh    
    if (currentTrack ~= artTrack) then
        
        --print("Writing track, track was " .. artTrack .. " setting track to " .. currentTrack)
        
        SKIN:Bang("!SetVariable ARTIST \"" .. currentArtist .. "\"")
        SKIN:Bang("!SetVariable TRACK \"" .. currentTrack .. "\"")

        SKIN:Bang("!WriteKeyValue Variables ARTIST \"" .. currentArtist .. "\"")
        SKIN:Bang("!WriteKeyValue Variables TRACK \"" .. currentTrack .. "\"")
        
        SKIN:Bang("!Refresh")
        
        --artTrack = SKIN:GetVariable("TRACK")
        --print("Updated to: " .. artTrack)
        --measureGetArt = SKIN:GetMeasure("MeasureGetArt")            
        --print (measureGetArt:GetOption("Url"))
    end

    return artTrack
  
end