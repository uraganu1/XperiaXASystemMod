.class public Lcom/sonymobile/settings/backup/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static SOMC_BACKUP_PROVIDER_COLUMNS:[Ljava/lang/String;

.field private static final SOMC_BACKUP_PROVIDER_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const-string/jumbo v0, "content://com.sonymobile.synchub.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 34
    sput-object v0, Lcom/sonymobile/settings/backup/Utils;->SOMC_BACKUP_PROVIDER_URI:Landroid/net/Uri;

    .line 36
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 37
    const-string/jumbo v1, "auto_backup_status"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 38
    const-string/jumbo v1, "next_auto_backup_time"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 39
    const-string/jumbo v1, "last_successful_backup_time"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 40
    const-string/jumbo v1, "last_unsuccessful_backup_location"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 41
    const-string/jumbo v1, "last_unsuccessful_backup_reason"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 42
    const-string/jumbo v1, "unsuccessful_backup_content"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 43
    const-string/jumbo v1, "waiting_for_backup_condition"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 44
    const-string/jumbo v1, "new_backup_performed"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 36
    sput-object v0, Lcom/sonymobile/settings/backup/Utils;->SOMC_BACKUP_PROVIDER_COLUMNS:[Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAutoBackupIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sonymobile.synchub.LAUNCH_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "fragmentId"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 69
    return-object v0
.end method

.method public static getBackupEditIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sonymobile.synchub.LAUNCH_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "fragmentId"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 90
    return-object v0
.end method

.method public static getBackupInfo(Landroid/content/Context;)Lcom/sonymobile/settings/backup/BackupInfo;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    .line 94
    if-nez p0, :cond_0

    .line 95
    return-object v3

    .line 98
    :cond_0
    new-instance v6, Lcom/sonymobile/settings/backup/BackupInfo;

    invoke-direct {v6}, Lcom/sonymobile/settings/backup/BackupInfo;-><init>()V

    .line 99
    .local v6, "backupInfo":Lcom/sonymobile/settings/backup/BackupInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/settings/backup/Utils;->SOMC_BACKUP_PROVIDER_URI:Landroid/net/Uri;

    .line 100
    sget-object v2, Lcom/sonymobile/settings/backup/Utils;->SOMC_BACKUP_PROVIDER_COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    .line 99
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 101
    .local v7, "cursor":Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 102
    return-object v3

    .line 106
    :cond_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 107
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_2

    move v0, v8

    :goto_0
    invoke-virtual {v6, v0}, Lcom/sonymobile/settings/backup/BackupInfo;->setAutoBackupOn(Z)V

    .line 108
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lcom/sonymobile/settings/backup/BackupInfo;->setNextAutoBackupTime(J)V

    .line 109
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lcom/sonymobile/settings/backup/BackupInfo;->setLastBackupTime(J)V

    .line 110
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/sonymobile/settings/backup/BackupInfo;->setLastUnsuccessfulBackupLocation(I)V

    .line 111
    const/4 v0, 0x4

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/sonymobile/settings/backup/BackupInfo;->setLastUnsuccessfulBackupReason(I)V

    .line 112
    const/4 v0, 0x5

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/sonymobile/settings/backup/BackupInfo;->setContentTypeIds(Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x6

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/sonymobile/settings/backup/BackupInfo;->setWaitingForBackupCondition(I)V

    .line 114
    const/4 v0, 0x7

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_3

    move v0, v8

    :goto_1
    invoke-virtual {v6, v0}, Lcom/sonymobile/settings/backup/BackupInfo;->setIsNewBackup(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 119
    return-object v6

    :cond_2
    move v0, v9

    .line 107
    goto :goto_0

    :cond_3
    move v0, v9

    .line 114
    goto :goto_1

    .line 115
    :catchall_0
    move-exception v0

    .line 116
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 115
    throw v0
.end method

.method public static getBackupMoreIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 82
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sonymobile.synchub.LAUNCH_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 83
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "fragmentId"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    return-object v0
.end method

.method public static getLastBackupString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeOfLatestBackup"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {p1, p2, v2, v3}, Lcom/sonymobile/settings/backup/Utils;->midnightsBetween(JJ)I

    move-result v0

    .line 159
    .local v0, "days":I
    if-gez v0, :cond_0

    .line 160
    const v1, 0x7f0b0cb3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 161
    :cond_0
    if-nez v0, :cond_1

    .line 162
    const v1, 0x7f0b0cb5

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 163
    :cond_1
    if-ne v0, v1, :cond_2

    .line 164
    const v1, 0x7f0b0cb6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 166
    :cond_2
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0b0cb4

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getNextBackupString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "timeOfNextBackup"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3, p1, p2}, Lcom/sonymobile/settings/backup/Utils;->midnightsBetween(JJ)I

    move-result v0

    .line 139
    .local v0, "days":I
    if-gez v0, :cond_0

    .line 140
    const-string/jumbo v1, ""

    return-object v1

    .line 141
    :cond_0
    if-nez v0, :cond_1

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0ca8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 143
    :cond_1
    if-ne v0, v5, :cond_2

    .line 144
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 145
    const v2, 0x7f0b0ca9

    .line 144
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 147
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    .line 148
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 147
    const v3, 0x7f0b0ca7

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getRestoreDataIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 73
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 74
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "isForRestore"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.sonymobile.synchub.LAUNCH_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "fragmentId"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 77
    const-string/jumbo v2, "fragmentExtras"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 78
    return-object v1
.end method

.method private static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    const-string/jumbo v0, "somc_backup"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static isSomcBackupAvailable(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sonymobile.synchub.LAUNCH_ACTIVITY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "somcBackupIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static midnightsBetween(JJ)I
    .locals 8
    .param p0, "milliseconds1"    # J
    .param p2, "milliseconds2"    # J

    .prologue
    .line 176
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 177
    .local v2, "now":Ljava/util/Calendar;
    invoke-virtual {v2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 178
    invoke-static {v2}, Lcom/sonymobile/settings/backup/Utils;->setToMidnight(Ljava/util/Calendar;)V

    .line 180
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 181
    .local v3, "then":Ljava/util/Calendar;
    invoke-virtual {v3, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 182
    invoke-static {v3}, Lcom/sonymobile/settings/backup/Utils;->setToMidnight(Ljava/util/Calendar;)V

    .line 184
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 185
    .local v0, "milliDiff":J
    const-wide/32 v4, 0x5265c00

    div-long v4, v0, v4

    long-to-int v4, v4

    return v4
.end method

.method public static persistShowInitialWelcomeCard(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "showWelcome"    # Z

    .prologue
    .line 61
    invoke-static {p0}, Lcom/sonymobile/settings/backup/Utils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 62
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "show_welcome_card"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 60
    return-void
.end method

.method public static resetNewBackupPerformed(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 123
    if-nez p0, :cond_0

    .line 124
    return v2

    .line 127
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 128
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "new_backup_performed"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sonymobile/settings/backup/Utils;->SOMC_BACKUP_PROVIDER_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static setToMidnight(Ljava/util/Calendar;)V
    .locals 2
    .param p0, "cal"    # Ljava/util/Calendar;

    .prologue
    const/4 v1, 0x0

    .line 194
    const/16 v0, 0xb

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 195
    const/16 v0, 0xc

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 196
    const/16 v0, 0xd

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 197
    const/16 v0, 0xe

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 193
    return-void
.end method

.method public static showInitialWelcomeCard(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-static {p0}, Lcom/sonymobile/settings/backup/Utils;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "show_welcome_card"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
