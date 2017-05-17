.class final Lcom/sonyericsson/android/socialphonebook/backup/BackupRestoreConstants;
.super Ljava/lang/Object;
.source "BackupRestoreConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/backup/BackupRestoreConstants$XMLConstants;,
        Lcom/sonyericsson/android/socialphonebook/backup/BackupRestoreConstants$ContactsXMLConstants;,
        Lcom/sonyericsson/android/socialphonebook/backup/BackupRestoreConstants$CallLogXMLConstants;
    }
.end annotation


# static fields
.field public static final BUFF_SIZE:I = 0x1000

.field public static final CALL_KEY:Ljava/lang/String; = "KEY_CALL_LOGS"

.field public static final CONTACTS_KEY:Ljava/lang/String; = "KEY_CONTACTS"

.field public static final CONTACTS_STATE_FILE_NAME:Ljava/lang/String; = "contacts_state"

.field public static final MAXIMUM_CONTACTS_RESTORE_ATONCE:I = 0x19

.field public static final MAX_ALLOWED_INCREMENTAL_BACKUP_ITERATIONS:I = 0x32

.field public static final MINIMUM_FREE_MEMORY:J = 0x100000L

.field public static final TEMP_FILE_CALLLOG:Ljava/lang/String; = "TempCallLogs"

.field public static final TEMP_FILE_CONTACTS:Ljava/lang/String; = "TempContacts"

.field public static final VERSION_FILE_DELIMITER:Ljava/lang/String; = "\n"

.field public static final VERSION_KEY:Ljava/lang/String; = "VERSION_KEY"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
