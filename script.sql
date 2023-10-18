CREATE DATABASE premiacao;
USE premiacao;
DROP DATABASE premiacao;
/* nomeados_simples_logico (1): */

CREATE TABLE nomeado (
    nomeado_id int PRIMARY KEY AUTO_INCREMENT,
    artista varchar(120),
    titulo varchar(120),
    youtube varchar(120),
    creditos longtext,
    fk_categoria_categoria_id int
);


CREATE TABLE categoria (
    categoria_id int PRIMARY KEY AUTO_INCREMENT,
    nome_categoria varchar(120),
    premiado tinyint DEFAULT 0
);
select*from categoria;


 
ALTER TABLE nomeado ADD CONSTRAINT FK_nomeado_2
    FOREIGN KEY (fk_categoria_categoria_id)
    REFERENCES categoria (categoria_id)
    ON DELETE CASCADE; 
    
    INSERT INTO nomeado(artista,titulo,youtube,creditos) VALUES
    ("Gaither Vocal Band","Jesus What a Lovely Name","https://youtu.be/_4S7Me1-KSQ?si=X0S6r41wN9Iobr8y","(Writers) Jeff King, Jennifer Celeste Dawson");
    
    SELECT*FROM nomeado;
    
    -- INSERT DA TABELA NOMEADO-- 
    INSERT INTO nomeado(artista,titulo,youtube,creditos) VALUES
    ("Gaither Vocal Band","Jesus What a Lovely Name","https://youtu.be/_4S7Me1-KSQ?si=X0S6r41wN9Iobr8y","(Writers) Jeff King, Jennifer Celeste Dawson"),
    ("Jim & Melissa Brady","Welcome","https://youtu.be/kf_-Sd_fTD4?si=Mubp4d_kB8kHxAL5","(Writers) Jeff King, Jennifer Celeste Dawson"),
    ("Karen Peck & New River","The Keepers","https://youtu.be/0Nm7CL-fmk4?si=0-xrU5YeVMq7QPQW","(Writers) Karen Peck Gooch, Mitch Wong, Tony Wood"),
    ("The Steeles","A Hundred Different Altars","https://youtu.be/od4Ipmjs62o?si=b9cQ-qfv4PLDpYDS","(Writers) Brad Steele, Joel Lindsey, Brad Guldemon"),
    ("Darin & Brooke Aldridge, ft. Ricky Skaggs, Mo Pitney, Mark Fain","Jordan","https://youtu.be/wpJ6vj7X01w?si=1vH91MkKuwJ5T_kB","(Writer) Fred Rich"),
    ("Jason Crabb, Dylan Scott","Good Morning Mercy","https://youtu.be/GP87NRUAiGk?si=BxCNQeQ217mVxzXP","(Writers) Caleb Ward, Jordan Ward, Jay DeMarcus, Jason Crabb"),
    ("Tiffany Coburn, ft. Point of Grace","Matchless","https://youtu.be/ZSxqIka6K9w?si=CUgUe-LHRlrmk1Yt","(Writers) Val Dacus, Jeff Bumgardner"),
    ("Tyler Childers","Way of the Triune God (Hallelujah Version)","https://youtu.be/b2VJk4KmTV4?si=XfSiiBfMQMPj9JUg","(Writer) Tyler Childers"),
    ("Zach Williams, ft. Walker Hayes","Jesus' Fault","https://youtu.be/_J-6zBWJWhQ?si=NRMURjoZXTkXxwx5","(Writers) Michael Farren, Walker Hayes"),
    ("Blanca, ft. Jekalyn Carr","New Day","https://youtu.be/dropiKvqXOw?si=151CmMPgqWsZKkVH","(Writers) Dwan Hill, Taylor Hill, Jekalyn Carr, Anton Goransson, Isabella Sjostrand, Blanca Reyes"),
    ("Jonathan McReynolds","Your World","https://youtu.be/hq-doaKD31c?si=zThTXU1DTl8Iv1Cv","(Writers) Dee Wilson, Jonathan McReynolds"),
    ("Kierra Sheard, ft. Pastor Mike Jr.","Miracles","https://youtu.be/sFyVhUCudus?si=Ws_15OguC4vFMJGR","(Writers) J. Drew Sheard II, Kierra Sheard, Marcus Johnson"),
    ("Maverick City Music, Kirk Franklin","Bless Me","https://youtu.be/hxUnid0WmJ8?si=tbDURUw9vhIKzFW9","(Writer) Kirk Franklin"),
    ("Tye Tribbett","Get Up","https://youtu.be/iXmqYW-dSAk?si=ktGPB5ZziQQc3zRC","(Writers) Tyrone Tribbett II, Brandon Jones, Thaddaeus T. Tribbett, Christopher Michael Stevens"),
    ("Melvin Crispell III","Alright","https://youtu.be/aLfGD3uDTuI?si=zP6oPvrxzjcBx0Ml","(Writers) Reginald K. Scriven II, Solomon Headen, TK Morrison"),
    ("Tamela Mann","Finished (Live)","https://youtu.be/9UDBLWfRJBk?si=4ww_g4Jve1Ro7EZ4","(Writers) Travis Greene, Tamela Mann"),
    ("Tasha Cobbs Leonard","It Is Well","https://youtu.be/TIGWFPe9vOE?si=z2aQDkEoBDaYR9Rp","(Writers) Tasha Cobbs Leonard, Kenneth Leonard, Ricky Dillard, Zeke Listenbee"),
    ("The Walls Group","I Need You","https://youtu.be/T4mfYsJMOBM?si=Ze4lLm330qHWvym6","(Writers) Warryn Campbell, Eric Dawkins, Darrel Walls, Ahjah Walls"),
    ("VaShawn Mitchell, ft. Donnie McClurkin","See The Goodness","https://youtu.be/o2wgRrMkWGc?si=trKWoPzA7KhSnsem","(Writer) VaShawn Mitchell");
    
    INSERT INTO categoria(nome_categoria) VALUES
    ("Southern Gospel Recorded Song of the Year"),
    ("Southern Gospel Recorded Song of the Year"),
    ("Southern Gospel Recorded Song of the Year"),
    ("Southern Gospel Recorded Song of the Year"),
    ("Bluegrass/Country/Roots Recorded Song of the Year"),
    ("Bluegrass/Country/Roots Recorded Song of the Year"),
    ("Bluegrass/Country/Roots Recorded Song of the Year"),
    ("Bluegrass/Country/Roots Recorded Song of the Year"),
    ("Bluegrass/Country/Roots Recorded Song of the Year"),
    ("Contemporary Gospel Recorded Song of the Year"),
    ("Contemporary Gospel Recorded Song of the Year"),
    ("Contemporary Gospel Recorded Song of the Year"),
    ("Contemporary Gospel Recorded Song of the Year"),
    ("Contemporary Gospel Recorded Song of the Year"),
    ("Traditional Gospel Recorded Song of the Year"),
    ("Traditional Gospel Recorded Song of the Year"),
    ("Traditional Gospel Recorded Song of the Year"),
    ("Traditional Gospel Recorded Song of the Year"),
    ("Traditional Gospel Recorded Song of the Year");
    
