.class public Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;
.super Ljava/lang/Object;
.source "CurrentContactsIdListManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CurrentContactsIdListManager"

.field private static sInstance:Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;


# instance fields
.field private mContactIdList:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->sInstance:Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;

    .line 34
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->mContactIdList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 42
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->sInstance:Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->sInstance:Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;

    .line 54
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->sInstance:Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clearList()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->mContactIdList:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->mContactIdList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 262
    :cond_0
    return-void
.end method

.method public deleteContact(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->mContactIdList:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->mContactIdList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_0
    return-void
.end method

.method public getAllContacts()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->mContactIdList:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getContactVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 181
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->mContactIdList:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->mContactIdList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 184
    :cond_0
    return-object v1
.end method

.method public hasContact(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->mContactIdList:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->mContactIdList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 117
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public loadIdList(Landroid/content/Context;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    const/4 v5, 0x0

    .line 64
    .local v5, "inputStream":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v9, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    .line 65
    const-string/jumbo v13, "contacts_state"

    .line 64
    invoke-direct {v9, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67
    .local v9, "localFile":Ljava/io/File;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .local v6, "inputStream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I

    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    move-result v12

    if-lez v12, :cond_1

    .line 70
    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I

    move-result v12

    new-array v0, v12, [B

    .line 72
    .local v0, "buffer":[B
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v12

    const/4 v13, -0x1

    if-eq v12, v13, :cond_1

    .line 73
    new-instance v4, Ljava/lang/String;

    const-string/jumbo v12, "UTF-8"

    invoke-direct {v4, v0, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 75
    .local v4, "fileData":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 76
    new-instance v10, Ljava/util/StringTokenizer;

    .line 77
    const-string/jumbo v12, "\n"

    .line 76
    invoke-direct {v10, v4, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .local v10, "tokenizer":Ljava/util/StringTokenizer;
    new-instance v12, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v12}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v12, p0, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->mContactIdList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 82
    :goto_0
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 83
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "data":Ljava/lang/String;
    const/16 v12, 0x2c

    invoke-virtual {v1, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v1, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 85
    .local v8, "key":Ljava/lang/String;
    const/16 v12, 0x2c

    invoke-virtual {v1, v12}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 86
    .local v11, "value":Ljava/lang/String;
    iget-object v12, p0, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->mContactIdList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v12, v8, v11}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 91
    .end local v0    # "buffer":[B
    .end local v1    # "data":Ljava/lang/String;
    .end local v4    # "fileData":Ljava/lang/String;
    .end local v8    # "key":Ljava/lang/String;
    .end local v10    # "tokenizer":Ljava/util/StringTokenizer;
    .end local v11    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/FileNotFoundException;
    move-object v5, v6

    .line 92
    .end local v6    # "inputStream":Ljava/io/FileInputStream;
    .end local v9    # "localFile":Ljava/io/File;
    :goto_1
    :try_start_2
    const-string/jumbo v12, "CurrentContactsIdListManager"

    .line 93
    const-string/jumbo v13, "No data was backed up previously hence taking complete backup of contacts."

    .line 92
    invoke-static {v12, v13}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 98
    if-eqz v5, :cond_0

    .line 99
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 61
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_2
    return-void

    .line 98
    .restart local v6    # "inputStream":Ljava/io/FileInputStream;
    .restart local v9    # "localFile":Ljava/io/File;
    :cond_1
    if-eqz v6, :cond_2

    .line 99
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_3
    move-object v5, v6

    .end local v6    # "inputStream":Ljava/io/FileInputStream;
    .local v5, "inputStream":Ljava/io/FileInputStream;
    goto :goto_2

    .line 101
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v6    # "inputStream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v3

    .line 102
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v12, "CurrentContactsIdListManager"

    const-string/jumbo v13, "Exception in closing version file stream"

    invoke-static {v12, v13}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 94
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "inputStream":Ljava/io/FileInputStream;
    .end local v9    # "localFile":Ljava/io/File;
    .local v5, "inputStream":Ljava/io/FileInputStream;
    :catch_2
    move-exception v7

    .line 95
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .local v7, "ioe":Ljava/io/IOException;
    :goto_4
    :try_start_5
    const-string/jumbo v12, "CurrentContactsIdListManager"

    const-string/jumbo v13, "Previously backedup data cannot be read. Taking fresh backup."

    invoke-static {v12, v13}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 98
    if-eqz v5, :cond_0

    .line 99
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    .line 101
    :catch_3
    move-exception v3

    .line 102
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v12, "CurrentContactsIdListManager"

    const-string/jumbo v13, "Exception in closing version file stream"

    invoke-static {v12, v13}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 101
    .end local v3    # "e":Ljava/io/IOException;
    .end local v7    # "ioe":Ljava/io/IOException;
    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v3

    .line 102
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v12, "CurrentContactsIdListManager"

    const-string/jumbo v13, "Exception in closing version file stream"

    invoke-static {v12, v13}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 96
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 98
    :goto_5
    if-eqz v5, :cond_3

    .line 99
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 96
    :cond_3
    :goto_6
    throw v12

    .line 101
    :catch_5
    move-exception v3

    .line 102
    .restart local v3    # "e":Ljava/io/IOException;
    const-string/jumbo v13, "CurrentContactsIdListManager"

    const-string/jumbo v14, "Exception in closing version file stream"

    invoke-static {v13, v14}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 96
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v6    # "inputStream":Ljava/io/FileInputStream;
    .restart local v9    # "localFile":Ljava/io/File;
    :catchall_1
    move-exception v12

    move-object v5, v6

    .end local v6    # "inputStream":Ljava/io/FileInputStream;
    .local v5, "inputStream":Ljava/io/FileInputStream;
    goto :goto_5

    .line 91
    .end local v9    # "localFile":Ljava/io/File;
    .local v5, "inputStream":Ljava/io/FileInputStream;
    :catch_6
    move-exception v2

    .restart local v2    # "e":Ljava/io/FileNotFoundException;
    goto :goto_1

    .line 94
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "inputStream":Ljava/io/FileInputStream;
    .restart local v6    # "inputStream":Ljava/io/FileInputStream;
    .restart local v9    # "localFile":Ljava/io/File;
    :catch_7
    move-exception v7

    .restart local v7    # "ioe":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "inputStream":Ljava/io/FileInputStream;
    .local v5, "inputStream":Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method public saveIdList(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    const/4 v3, 0x0

    .line 216
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->mContactIdList:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->mContactIdList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 218
    new-instance v7, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    .line 219
    const-string/jumbo v9, "contacts_state"

    .line 218
    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 221
    .local v7, "localFile":Ljava/io/File;
    const-string/jumbo v8, "CurrentContactsIdListManager"

    const-string/jumbo v9, "version file created "

    invoke-static {v8, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v8, "\n"

    invoke-direct {v0, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 225
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->mContactIdList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 229
    .local v5, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 230
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 231
    .local v6, "key":Ljava/lang/String;
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    const-string/jumbo v8, ","

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    iget-object v8, p0, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->mContactIdList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    const-string/jumbo v8, "\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 243
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "localFile":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 244
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_1
    const-string/jumbo v8, "CurrentContactsIdListManager"

    const-string/jumbo v9, "Error in creating state file."

    invoke-static {v8, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    if-eqz v3, :cond_0

    .line 250
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    .line 211
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_0
    :goto_2
    return-void

    .line 237
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v7    # "localFile":Ljava/io/File;
    :cond_1
    :try_start_3
    const-string/jumbo v8, "CurrentContactsIdListManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "version file data : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 240
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    move-result-object v8

    const-string/jumbo v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v3, v4

    .line 249
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7    # "localFile":Ljava/io/File;
    :cond_2
    if-eqz v3, :cond_0

    .line 250
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 252
    :catch_1
    move-exception v2

    .line 253
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v8, "CurrentContactsIdListManager"

    const-string/jumbo v9, "Exception in closing version file"

    invoke-static {v8, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 245
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v2

    .line 246
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    const-string/jumbo v8, "CurrentContactsIdListManager"

    const-string/jumbo v9, "Error in writing data to state file."

    invoke-static {v8, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 249
    if-eqz v3, :cond_0

    .line 250
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 252
    :catch_3
    move-exception v2

    .line 253
    const-string/jumbo v8, "CurrentContactsIdListManager"

    const-string/jumbo v9, "Exception in closing version file"

    invoke-static {v8, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 252
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v2

    .line 253
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v8, "CurrentContactsIdListManager"

    const-string/jumbo v9, "Exception in closing version file"

    invoke-static {v8, v9}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 247
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 249
    :goto_4
    if-eqz v3, :cond_3

    .line 250
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 247
    :cond_3
    :goto_5
    throw v8

    .line 252
    :catch_5
    move-exception v2

    .line 253
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v9, "CurrentContactsIdListManager"

    const-string/jumbo v10, "Exception in closing version file"

    invoke-static {v9, v10}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 247
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v7    # "localFile":Ljava/io/File;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 243
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v1

    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto/16 :goto_1

    .line 245
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3
.end method

.method public size()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->mContactIdList:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->mContactIdList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0

    .line 196
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateIdList(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 136
    const-string/jumbo v3, "account_type=? AND account_name=?"

    .line 137
    .local v3, "where":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    .line 138
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->getLocalAccountForContacts(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->type:Ljava/lang/String;

    aput-object v0, v4, v1

    .line 139
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/LocalAccountUtils;->getLocalAccountForContacts(Landroid/content/Context;)Lcom/android/contacts/common/model/account/AccountWithDataSet;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/common/model/account/AccountWithDataSet;->name:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v0, v4, v1

    .line 142
    .local v4, "whereParams":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 145
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 148
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->mContactIdList:Ljava/util/concurrent/ConcurrentHashMap;

    .line 151
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    const-string/jumbo v0, "contact_id"

    .line 152
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 155
    .local v8, "key":Ljava/lang/String;
    const-string/jumbo v0, "version"

    .line 154
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 156
    .local v9, "value":Ljava/lang/String;
    const-string/jumbo v0, "CurrentContactsIdListManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "adding contact "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " with version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->mContactIdList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 161
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "value":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 162
    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v0, "CurrentContactsIdListManager"

    const-string/jumbo v1, "Exception in loading contactlist"

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 168
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->mContactIdList:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 169
    invoke-virtual {p0, p1}, Lcom/sonyericsson/android/socialphonebook/backup/CurrentContactsIdListManager;->saveIdList(Landroid/content/Context;)V

    .line 135
    :cond_1
    return-void

    .line 164
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 163
    :catchall_0
    move-exception v0

    .line 164
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 163
    throw v0
.end method
