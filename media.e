class MEDIA
-- Represente un media
	
creation {ANY}
	make_media,
	make_empty_media

feature {}
	titre : STRING
	nombre : INTEGER

feature {ANY}
	afficher is
		do
			io.put_string("-----------MEDIA-----------%N")
			io.put_string("Titre : " + titre + "%N")
			io.put_string("Nombre d'exemplaire : " + nombre.to_string + "%N") 
		end

	make_media (titrep: STRING; nombrep: INTEGER) is
		do
			titre := ""
			titre.copy(titrep)
			
			nombre := 0
			nombre.copy(nombrep)
		end

	make_empty_media is
		do
			titre := ""
			nombre := 0
		end	

	-- Getters

	get_titre : STRING is
        do
            Result := titre
        end

	get_nombre : INTEGER is
        do
            Result := nombre
        end

	-- Setters

	set_titre(titrep: STRING) is
        do
            titre.copy(titrep)
        end

	set_nombre(nombrep: INTEGER) is
        do
            nombre := nombrep
        end

    -- Méthode pour savoir si un media est empruntable
	est_empruntable : BOOLEAN is
		do
			if nombre > 0 then
				Result := True
			else
				Result := False
			end
		end

end -- class MEDIA
