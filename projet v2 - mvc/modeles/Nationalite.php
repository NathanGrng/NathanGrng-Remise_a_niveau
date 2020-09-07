<?php
class Nationalite
{
    /**
     * numero du nationalite
     *
     * @var int
     */
    private $num;
    /**
     * libelle du nationalite
     *
     * @var string
     */

    private $libelle;
    /**
     * id du continent
     *
     * @var int
     */
    private $idContinent;

    /**
     * lit le num
     *
     * @return integer
     */
    public function getNum(): int
    {
        return $this->num;
    }

    /**
     * lit le libelle
     *
     * @return string
     */
    public function getLibelle(): string
    {
        return $this->libelle;
    }

    /**
     * Undocumented function
     *
     * @param string $libelle
     * @return self
     */
    public function setLibelle(string $libelle): self
    {
        $this->libelle = $libelle;

        return $this;
    }

    /**
     * Get id du continent
     *
     * @return  Continent
     */
    public function getIdContinent(): Continent
    {
        return Continent::findById($this->idContinent);
    }

    /**
     * ecrit le num continent
     *
     * @param Continent $continent
     * @return self
     */
    public function setIdContinent(Continent $continent): self
    {
        $this->idContinent = $continent->getNum();

        return $this;
    }
    /**
     * retourne l'ensemble des continent
     *
     * @return Continent[] tableau d'objet continent
     * 
     */
    public static function findAll(): array
    {
        $req = monPdo::getInstance()->prepare("select n.num, n.libelle as 'libNation', c.libelle as 'libContinent' from nationalite n, continent c where n.numContinent = c.id");
        $req->setFetchMode(PDO::FETCH_OBJ);
        $req->execute();
        $lesResultalts = $req->fetchAll();
        return $lesResultalts;
    }
    /**
     * trouve une nationalite par son num
     * 
     * @param integer $id numero du nationalite
     * @return Nationalite objet nationalite tourvé
     */
    public static function findById(int $id): Nationalite
    {

        $req = monPdo::getInstance()->prepare("Select * from nationalite where id=:id");
        $req->setFetchMode(PDO::FETCH_CLASS | PDO::FETCH_PROPS_LATE, 'nationalite');
        $req->bindParam(':id', $id);
        $req->execute();
        $leResultalts = $req->fetch();
        return $leResultalts;
    }
    /**
     * Peremet d'ajouter un nationalite 
     *
     * @param nationalite $nationalite nationalite a ajouter
     * @return Nationalite resultat (1 si l'operation a réussi,0 sinon)
     */
    public static function add(Nationalite $nationalite): int
    {
        $req = monPdo::getInstance()->prepare("inset into nationalite(libelle.numContinent)value(:libelle,:num)");
        $req->bindParam(':libelle', $nationalite->getLibelle());
        $req->bindParam(':num', $nationalite->idContinent);
        $req->execute();
        $nb = $req->fetch();
        return $nb;
    }
    /**
     * peremet de modifier un nationalite 
     *
     * @param Nationalite $nationalite nationalite a modifier
     * @return integer resultat (1 si l'operation a réussi,0 sinon)
     */
    public static function update(Nationalite $nationalite): int
    {
        $req = monPdo::getInstance()->prepare("update nationalite set libelle = :libelle,numContinent = :numContinent where id=:id");
        $req->bindParam(':libelle', $nationalite->getLibelle());
        $req->bindParam(':numContinent', $nationalite->idContinent);
        $req->bindParam(':id', $nationalite->getNum());
        $req->execute();
        $nb = $req->fetch();
        return $nb;
    }
    /**
     * peremet de supprimer un contienet
     *
     * @param Nationaliter $nationalite nationalite a supprimer
     * @return integer resultat (1 si l'operation a réussi,0 sinon)
     */
    public static function delete(Nationalite $nationalite): int
    {
        $req = monPdo::getInstance()->prepare("delete form nationalite where id=:id");
        $req->bindParam(':id', $nationalite->getNum());
        $req->execute();
        $nb = $req->fetch();
        return $nb;
    }
}
