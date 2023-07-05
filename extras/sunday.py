from datetime import date, timedelta


def sunday(d):
    '''
    Returns noon (local time) on the latest Sunday before the given date. If
    it's already Sunday, go back to the PREVIUS Sunday.

    >>> str(sunday(date(2021, 11, 21)))  # Already Sunday
    '2021-11-14'
    >>> str(sunday(date(2021, 11, 22)))  # Monday
    '2021-11-21'
    >>> str(sunday(date(2021, 11, 27)))  # Saturday
    '2021-11-21'
    >>> str(sunday(date(2021, 11, 28)))  # Sunday
    '2021-11-21'
    '''
    to_subtract = d.isoweekday()  # isoweekday returns Monday=1 to Sunday=7
    result = d - timedelta(days=to_subtract)
    return result


if __name__ == '__main__':
    print(sunday(date.today()))
