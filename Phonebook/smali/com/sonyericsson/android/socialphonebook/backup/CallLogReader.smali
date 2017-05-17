.class Lcom/sonyericsson/android/socialphonebook/backup/CallLogReader;
.super Ljava/lang/Object;
.source "CallLogReader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallLogReader"


# instance fields
.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;)V
    .locals 0
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/backup/CallLogReader;->mResolver:Landroid/content/ContentResolver;

    .line 33
    return-void
.end method


# virtual methods
.method public getCallLogList()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 43
    const/4 v9, 0x0

    .line 45
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 47
    .local v7, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;>;"
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/backup/CallLogReader;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 48
    const-string/jumbo v3, "number IS NOT NULL "

    move-object v4, v2

    move-object v5, v2

    .line 47
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 50
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 52
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .end local v7    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;>;"
    .local v8, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;>;"
    :cond_0
    :try_start_1
    new-instance v6, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;

    invoke-direct {v6}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;-><init>()V

    .line 56
    .local v6, "callLog":Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;
    const-string/jumbo v0, "_id"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->setId(Ljava/lang/String;)V

    .line 57
    const-string/jumbo v0, "number"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->setNumber(Ljava/lang/String;)V

    .line 59
    const-string/jumbo v0, "presentation"

    .line 58
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->setNumberPresentation(I)V

    .line 60
    const-string/jumbo v0, "date"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->setDate(Ljava/lang/String;)V

    .line 62
    const-string/jumbo v0, "duration"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-virtual {v6, v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->setDuration(Ljava/lang/String;)V

    .line 63
    const-string/jumbo v0, "type"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->setType(I)V

    .line 64
    const-string/jumbo v0, "new"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->setNew(Ljava/lang/String;)V

    .line 66
    const-string/jumbo v0, "name"

    .line 65
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->setCachedName(Ljava/lang/String;)V

    .line 68
    const-string/jumbo v0, "numbertype"

    .line 67
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->setCachedNumberType(Ljava/lang/String;)V

    .line 70
    const-string/jumbo v0, "numberlabel"

    .line 69
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;->setCachedNumberLabel(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    move-object v7, v8

    .line 77
    .end local v6    # "callLog":Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;
    .end local v8    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;>;"
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 80
    :cond_2
    :goto_0
    return-object v7

    .line 74
    .restart local v7    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;>;"
    :catch_0
    move-exception v10

    .line 75
    .end local v7    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;>;"
    .local v10, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    const-string/jumbo v0, "CallLogReader"

    const-string/jumbo v1, "Exception in generating call logs list."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 76
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 77
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 76
    throw v0

    .restart local v8    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;>;"
    :catchall_1
    move-exception v0

    move-object v7, v8

    .end local v8    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;>;"
    .local v7, "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;>;"
    goto :goto_2

    .line 74
    .end local v7    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;>;"
    .restart local v8    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;>;"
    :catch_1
    move-exception v10

    .restart local v10    # "e":Ljava/lang/Exception;
    move-object v7, v8

    .end local v8    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;>;"
    .restart local v7    # "calls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sonyericsson/android/socialphonebook/backup/model/CallLog;>;"
    goto :goto_1
.end method
