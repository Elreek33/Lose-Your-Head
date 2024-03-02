class developmentConfig():
    DEBUG = True
    MYSQL_HOST = 'localhost'
    MYSQL_USER = 'root'
    MYSQL_PASSWORD = ''
    MYSQL_DB = 'lyh'
    MYSQL_CURSORCLASS = 'DictCursor'
    
config = {
    'development': developmentConfig
}