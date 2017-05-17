.class public Lcom/sonyericsson/android/socialphonebook/upgrade/Upgrade;
.super Ljava/lang/Object;
.source "Upgrade.java"


# static fields
.field private static final COUNT_KEY:Ljava/lang/String; = "count"

.field private static final NUMBER_KEY:Ljava/lang/String; = "number"

.field static final SPEEDDIAL_PREFS:Ljava/lang/String; = "speeddial"

.field static final SPEEDDIAL_PREFS_PATH:Ljava/lang/String; = "/shared_prefs/speeddial.xml"

.field private static final SPEED_DIAL_END_INDEX:I = 0x9

.field private static final SPEED_DIAL_START_INDEX:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Upgrade"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static upgrade(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/upgrade/Upgrade$1;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/upgrade/Upgrade$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 41
    return-void
.end method

.method static upgradeSpeedDialSettings(Landroid/content/Context;)V
    .locals 22
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 52
    const-string/jumbo v5, "/shared_prefs/speeddial.xml"

    .line 51
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 54
    .local v16, "prefsFilePath":Ljava/lang/String;
    new-instance v15, Ljava/io/File;

    invoke-direct/range {v15 .. v16}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .local v15, "prefsFile":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 58
    const-string/jumbo v3, "speeddial"

    const/4 v5, 0x0

    .line 57
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 60
    .local v18, "speedDialPreferences":Landroid/content/SharedPreferences;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 62
    .local v2, "contentResolver":Landroid/content/ContentResolver;
    const/4 v11, 0x2

    .local v11, "i":I
    :goto_0
    const/16 v3, 0x9

    if-gt v11, v3, :cond_2

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "count"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 65
    .local v8, "countKey":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 64
    move-object/from16 v0, v18

    invoke-interface {v0, v8, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 67
    .local v14, "position":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 68
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "number"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 70
    .local v13, "numberKey":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 69
    move-object/from16 v0, v18

    invoke-interface {v0, v13, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 72
    .local v12, "number":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 74
    const-string/jumbo v17, "data1=?"

    .line 75
    .local v17, "selection":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    .line 76
    const-string/jumbo v3, "_id"

    const/4 v5, 0x0

    aput-object v3, v4, v5

    .line 78
    .local v4, "DATA_PROJECTION":[Ljava/lang/String;
    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    .line 79
    const/4 v3, 0x0

    aput-object v12, v6, v3

    .line 82
    .local v6, "selectionArgs":[Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 83
    const-string/jumbo v5, "data1=?"

    const/4 v7, 0x0

    .line 81
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 84
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_1

    .line 86
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    new-instance v10, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;

    invoke-direct {v10, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;-><init>(Landroid/content/ContentResolver;)V

    .line 93
    .local v10, "helper":Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 94
    const/4 v5, 0x0

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 92
    move-wide/from16 v0, v20

    invoke-virtual {v10, v3, v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;->createNewEntry(IJ)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    .end local v10    # "helper":Lcom/sonyericsson/android/socialphonebook/util/SpeedDialHelper;
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 62
    .end local v4    # "DATA_PROJECTION":[Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v12    # "number":Ljava/lang/String;
    .end local v13    # "numberKey":Ljava/lang/String;
    .end local v17    # "selection":Ljava/lang/String;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 96
    .restart local v4    # "DATA_PROJECTION":[Ljava/lang/String;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    .restart local v9    # "cursor":Landroid/database/Cursor;
    .restart local v12    # "number":Ljava/lang/String;
    .restart local v13    # "numberKey":Ljava/lang/String;
    .restart local v17    # "selection":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 97
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 96
    throw v3

    .line 103
    .end local v4    # "DATA_PROJECTION":[Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v8    # "countKey":Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v12    # "number":Ljava/lang/String;
    .end local v13    # "numberKey":Ljava/lang/String;
    .end local v14    # "position":Ljava/lang/String;
    .end local v17    # "selection":Ljava/lang/String;
    :cond_2
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_3

    .line 104
    const-string/jumbo v3, "Upgrade"

    const-string/jumbo v5, "Could not delete speed dial shared preference"

    invoke-static {v3, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .end local v2    # "contentResolver":Landroid/content/ContentResolver;
    .end local v11    # "i":I
    .end local v18    # "speedDialPreferences":Landroid/content/SharedPreferences;
    :cond_3
    return-void
.end method
