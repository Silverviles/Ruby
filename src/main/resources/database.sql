create table Room (
    roomId int auto_increment,
    maxCapacity int not null,
    minCapacity int not null,
    roomType varchar(50) not null,
    costPerQuarter double not null,
    costPerHalf double not null,
    costPerDay double not null,
    occupancyStatus varchar(30) not null,
    roomImg varchar(255) not null,
    createdAt timestamp not null,
    constraint Room_PK primary key (roomId)
);

create table Package (
    packageId int auto_increment,
    packageName varchar(50) not null,
    packageType varchar(50) not null,
    packageCost double not null,
    packageImg varchar(255) not null,
    effectiveDate date not null,
    discountinuedDate date not null,
    maxValidUsers int not null,
    minValidUsers int not null,
    createdAt timestamp not null,
    constraint Package_PK primary key (packageId)
);

create table Addon (
    addonId int auto_increment,
    addonName varchar(50) not null,
    addonDescription varchar(255) not null,
    addonCost double not null,
    addonQuantity int not null,
    addonImg varchar(255) not null,
    createdAt timestamp not null,
    constraint Addon_PK primary key (addonId)
);

-- Temporary table to store the package and addon relationship.
-- Once a custom package entry is created, the entries from this table will be deleted.
create table AddonToPackage(
    packageId int not null,
    addonId int not null,
    constraint AddonToPackage_FK_1 foreign key (packageId) references Package(packageId),
    constraint AddonToPackage_FK_2 foreign key (addonId) references Addon(addonId)
);

create table CustomPackage (
    CustomPackageId int auto_increment,
    packageId int not null,

);