SELECT nomeado.*, categoria.nome_categoria
FROM nomeado
INNER JOIN categoria ON nomeado.fk_categoria_categoria_id = categoria.categoria_id;

-- Associação de registros da tabela nomeado com categorias
UPDATE nomeado SET fk_categoria_categoria_id = 1 WHERE nomeado_id = 1;
UPDATE nomeado SET fk_categoria_categoria_id = 2 WHERE nomeado_id = 2;
UPDATE nomeado SET fk_categoria_categoria_id = 3 WHERE nomeado_id = 3;
UPDATE nomeado SET fk_categoria_categoria_id = 4 WHERE nomeado_id = 4;
UPDATE nomeado SET fk_categoria_categoria_id = 5 WHERE nomeado_id = 5;
UPDATE nomeado SET fk_categoria_categoria_id = 6 WHERE nomeado_id = 6;
UPDATE nomeado SET fk_categoria_categoria_id = 7 WHERE nomeado_id = 7;
UPDATE nomeado SET fk_categoria_categoria_id = 8 WHERE nomeado_id = 8;
UPDATE nomeado SET fk_categoria_categoria_id = 9 WHERE nomeado_id = 9;
UPDATE nomeado SET fk_categoria_categoria_id = 10 WHERE nomeado_id = 10;
UPDATE nomeado SET fk_categoria_categoria_id = 11 WHERE nomeado_id = 11;
UPDATE nomeado SET fk_categoria_categoria_id = 12 WHERE nomeado_id = 12;
UPDATE nomeado SET fk_categoria_categoria_id = 13 WHERE nomeado_id = 13;
UPDATE nomeado SET fk_categoria_categoria_id = 14 WHERE nomeado_id = 14;
UPDATE nomeado SET fk_categoria_categoria_id = 15 WHERE nomeado_id = 15;
UPDATE nomeado SET fk_categoria_categoria_id = 16 WHERE nomeado_id = 16;
UPDATE nomeado SET fk_categoria_categoria_id = 17 WHERE nomeado_id = 17;
UPDATE nomeado SET fk_categoria_categoria_id = 18 WHERE nomeado_id = 18;
UPDATE nomeado SET fk_categoria_categoria_id = 19 WHERE nomeado_id = 19;


