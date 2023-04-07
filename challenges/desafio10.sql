USE SpotifyClone;

CREATE TABLE fav_relacao 
(
    pessoa_id INT,
    musica_id INT,
    CONSTRAINT PRIMARY KEY(pessoa_id, musica_id),
    FOREIGN KEY (pessoa_id) REFERENCES usuario_tabela (pessoa_usuaria_id),
    FOREIGN KEY (musica_id) REFERENCES musica_tabela (cancao_id)
) engine = InnoDB;

INSERT INTO fav_relacao (pessoa_id, musica_id) VALUES (1, 1);
INSERT INTO fav_relacao (pessoa_id, musica_id) VALUES (1, 2);
INSERT INTO fav_relacao (pessoa_id, musica_id) VALUES (1, 3);
INSERT INTO fav_relacao (pessoa_id, musica_id) VALUES (2, 4);
INSERT INTO fav_relacao (pessoa_id, musica_id) VALUES (3, 5);
INSERT INTO fav_relacao (pessoa_id, musica_id) VALUES (3, 1);
INSERT INTO fav_relacao (pessoa_id, musica_id) VALUES (4, 6);
INSERT INTO fav_relacao (pessoa_id, musica_id) VALUES (4, 4);
INSERT INTO fav_relacao (pessoa_id, musica_id) VALUES (5, 3);
INSERT INTO fav_relacao (pessoa_id, musica_id) VALUES (5, 7);
INSERT INTO fav_relacao (pessoa_id, musica_id) VALUES (6, 4);
INSERT INTO fav_relacao (pessoa_id, musica_id) VALUES (7, 6);
INSERT INTO fav_relacao (pessoa_id, musica_id) VALUES (8, 1);
