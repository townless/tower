class EMPRUNT
-- Represente un emprunt
	
creation {ANY}
	make_emprunt

feature {}
	utilisateur: UTILISATEUR 
	media : MEDIA
	date_emprunt : TIME 

feature {ANY}

	make_emprunt (utilisateurp: UTILISATEUR; mediap: MEDIA) is
		do
			utilisateur := utilisateurp
			media := mediap
			date_emprunt := date_emprunt.update
		end	

	-- Getters

	get_utilisateur : UTILISATEUR is
        do
            Result := utilisateur
        end

	get_media : MEDIA is
        do
            Result := media 
        end

	get_date_emprunt : TIME is
        do
            Result := date_emprunt
        end

	-- Setters

	set_utilisateur(utilisateurp: UTILISATEUR) is
        do
            utilisateur := utilisateurp
        end

	set_media(mediap: STRING) is
        do
            media := mediap
        end

	set_date_emprunt(date_empruntp: TIME) is
        do
            date_emprunt := date_empruntp
        end

end -- class EMPRUNT