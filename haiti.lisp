(defpackage :fake-cl.haiti
  (:use
   :common-lisp
   :fake-cl.number
   :fake-cl.phone
   :fake-cl.list)
  (:export
   *code-postal*
   :city
   :phone
   :address))

(in-package :fake-cl.haiti)

(defparameter *code-postal* '(
                              (:code "HT4110" :commune "Gonaïves" :departement "artibonite")
                              (:code "HT4111" :commune "Petite Rivière de l’Artibonite" :departement "artibonite")
                              (:code "HT4120" :commune "Ennery" :departement "artibonite")
                              (:code "HT4130" :commune "L'Estère" :departement "artibonite")
                              (:code "HT4210" :commune "Gros Morne" :departement "artibonite")
                              (:code "HT4220" :commune "Terre-Neuve" :departement "artibonite")
                              (:code "HT4230" :commune "Anse-Rouge" :departement "artibonite")
                              (:code "HT4231" :commune "Sources Chaudes" :departement "artibonite")
                              (:code "HT4310" :commune "Saint-Marc" :departement "artibonite")
                              (:code "HT4311" :commune "Montrouis" :departement "artibonite")
                              (:code "HT4320" :commune "Verrettes" :departement "artibonite")
                              (:code "HT4321" :commune "Désarmes" :departement "artibonite")
                              (:code "HT4322" :commune "Deschapelles" :departement "artibonite")
                              (:code "HT4323" :commune "Liancourt" :departement "artibonite")
                              (:code "HT4410" :commune "Dessalines (Marchand-Dessalines)" :departement "artibonite")
                              (:code "HT4420" :commune "Petite-Rivière-de-l’Artibonite" :departement "artibonite")
                              (:code "HT4421" :commune "Savane à Roches" :departement "artibonite")
                              (:code "HT4430" :commune "Grande-Saline" :departement "artibonite")
                              (:code "HT4440" :commune "Desdunes" :departement "artibonite")
                              (:code "HT4510" :commune "Marmelade" :departement "artibonite")
                              (:code "HT4520" :commune "Saint-Michel-de-l’Attalaye)" :departement "artibonite")
                              (:code "HT5110" :commune " Hinche" :departement "centre")
                              (:code "HT5111" :commune "Los Palis" :departement "centre")
                              (:code "HT5120" :commune "Maïssade" :departement "centre")
                              (:code "HT5121" :commune "Louverture" :departement "centre")
                              (:code "HT5130" :commune "Thomonde" :departement "centre")
                              (:code "HT5140" :commune "Cerca-Carvajal" :departement "centre")
                              (:code "HT5210" :commune "Mirebalais" :departement "centre")
                              (:code "HT5211" :commune "Dufailly" :departement "centre")
                              (:code "HT5220" :commune "Saut-d’Eau" :departement "centre")
                              (:code "HT5230" :commune "Boucan-Carré" :departement "centre")
                              (:code "HT5231" :commune "Péligre" :departement "centre")
                              (:code "HT5310" :commune "Lascahobas" :departement "centre")
                              (:code "HT5320" :commune "Belladère" :departement "centre")
                              (:code "HT5321" :commune "Baptiste" :departement "centre")
                              (:code "HT5330" :commune "Savanette" :departement "centre")
                              (:code "HT5410" :commune "Cerca-la-Source" :departement "centre")
                              (:code "HT5411" :commune "Saltadère" :departement "centre")
                              (:code "HT5412" :commune "Lamielle" :departement "centre")
                              (:code "HT5420" :commune "Thomassique" :departement "centre")
                              (:code "HT7110" :commune "Jérémie" :departement "grand-anse")
                              (:code "HT7111" :commune  "Léon" :departement "grand-anse")
                              (:code "HT7112" :commune  "Marfranc" :departement "grand-anse")
                              (:code "HT7120" :commune  "Abricots" :departement "grand-anse")
                              (:code "HT7130" :commune  "Bonbon" :departement "grand-anse")
                              (:code "HT7140" :commune  "Moron" :departement "grand-anse")
                              (:code "HT7141" :commune  "Sources Chaudes" :departement "grand-anse")
                              (:code "HT7150" :commune  "Chambellan" :departement "grand-anse")
                              (:code "HT7210" :commune  "Anse-d’Hainault" :departement "grand-anse")
                              (:code "HT7220" :commune  "Dame-Marie" :departement "grand-anse")
                              (:code "HT7221" :commune  "Lesson" :departement "grand-anse")
                              (:code "HT7230" :commune  "Les Irois" :departement "grand-anse")
                              (:code "HT7231" :commune  "Carcasse" :departement "grand-anse")
                              (:code "HT7310" :commune  "Corail" :departement "grand-anse")
                              (:code "HT7320" :commune  "Roseaux" :departement "grand-anse")
                              (:code "HT7330" :commune  "Beaumont" :departement "grand-anse")
                              (:code "HT7340" :commune  "Pestel" :departement "grand-anse")
                              (:code "HT7410" :commune "Miragoâne" :departement "nippes")
                              (:code "HT7411" :commune "Saint-Michel-du-Sud" :departement "nippes")
                              (:code "HT7412" :commune "Paillant" :departement "nippes")
                              (:code "HT7413" :commune "Fonds-des-Nègres" :departement "nippes")
                              (:code "HT7420" :commune "Petite-Rivière-de-Nippes" :departement "nippes")
                              (:code "HT7510" :commune "Anse-à-Veau" :departement "nippes")
                              (:code "HT7520" :commune "Baradères" :departement "nippes")
                              (:code "HT7521" :commune "Grand-Boucan" :departement "nippes")
                              (:code "HT7530" :commune "Petit-Trou-de-Nippes" :departement "nippes")
                              (:code "HT7540" :commune "L’Asile" :departement "nippes")
                              (:code "HT1110" :commune "Cap-Haïtien (la ville)" :departement "nord")
                              (:code "HT1111" :commune "Bande-du-Nord (quartier du Cap)" :departement "nord")
                              (:code "HT1112" :commune "Labadie (quartier du Cap)" :departement "nord")
                              (:code "HT1113" :commune "Haut-du-Cap (quartier du Cap)" :departement "nord")
                              (:code "HT1114" :commune "Petite-Anse" :departement "nord")
                              (:code "HT1120" :commune "Quartier-Morin" :departement "nord")
                              (:code "HT1130" :commune "Limonade" :departement "nord")
                              (:code "HT1210" :commune "Acul-du-Nord" :departement "nord")
                              (:code "HT1211" :commune "La Soufrière" :departement "nord")
                              (:code "HT1220" :commune "Plaine-du-Nord" :departement "nord")
                              (:code "HT1221" :commune "Robillard" :departement "nord")
                              (:code "HT1230" :commune "Milot" :departement "nord")
                              (:code "HT1231" :commune "Carrefour-des-Pères" :departement "nord")
                              (:code "HT1310" :commune "Grande-Rivière-du-Nord" :departement "nord")
                              (:code "HT1320" :commune "Barbon" :departement "nord")
                              (:code "HT1410" :commune "Saint-Raphaël" :departement "nord")
                              (:code "HT1420" :commune "Dondon" :departement "nord")
                              (:code "HT1430" :commune "Ranquitte" :departement "nord")
                              (:code "HT1440" :commune "Pignon" :departement "nord")
                              (:code "HT1450" :commune "La Victoire" :departement "nord")
                              (:code "HT1510" :commune "Borgne" :departement "nord")
                              (:code "HT1511" :commune "Petit-Bourg-de-Borgne" :departement "nord")
                              (:code "HT1517" :commune "Côte-de-Fer et Fond" :departement "nord")
                              (:code "HT1520" :commune "Port-Margot" :departement "nord")
                              (:code "HT1521" :commune "Bayeux" :departement "nord")
                              (:code "HT1522" :commune "Margot" :departement "nord")
                              (:code "HT1610" :commune "Limbé" :departement "nord")
                              (:code "HT1611" :commune "Camp-Coq" :departement "nord")
                              (:code "HT1620" :commune "Bas-Limbé" :departement "nord")
                              (:code "HT1710" :commune "Plaisance" :departement "nord")
                              (:code "HT1720" :commune "Pilate" :departement "nord")
                              (:code "HT1723" :commune "Ravine-Trompette" :departement "nord")
                              (:code "HT2110" :commune "Fort-Liberté" :departement "nord-est")
                              (:code "HT2111" :commune "Dérac" :departement "nord-est")
                              (:code "HT2112" :commune "Acul Samedi" :departement "nord-est")
                              (:code "HT2120" :commune "Ferrier" :departement "nord-est")
                              (:code "HT2121" :commune "Maribahoux" :departement "nord-est")
                              (:code "HT2130" :commune "Perches" :departement "nord-est")
                              (:code "HT2210" :commune "Ouanaminthe" :departement "nord-est")
                              (:code "HT2220" :commune "Capotille" :departement "nord-est")
                              (:code "HT2230" :commune "Mont-Organisé" :departement "nord-est")
                              (:code "HT2310" :commune "Trou-duNord" :departement "nord-est")
                              (:code "HT2320" :commune "Sainte-Suzanne" :departement "nord-est")
                              (:code "HT2321" :commune "Dupity" :departement "nord-est")
                              (:code "HT2330" :commune "Terrier-Rouge" :departement "nord-est")
                              (:code "HT2331" :commune "Phaëton" :departement "nord-est")
                              (:code "HT2332" :commune "Paulette" :departement "nord-est")
                              (:code "HT2340" :commune "Caracol" :departement "nord-est")
                              (:code "HT2410" :commune "Vallières" :departement "nord-est")
                              (:code "HT2411" :commune "Grosse-Roche" :departement "nord-est")
                              (:code "HT2420" :commune "Carice" :departement "nord-est")
                              (:code "HT2430" :commune "Mombin-Crochu" :departement "nord-est")
                              (:code "HT2431" :commune "Bois-Laurence" :departement "nord-est")
                              (:code "HT3110" :commune "Port-de-Paix" :departement "nord-ouest")
                              (:code "HT3111" :commune "La Pointe" :departement "nord-ouest")
                              (:code "HT3120" :commune "La Tortue" :departement "nord-ouest")
                              (:code "HT3121" :commune "Pointe des Oiseaux" :departement "nord-ouest")
                              (:code "HT3122" :commune "Mare Rouge" :departement "nord-ouest")
                              (:code "HT3130" :commune "Bassin-Bleu" :departement "nord-ouest")
                              (:code "HT3140" :commune "Chansolme" :departement "nord-ouest")
                              (:code "HT3210" :commune "Saint-Louis-du-Nord" :departement "nord-ouest")
                              (:code "HT3211" :commune "Bonneau" :departement "nord-ouest")
                              (:code "HT3212" :commune "Guichard" :departement "nord-ouest")
                              (:code "HT3220" :commune "Anse-à-Foleur" :departement "nord-ouest")
                              (:code "HT3310" :commune "Môle-Saint-Nicolas" :departement "nord-ouest")
                              (:code "HT3320" :commune "Bombardopolis" :departement "nord-ouest")
                              (:code "HT3330" :commune "Baie-de-Henne" :departement "nord-ouest")
                              (:code "HT3340" :commune "Jean-Rabel" :departement "nord-ouest")
                              (:code "HT6110" :commune "Port-au-Prince" :departement "ouest")
                              (:code "HT6111" :commune " Bel-Air et Bourdon" :departement "ouest")
                              (:code "HT6112" :commune " Bas Peu de Choses" :departement "ouest")
                              (:code "HT6113" :commune " Turgeau" :departement "ouest")
                              (:code "HT6114" :commune " Bois Verna" :departement "ouest")
                              (:code "HT6115" :commune " Lalue" :departement "ouest")
                              (:code "HT6116" :commune " Carrefour Feuilles" :departement "ouest")
                              (:code "HT6117" :commune " Morne de l’Hôpital" :departement "ouest")
                              (:code "HT6118" :commune " Bolosse" :departement "ouest")
                              (:code "HT6119" :commune " Martissant et Fontamara" :departement "ouest")
                              (:code "HT6120" :commune " Delmas" :departement "ouest")
                              (:code "HT6121" :commune " Varreux" :departement "ouest")
                              (:code "HT6122" :commune " Cité soleil" :departement "ouest")
                              (:code "HT6123" :commune " Maïs Gâté, Tabarre zone 1" :departement "ouest")
                              (:code "HT6124" :commune " Petite Place Cazeau, Tabarre zone 2" :departement "ouest")
                              (:code "HT6125" :commune " Croix-des-Missions" :departement "ouest")
                              (:code "HT6130" :commune " Carrefour" :departement "ouest")
                              (:code "HT6131" :commune " Bizoton" :departement "ouest")
                              (:code "HT6132" :commune " Diquini, Thor" :departement "ouest")
                              (:code "HT6133" :commune " Côte-Page, Mahotière" :departement "ouest")
                              (:code "HT6134" :commune " Arcachon, Warney" :departement "ouest")
                              (:code "HT6135" :commune " Brochette" :departement "ouest")
                              (:code "HT6136" :commune " Lamentin, Mariani, Merger" :departement "ouest")
                              (:code "HT6140" :commune " Pétion-Ville" :departement "ouest")
                              (:code "HT6141" :commune " Frères, pergnier,peguy-ville" :departement "ouest")
                              (:code "HT6123" :commune " Tabarre (zone1)" :departement "ouest")
                              (:code "HT6124" :commune " Tabarre (zone2)" :departement "ouest")
                              (:code "HT6142" :commune " Pèlerin" :departement "ouest")
                              (:code "HT6143" :commune " Tête de l’Eau" :departement "ouest")
                              (:code "HT6144" :commune " Laboule" :departement "ouest")
                              (:code "HT6145" :commune " Thomassin 32 route Aimé-Bastient imp Laurent" :departement "ouest")
                              (:code "HT6146" :commune " Fermathe" :departement "ouest")
                              (:code "HT6147" :commune " Pergnier" :departement "ouest")
                              (:code "HT6150" :commune " Kenscoff" :departement "ouest")
                              (:code "HT6160" :commune " Gressier" :departement "ouest")
                              (:code "HT6210" :commune " Léogâne" :departement "ouest")
                              (:code "HT6211" :commune " Trouin" :departement "ouest")
                              (:code "HT6212" :commune " Orangers" :departement "ouest")
                              (:code "HT6220" :commune " PetitGoâve" :departement "ouest")
                              (:code "HT6221" :commune " Vialet" :departement "ouest")
                              (:code "HT6230" :commune " Grand Goâve" :departement "ouest")
                              (:code "HT6310" :commune " Croix-des-Bouquets" :departement "ouest")
                              (:code "HT6311" :commune " Santo" :departement "ouest")
                              (:code "HT6312" :commune " Bon Repos" :departement "ouest")
                              (:code "HT6320" :commune " Thomazeau" :departement "ouest")
                              (:code "HT6330" :commune " Ganthier" :departement "ouest")
                              (:code "HT6331" :commune " Fonds Parisien et Galette Bonbon" :departement "ouest")
                              (:code "HT6330" :commune " Cornillon" :departement "ouest")
                              (:code "HT6340" :commune " Fonds Verettes" :departement "ouest")
                              (:code "HT6410" :commune " Arcahaie" :departement "ouest")
                              (:code "HT6411" :commune " Saintard" :departement "ouest")
                              (:code "HT6420" :commune " Cabaret" :departement "ouest")
                              (:code "HT6421" :commune "Casale" :departement "ouest")
                              (:code "HT6510" :commune " Anse à Galets (La Gonâve)" :departement "ouest")
                              (:code "HT6520" :commune " Pointe à Raquette (La Gonâve)" :departement "ouest")
                              (:code "HT8110" :commune " Les Cayes" :departement "sud")
                              (:code "HT8120" :commune " Torbeck" :departement "sud")
                              (:code "HT8121" :commune " Ferme Le Blanc" :departement "sud")
                              (:code "HT8122" :commune " Ducis" :departement "sud")
                              (:code "HT8130" :commune " Chantal" :departement "sud")
                              (:code "HT8140" :commune " Camp Perrin" :departement "sud")
                              (:code "HT8150" :commune " Maniche" :departement "sud")
                              (:code "HT8160" :commune " L’Ïle à Vaches" :departement "sud")
                              (:code "HT8210" :commune " Port-Salut" :departement "sud")
                              (:code "HT8220" :commune " Saint Jean du Sud" :departement "sud")
                              (:code "HT8230" :commune " Arniquet" :departement "sud")
                              (:code "HT8310" :commune " Aquin" :departement "sud")
                              (:code "HT8311" :commune " Fond des Blanc" :departement "sud")
                              (:code "HT8312" :commune " Vieux Bourg d’Aquin" :departement "sud")
                              (:code "HT8313" :commune " La Colline" :departement "sud")
                              (:code "HT8320" :commune " Saint Louis du Sud" :departement "sud")
                              (:code "HT8330" :commune " Cavaillon" :departement "sud")
                              (:code "HT8410" :commune " Côteaux" :departement "sud")
                              (:code "HT8411" :commune " Damassin" :departement "sud")
                              (:code "HT8412" :commune " La Côte" :departement "sud")
                              (:code "HT8420" :commune " Port à Piment" :departement "sud")
                              (:code "HT8430" :commune " Roche à Bateau" :departement "sud")
                              (:code "HT8510" :commune " Chardonnières" :departement "sud")
                              (:code "HT8511" :commune " Randel" :departement "sud")
                              (:code "HT8520" :commune " Les Anglais" :departement "sud")
                              (:code "HT8530" :commune " Tiburon" :departement "sud")
                              (:code "HT8531" :commune " Cahonane" :departement "sud")
                              (:code "HT9110" :commune "Jacmel" :departement "sud-est")
                              (:code "HT9111" :commune " Marbial" :departement "sud-est")
                              (:code "HT9120" :commune " Marigot" :departement "sud-est")
                              (:code "HT9121" :commune " Seguin" :departement "sud-est")
                              (:code "HT9130" :commune " Cayes Jacmel" :departement "sud-est")
                              (:code "HT9140" :commune " La Vallée de Jacmel" :departement "sud-est")
                              (:code "HT9210" :commune " Bainet" :departement "sud-est")
                              (:code "HT9220" :commune " Côtes de Fer" :departement "sud-est")
                              (:code "HT9310" :commune " Belle-Anse" :departement "sud-est")
                              (:code "HT9311" :commune " Mapou" :departement "sud-est")
                              (:code "HT9320" :commune " Grand Gosier" :departement "sud-est")
                              (:code "HT9321" :commune " Bodarie" :departement "sud-est")
                              (:code "HT9330" :commune " Thiotte" :departement "sud-est")
                              (:code "HT9340" :commune " Anse à Pitre" :departement "sud-est")
                              (:code "HT9341" :commune " Banane" :departement "sud-est")))

(defvar *phone-number* '("+509 3~a~a~a~a~a~a~a"
                         "+509 4~a~a~a~a~a~a~a"))
(defun address ()
  (let ((code (random-from-list *code-postal*)))
    (format nil "~a, ~a, ~a, ~a, Haiti" (gen-positive-number 100) "Angle des rue capois et nicolas"
            (getf code :commune) (getf code :code))))

(defun city ()
  (getf (random-from-list *code-postal*) :commune))

(defun phone ()
  (fake-cl.phone:make-phone-number *phone-number*))
