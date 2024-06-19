SELECT english_title, artist
FROM views
WHERE brightnessMAX(brightness);
