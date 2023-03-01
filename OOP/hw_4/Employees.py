import datetime
import MyExceptions
dtnow = datetime.datetime.now()
today = datetime.date.today()


class Employee:
    def __init__(self, name, salary, email):
        self.name = name
        self.salary = salary
        self.email = email.lower()
        self.validate()
        self.save_email()

    def save_email(self):
        with open('emails.csv', 'a') as fp:
            fp.write(self.email + '\n')

    def validate(self):
        with open('emails.csv') as fp:
            if self.email in fp.read():
                raise MyExceptions.EmailAlreadyExistsException

    def check_salary(self):
        return today.day * self.salary

    def work(self):
        return 'I come to the office.'

    def __lt__(self, other):
        return self.salary < other.salary

    def __le__(self, other):
        return self.salary <= other.salary

    def __gt__(self, other):
        return self.salary > other.salary

    def __ge__(self, other):
        return self.salary >= other.salary

    def __eq__(self, other):
        return self.salary == other.salary

    def __ne__(self, other):
        return self.salary != other.salary


class Recruiter(Employee):
    def work(self):
        return 'I come to the office and start hiring.'

    def __str__(self):
        return 'Recruiter ' + self.name


class Developer(Employee):
    def __init__(self, name, salary, tech_stuck, email):
        super().__init__(name, salary, email)
        self.tech_stuck = tech_stuck
        self.email = email.lower()
        self.save_email()

    def work(self):
        return 'I come to the office and start coding.'

    def __str__(self):
        return 'Developer: ' + self.name

    def __add__(self, other):
        return Developer(self.name + ' ' + other.name, max([self.salary, other.salary]),
                         list(set(self.tech_stuck + other.tech_stuck)))

    def __lt__(self, other):
        return len(self.tech_stuck) < len(other.tech_stuck)

    def __le__(self, other):
        return len(self.tech_stuck) <= len(other.tech_stuck)

    def __gt__(self, other):
        return len(self.tech_stuck) > len(other.tech_stuck)

    def __ge__(self, other):
        return len(self.tech_stuck) >= len(other.tech_stuck)

    def __eq__(self, other):
        return len(self.tech_stuck) == len(other.tech_stuck)

    def __ne__(self, other):
        return len(self.tech_stuck) != len(other.tech_stuck)
