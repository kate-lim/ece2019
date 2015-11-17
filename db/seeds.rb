# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
Classmate.delete_all

# Basic course information from http://ugradcalendar.uwaterloo.ca/page/ENG-Computer-Engineering-Electrical-Engineering
Course.delete_all
Course.create!([
	{subject: 'ECE', 	number: '100A', term: '1A'},
	{subject: 'ECE', 	number: '105', 	term: '1A'},
	{subject: 'ECE', 	number: '140', 	term: '1A'},
	{subject: 'ECE', 	number: '150', 	term: '1A'},
	{subject: 'CHE', 	number: '102', 	term: '1A'},
	{subject: 'MATH', 	number: '117', 	term: '1A'},

	{subject: 'ECE', 	number: '100B',	term: '1B'},
	{subject: 'ECE', 	number: '103', 	term: '1B'},
	{subject: 'ECE', 	number: '106', 	term: '1B'},
	{subject: 'ECE', 	number: '124',	term: '1B'},
	{subject: 'ECE', 	number: '155',	term: '1B'},
	{subject: 'MATH', 	number: '119',	term: '1B'},

	{subject: 'ECE', 	number: '200A',	term: '2A'},
	{subject: 'ECE', 	number: '204A',	term: '2A'},
	{subject: 'ECE', 	number: '205',	term: '2A'},
	{subject: 'ECE', 	number: '222',	term: '2A'},
	{subject: 'ECE', 	number: '240',	term: '2A'},
	{subject: 'ECE', 	number: '250',	term: '2A'},
	{subject: 'ECE', 	number: '290',	term: '2A'},
	{subject: 'MATH', 	number: '215',	term: '2A'},

	{subject: 'ECE', 	number: '200B',	term: '2B'},
	{subject: 'ECE', 	number: '207',	term: '2B'},
	{subject: 'ECE', 	number: '242',	term: '2B'},
	{subject: 'ECE', 	number: '254', 	term: '2B',		major: 'CE'},
	{subject: 'ECE', 	number: '224', 	term: '2B',		major: 'CE'},
	{subject: 'ECE', 	number: '209', 	term: '2B', 	major: 'EE'},
	{subject: 'ECE', 	number: '204B',	term: '2B', 	major: 'EE'},
	{subject: 'ECE', 	number: '206', 	term: '2B', 	major: 'EE'},

	{subject: 'ECE', 	number: '300A',	term: '3A'},
	{subject: 'ECE', 	number: '316', 	term: '3A'},
	{subject: 'ECE', 	number: '380', 	term: '3A'},
	{subject: 'ECE', 	number: '327', 	term: '3A', 	major: 'CE'},
	{subject: 'ECE', 	number: '351', 	term: '3A', 	major: 'CE'},
	{subject: 'ECE', 	number: '331', 	term: '3A', 	major: 'EE'},
	{subject: 'ECE', 	number: '351', 	term: '3A', 	major: 'EE'},

	{subject: 'ECE', 	number: '300B', term: '3B'},
	{subject: 'ECE', 	number: '318', 	term: '3B'},
	{subject: 'ECE', 	number: '390', 	term: '3B'},
	{subject: 'ECE', 	number: '356', 	term: '3B',		major: 'CE'},
	{subject: 'ECE', 	number: '358', 	term: '3B',		major: 'CE'},
	{subject: 'ECE', 	number: '224', 	term: '3B', 	major: 'EE'},
	{subject: 'ECE', 	number: '361', 	term: '3B', 	major: 'EE'},

	{subject: 'ECE', 	number: '400A',	term: '4A'},
	{subject: 'ECE', 	number: '498A',	term: '4A'},
	{subject: 'GENE', 	number: '403', 	term: '4A'},

	{subject: 'ECE', 	number: '400B',	term: '4B'},
	{subject: 'ECE', 	number: '498B',	term: '4B'},
	{subject: 'GENE', 	number: '404', 	term: '4B'}
])