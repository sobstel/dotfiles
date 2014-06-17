function mongobackup {
    DIR=mongobackup

    mongodump -o /tmp/$DIR
    7z a ~/Documents/Backup/wisent.local/$DIR.7z /tmp/$DIR/*
    rm -rf /tmp/$DIR
}
