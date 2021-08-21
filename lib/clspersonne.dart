class Personne {
  String nom;
  String postnom;
  String adresse;
  String contact;

  Personne(this.nom, this.postnom, this.adresse, this.contact);
  String get getNom => this.nom;

  set setNom(String nom) => this.nom = nom;

  get getPostnom => this.postnom;

  set setPostnom(postnom) => this.postnom = postnom;

  get getAdresse => this.adresse;

  set setAdresse(adresse) => this.adresse = adresse;

  get getContact => this.contact;

  set setContact(contact) => this.contact = contact;
}
