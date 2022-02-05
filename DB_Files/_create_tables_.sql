create table customers
(
    Email varchar(40) not null
        primary key,
    FullName varchar(40) not null,
    JoinDate date not null,
    Password varchar(30) not null,
    PhoneNumber varchar(30) not null,
    AddressCity varchar(20) null,
    AddressStreet varchar(20) null,
    AddressApartmentNum int null,
    AddressPostalCode int null,
    NameOnCard varchar(100),
    CreditCardNumber varchar(16),
    ExpMonth int,
    ExpYear int,
    CVV int,
    CardOwnerID int
);


create table orders
(
    OrderId int auto_increment
        primary key,
    CustomerEmail varchar(40) not null,
    PurchaseDate datetime not null,
    constraint CustomerEmail___fk
        foreign key (CustomerEmail) references customers (Email)
);


create table instructors
(
    Email varchar(40) not null
        primary key,
    FullName varchar(100) not null,
    ID int not null
);


create table recordedWorkouts
(
    DateTime datetime not null
        primary key,
    InstructorEmail varchar(40) not null,
    VideoLink varchar(200) not null,
    VideoTitle varchar(30) not null,
    constraint InstructorEmail___fk
        foreign key (InstructorEmail) references instructors (Email)
);


create table workouts
(
    WorkoutType varchar(20) not null,
    DateTime datetime not null
        primary key,
    InstructorEmail varchar(40) not null,
    MaxSpots int not null,
    constraint InstructorEmail1__fk
        foreign key (InstructorEmail) references instructors (Email)
);

create table entryTickets
(
    TicketType varchar(255) not null primary key,
    NumOfEntries int not null,
    Price double not null
);

create table userEntryTickets
(
    TicketId int auto_increment
        primary key,
    CustomerEmail varchar(40) not null,
    OrderID int not null,
    NumOfEntriesLeft int not null,
    TicketType varchar(255) not null,
    Price double not null,
    constraint CustomerEmail2___fk
        foreign key (CustomerEmail) references customers (Email),
    constraint OrderID___fk
        foreign key (OrderID) references orders (OrderID),
    constraint TicketType___fk
        foreign key (TicketType) references entryTickets (TicketType)
);


create table workoutsInTickets
(
    TicketId int not null,
    WorkoutDT datetime not null,
    WorkoutType varchar(20) not null,
    constraint workoutsInTickets___pk
        primary key (TicketId, WorkoutDT),
    constraint TicketId___fk
        foreign key (TicketId) references userentrytickets (TicketId),
    constraint WorkoutDT___fk
        foreign key (WorkoutDT) references workouts (DateTime)
);

-- drop table workoutsInTickets;
-- drop table userEntryTickets;
-- drop table entryTickets;
-- drop table workouts;
-- drop table recordedWorkouts;
-- drop table instructors;
-- drop table orders;
-- drop table customers;

