# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
Classmate.delete_all
Classmate.create(name: 'Bilal', githubProfile: 'http://www.github.com', website: 'www.facebook.com')
Classmate.create(name: 'Jim', githubProfile: 'http://www.github.com', website: 'www.facebook.com')
Classmate.create(name: 'Bruce', githubProfile: 'http://www.github.com', website: 'www.facebook.com')
Classmate.create(name: 'Selena', githubProfile: 'http://www.github.com', website: 'www.facebook.com')
Classmate.create(name: 'Harvey', githubProfile: 'http://www.github.com', website: 'www.facebook.com')
Classmate.create(name: 'Jim', githubProfile: 'http://www.github.com', website: 'www.facebook.com')
Classmate.create(name: 'Bruce', githubProfile: 'http://www.github.com', website: 'www.facebook.com')
Classmate.create(name: 'Selena', githubProfile: 'http://www.github.com', website: 'www.facebook.com')
Classmate.create(name: 'Harvey', githubProfile: 'http://www.github.com', website: 'www.facebook.com')
Classmate.create(name: 'Jim', githubProfile: 'http://www.github.com', website: 'www.facebook.com')
Classmate.create(name: 'Bruce', githubProfile: 'http://www.github.com', website: 'www.facebook.com')
Classmate.create(name: 'Selena', githubProfile: 'http://www.github.com', website: 'www.facebook.com')
Classmate.create(name: 'Harvey', githubProfile: 'http://www.github.com', website: 'www.facebook.com')



# Basic course information from http://ugradcalendar.uwaterloo.ca/page/ENG-Computer-Engineering-Electrical-Engineering
CourseName.create(courseName: 'ECE', catalogNumber: '100A', term: '1A')
CourseName.create(courseName: 'ECE', catalogNumber: '105', term: '1A')
CourseName.create(courseName: 'ECE', catalogNumber: '140', term: '1A')
CourseName.create(courseName: 'ECE', catalogNumber: '150', term: '1A')
CourseName.create(courseName: 'CHE', catalogNumber: '102', term: '1A')
CourseName.create(courseName: 'MATH', catalogNumber: '117', term: '1A')

CourseName.create(courseName: 'ECE', catalogNumber: '100B', term: '1B')
CourseName.create(courseName: 'ECE', catalogNumber: '103', term: '1B')
CourseName.create(courseName: 'ECE', catalogNumber: '106', term: '1B')
CourseName.create(courseName: 'ECE', catalogNumber: '124', term: '1B')
CourseName.create(courseName: 'ECE', catalogNumber: '155', term: '1B')
CourseName.create(courseName: 'MATH', catalogNumber: '119', term: '1B')

CourseName.create(courseName: 'PD', catalogNumber: '20', term: 'COOP 1')

CourseName.create(courseName: 'ECE', catalogNumber: '200A', term: '2A')
CourseName.create(courseName: 'ECE', catalogNumber: '204A', term: '2A')
CourseName.create(courseName: 'ECE', catalogNumber: '205', term: '2A')
CourseName.create(courseName: 'ECE', catalogNumber: '222', term: '2A')
CourseName.create(courseName: 'ECE', catalogNumber: '240', term: '2A')
CourseName.create(courseName: 'ECE', catalogNumber: '250', term: '2A')
CourseName.create(courseName: 'ECE', catalogNumber: '290', term: '2A')
CourseName.create(courseName: 'MATH', catalogNumber: '215', term: '2A')

CourseName.create(courseName: 'PD', catalogNumber: '21', term: 'COOP 2')

CourseName.create(courseName: 'ECE', catalogNumber: '200B', term: '2B')
CourseName.create(courseName: 'ECE', catalogNumber: '207', term: '2B')
CourseName.create(courseName: 'ECE', catalogNumber: '242', term: '2B')
CourseName.create(courseName: 'ECE', catalogNumber: '254', term: '2B', major: 'CE')
CourseName.create(courseName: 'ECE', catalogNumber: '224', term: '2B', major: 'CE')
CourseName.create(courseName: 'ECE', catalogNumber: '209', term: '2B', major: 'EE')
CourseName.create(courseName: 'ECE', catalogNumber: '204B', term: '2B', major: 'EE')
CourseName.create(courseName: 'ECE', catalogNumber: '206', term: '2B', major: 'EE')

# CourseName.create(courseName: 'PD', catalogNumber: '21', term: 'COOP 3')

CourseName.create(courseName: 'ECE', catalogNumber: '300A', term: '3A')
CourseName.create(courseName: 'ECE', catalogNumber: '316', term: '3A')
CourseName.create(courseName: 'ECE', catalogNumber: '380', term: '3A')
CourseName.create(courseName: 'ECE', catalogNumber: '327', term: '3A', major: 'CE')
CourseName.create(courseName: 'ECE', catalogNumber: '351', term: '3A', major: 'CE')
CourseName.create(courseName: 'ECE', catalogNumber: '331', term: '3A', major: 'EE')
CourseName.create(courseName: 'ECE', catalogNumber: '351', term: '3A', major: 'EE')

# CourseName.create(courseName: 'PD', catalogNumber: '21', term: 'COOP 4')

CourseName.create(courseName: 'ECE', catalogNumber: '300B', term: '3B')
CourseName.create(courseName: 'ECE', catalogNumber: '318', term: '3B')
CourseName.create(courseName: 'ECE', catalogNumber: '390', term: '3B')
CourseName.create(courseName: 'ECE', catalogNumber: '356', term: '3B', major: 'CE')
CourseName.create(courseName: 'ECE', catalogNumber: '358', term: '3B', major: 'CE')
CourseName.create(courseName: 'ECE', catalogNumber: '224', term: '3B', major: 'EE')
CourseName.create(courseName: 'ECE', catalogNumber: '361', term: '3B', major: 'EE')

# CourseName.create(courseName: 'PD', catalogNumber: '21', term: 'COOP 5')

CourseName.create(courseName: 'ECE', catalogNumber: '400A', term: '4A')
CourseName.create(courseName: 'ECE', catalogNumber: '498A', term: '4A')
CourseName.create(courseName: 'GENE', catalogNumber: '403', term: '4A')

# CourseName.create(courseName: 'PD', catalogNumber: '21', term: 'COOP 6')

CourseName.create(courseName: 'ECE', catalogNumber: '400B', term: '4B')
CourseName.create(courseName: 'ECE', catalogNumber: '498B', term: '4B')
CourseName.create(courseName: 'GENE', catalogNumber: '404', term: '4B')
