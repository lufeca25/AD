/* Comment the next two lines if the tables do not exist*/
drop table image;
drop table usuarios;

create table usuarios (
		id_usuario varchar (256) primary key, 
		password varchar (256)
);

insert into usuarios values ('Silvia', '12345');
insert into usuarios values ('Pepito', '23456');

create table image (
        id              int NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1), /* Primary key autoincremento */
        title           varchar (256) NOT NULL,
        description     varchar (1024) NOT NULL,
        keywords        varchar (256) NOT NULL,        
        creator 	    varchar (256) NOT NULL, /* User inserting information in db */
        capture_date    varchar (10) NOT NULL,  /* Format AAAA-MM-DD asked to the user*/
        storage_date    varchar (10) NOT NULL,  /* Format AAAA-MM-DD filled automatically when stored */
        filename        varchar (512) NOT NULL, /* Only the name of the file, directory is fixed by the Web Application*/
        primary key (id) , 
	foreign key (creator) references usuarios(id_usuario)
);

INSERT INTO IMAGE (TITLE, DESCRIPTION, KEYWORDS, CREATOR, CAPTURE_DATE, STORAGE_DATE, FILENAME) 
	VALUES ('test1', 'This is an image','Keyword11, Keyword12', 'Silvia', '2023-03-02','2026-07-15','file1.jpg');   
INSERT INTO IMAGE (TITLE, DESCRIPTION, KEYWORDS, CREATOR, CAPTURE_DATE, STORAGE_DATE, FILENAME) 
	VALUES ('test2', 'This is an image','Keyword21, Keyword22', 'Silvia', '2020-03-02','2026-07-15','file2.jpg');

