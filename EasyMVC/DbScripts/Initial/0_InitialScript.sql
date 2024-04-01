/*Tables Scripts*/
CREATE TABLE Brand (
	BrandId INT NOT NULL, 
	Name VARCHAR(100) NOT NULL,
	CONSTRAINT [PK_Brand] PRIMARY KEY CLUSTERED (
		BrandId ASC
	)
) ON [PRIMARY]
GO

CREATE TABLE Beer (
	BeerId INT NOT NULL,
	Name VARCHAR(100) NOT NULL,
	BrandId INT NOT NULL,
	CONSTRAINT [PK_Beer] PRIMARY KEY CLUSTERED (
		BeerId ASC
	)
) ON [PRIMARY]
GO

ALTER TABLE Beer  WITH CHECK ADD  CONSTRAINT [FK_Beer_Brand] FOREIGN KEY(BrandId)
REFERENCES Brand (BrandId)
GO

ALTER TABLE Beer CHECK CONSTRAINT [FK_Beer_Brand]
GO

/*Insertion Scripts*/
INSERT INTO Brand (BrandId, Name) VALUES (1, 'Heineken');
INSERT INTO Brand (BrandId, Name) VALUES (2, 'Guinness');
INSERT INTO Brand (BrandId, Name) VALUES (3, 'Corona');
INSERT INTO Brand (BrandId, Name) VALUES (4, 'Budweiser');
INSERT INTO Brand (BrandId, Name) VALUES (5, 'Stella Artois');
GO

INSERT INTO Beer (BeerId, Name, BrandId) VALUES (1, 'Heineken Original', 1);
INSERT INTO Beer (BeerId, Name, BrandId) VALUES (2, 'Guinness Draught', 2);
INSERT INTO Beer (BeerId, Name, BrandId) VALUES (3, 'Corona Extra', 3);
INSERT INTO Beer (BeerId, Name, BrandId) VALUES (4, 'Budweiser Lager', 4);
INSERT INTO Beer (BeerId, Name, BrandId) VALUES (5, 'Stella Artois Lager', 5);
GO


