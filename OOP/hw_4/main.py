import Employees
import MyExceptions
import traceback
from datetime import datetime
current_datetime = datetime.now()


def main():
    Haily = Employees.Recruiter('Haily', 25000, 'hailyyy5510k@gmail.com')
    Rikki = Employees.Developer('Rikki', 35000, ['Python'], 'rikkostrovska@gmail.com')
    Georg = Employees.Developer('Georg', 45000, ['Python', 'C++'], 'karakardarGG@gmail.com')
    Soya = Employees.Developer('Soya', 45000, ['C#', 'Ruby'], 'ssoyaa300101@gmail.com')


if __name__ == '__main__':
    try:
        main()
    except MyExceptions.EmailAlreadyExistsException as err:
        with open('logs.txt', 'a') as fp:
            fp.write(str(current_datetime) + ' | ' + traceback.format_exc() + '\n')