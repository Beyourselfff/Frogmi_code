Section 1. EXPLAINING THE CODE

class Store
    A. First, to use or generate a instance of our class Store, we have to write Store.new
    B. In our method incident_status, we will need only two dates to use the code.
    

Class Incident
    A. To create an incident, at least it must has a description, to know what's about the incident.
    B. All the incidents start's like open, but not as solved
    C. If you want to changue the status from open tu solved, you 
       must have to use the method solve!
    D.So, when you create a instance of Incident class, you only have to put the description about that, and later, the status can be changued if you need to do it.



Section 2 TESTING.
It's true that i'm studyin it, but i don't master yet the RSpec testing. So i made my testing manually in IRB console.

1. i load the "ejercicio.rb" file.
2. I create an instance from Incidents.new("example1"), to be sure that it really works.
3. Later, i do the same to the Store class, but this class has only an array as attribute(@incidents), so 
    a. First, i create an instance. store1 = Store.new and also it generates the empty array (@incidents=[])
    b. Later, i use the metod push to insert elements to the array. store.incidents.push("2").
    c. And print store1 and gave me the @incidents array with the element inside.
    D. Finally, i do a few instance variables like:
        incident4 = Incident.new('Bla 4')
        incident5 = Incident.new('Bla 5')
    to test the code.

Section 3.
¿How do I create the code, what obstacles do i found?


First, the challengue only talks about Store class, but the attributes like status, created or solved_at, let me think that maybe could be one more class(with this att) so i made the Incident class.



Store Class

Incident class
 A. I asked to myself, how con i separate the open and solved incidents in different arrays

So i used this two arrays
    #def counting_incidents
        	if @status == 'solved'
            	  incidentes_solved << incident
 	       else  
                  incidents_open << incident 
        end 
    end 
 But later, searching, i could remember the method select, to do it more directly and filtered.

 B. Also, i defined the status of the incidents in this way: 
 
	def open?
        return @open
	end 
    
	def solved?
        return @solved 
	end 
But, adding a status on the initialize method were more efficient, because there could be more than 2 status, and we will have to creat a "?" method for each one.

C. The created date, i took it as the time when the incident is registerd in to the system. (Time.now)

D. Later, y was not sure about the maximun time between the dates that include open & solved cases, 'because it says "the current maximun solution", so i assumed that "maximun solution" only talks about solved incideces, just a opened incident still not solved.
