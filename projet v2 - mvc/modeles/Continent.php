<?php
class Continent
{

    /**
     * numero du continent
     *
     * @var int
     */
    private $num;

    /**
     * Libelle du continent
     *
     * @var string
     */
    private $libelle;

    /**
     * Get the value of num
     */
    public function getNum()
    {
        return $this->num;
    }

    /**
     * Lit le libelle
     *
     * @return string
     */
    public function getLibelle()
    {
        return $this->libelle;
    }

    /**
     * ecrit dans le libellé
     *
     * @param string $libelle
     * @return self
     */
    public function setLibelle(string $libelle)
    {
        $this->libelle = $libelle;

        return $this;
    }

    /**
     * Retourne l'ensemble des continents
     *
     * @return Continent[] tableau d'objet continent
     */
    public static function findAll()
    {
        $req = monPdo::getInstance()->prepare("SELECT * FROM `continent`");
        $req->setFetchMode(PDO::FETCH_CLASS | PDO::FETCH_PROPS_LATE, 'Continent');
        $req->execute();
        $lesResultats = $req->fetchAll();
        return $lesResultats;
    }

    /**
     * Trouve un continent par son num
     *
     * @param integer $id numéro du continent
     * @return Continent objet continent trouvé
     */
    public static function findById(int $id)
    {
        $req = monPdo::getInstance()->prepare("Select * from continent where num= :id");
        $req->setFetchMode(PDO::FETCH_CLASS | PDO::FETCH_PROPS_LATE, 'Continent');
        $req->bindParam(':id', $id);
        $req->execute();
        $leResultats = $req->fetch();
        return $leResultats;
    }

    /**
     * Permet d'ajouter un continent
     *
     * @param Continent $continent continent à ajouter
     * @return integer resultat (1 si l'opération a réussi, 0 sinon)
     */
    public static function add(Continent $continent)
    {
        $req = monPdo::getInstance()->prepare("insert into continent(libelle) values(:libelle)");
        $libelle = $continent->getLibelle();
        $req->bindParam(':libelle', $libelle);
        $nb = $req->execute();
        return $nb;
    }

    /**
     * permet de modifier un continent
     *
     * @param Continent $continent continent à modifier
     * @return integer resultat (1 si l'opération a réussi, 0 sinon)
     */
    public static function update(Continent $continent)
    {
        $req = monPdo::getInstance()->prepare("update continent set libelle= :libelle where num= :id");
        $num = $continent->getNum();
        $libelle = $continent->getLibelle();
        $req->bindParam(':id', $num);
        $req->bindParam(':libelle', $libelle);
        $nb = $req->execute();
        return $nb;
    }

    /**
     * Permet de supprimer un continent
     *
     * @param Continent $continent
     * @return integer
     */
    public static function delete(Continent $continent)
    {
        $req = monPdo::getInstance()->prepare("delete from continent where num= :id");
        $num = $continent->getNum();
        $req->bindParam(':id', $num);
        $nb = $req->execute();
        return $nb;
    }


    /**
     * Set numero du continent
     *
     * @param  int  $num  numero du continent
     *
     * @return  self
     */
    public function setNum(int $num)
    {
        $this->num = $num;

        return $this;
    }
}
