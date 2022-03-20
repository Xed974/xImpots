Config = {}

Config = {
    Time = 1 * 60000, -- Intervalle de temps pour prélever les impôts
    
    Impots = { -- Montant à payer lors du jour des impots
        Chomage = 10,
        Public = 20,
        Entreprise = 30,
    },
    Gouv = false, -- true si l'argent collecté va dans comptes du Gouvernement / false si l'argent ne va pas dans les comptes du Gouvernement

}

--- Xed#1188