.class public Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil;
.super Ljava/lang/Object;
.source "KddiAddressBookUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil$AddressbookPlusFeatureWrapperForTest;
    }
.end annotation


# static fields
.field public static final ADDRESSBOOK_PLUS_CLASS_NAME:Ljava/lang/String; = "com.kddi.android.AddressbookPlus.ContactDetailActivity"

.field private static final ADDRESSBOOK_PLUS_PACKAGE_NAME:Ljava/lang/String; = "com.kddi.android.AddressbookPlus"

.field private static final KEY_CONTACTS_URI:Ljava/lang/String; = "contactsuri"

.field private static final KEY_SYNC_CALL_SETTINGS:Ljava/lang/String; = "setting_use_seeingcall"

.field private static final NUMBER:Ljava/lang/String; = "number"

.field private static final STATUS:Ljava/lang/String; = "status"

.field public static final SYNC_CALL_ICON_PATH_OEM:Ljava/lang/String; = "/oem/etc/addressbookplus/ic_synccall_status.png"

.field public static final SYNC_CALL_PROVIDER_NAME:Ljava/lang/String; = "com.kddi.android.AddressbookPlus.provider"

.field private static final SYNC_CALL_SUPPORTED:Ljava/lang/String; = "1"

.field private static final TAG:Ljava/lang/String;

.field public static final URI_ADDRESSBOOK_SYNC_CALL:Landroid/net/Uri;

.field public static final URI_SYNC_CALL_SETTINGS:Landroid/net/Uri;

.field private static final VALUE:Ljava/lang/String; = "value"

.field private static mInjectedWrapper:Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil$AddressbookPlusFeatureWrapperForTest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil;->TAG:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "content://com.kddi.android.evc.SettingsProvider/system"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 31
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil;->URI_SYNC_CALL_SETTINGS:Landroid/net/Uri;

    .line 40
    const-string/jumbo v0, "content://com.kddi.android.AddressbookPlus.provider/sync_calls"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 39
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil;->URI_ADDRESSBOOK_SYNC_CALL:Landroid/net/Uri;

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil;->mInjectedWrapper:Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil$AddressbookPlusFeatureWrapperForTest;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSyncCallEnableList(Landroid/content/ContentResolver;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 11
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            ")",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 114
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil;->mInjectedWrapper:Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil$AddressbookPlusFeatureWrapperForTest;

    if-eqz v0, :cond_0

    .line 115
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil;->mInjectedWrapper:Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil$AddressbookPlusFeatureWrapperForTest;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil$AddressbookPlusFeatureWrapperForTest;->getSyncCallList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0

    .line 117
    :cond_0
    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 118
    .local v7, "list":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "status=?"

    .line 119
    .local v3, "selection":Ljava/lang/String;
    new-array v2, v5, [Ljava/lang/String;

    const-string/jumbo v0, "number"

    aput-object v0, v2, v1

    .line 120
    .local v2, "projection":[Ljava/lang/String;
    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v0, "1"

    aput-object v0, v4, v1

    .line 121
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil;->URI_ADDRESSBOOK_SYNC_CALL:Landroid/net/Uri;

    .line 122
    const/4 v5, 0x0

    move-object v0, p0

    .line 121
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 123
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 126
    :cond_1
    const-string/jumbo v0, "number"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 125
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->normalizeNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 127
    .local v8, "number":Ljava/lang/String;
    invoke-virtual {v7, v8, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_1

    .line 130
    .end local v8    # "number":Ljava/lang/String;
    :cond_2
    if-eqz v6, :cond_3

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_0
    if-eqz v9, :cond_7

    throw v9

    :catch_0
    move-exception v9

    goto :goto_0

    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_1
    if-eqz v6, :cond_4

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_2
    if-eqz v1, :cond_6

    throw v1

    :catch_2
    move-exception v5

    if-nez v1, :cond_5

    move-object v1, v5

    goto :goto_2

    :cond_5
    if-eq v1, v5, :cond_4

    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    throw v0

    .line 131
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_7
    return-object v7

    .line 130
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    move-object v1, v9

    goto :goto_1
.end method

.method public static getSyncCallStatusIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil;->mInjectedWrapper:Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil$AddressbookPlusFeatureWrapperForTest;

    if-eqz v0, :cond_0

    .line 142
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil;->mInjectedWrapper:Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil$AddressbookPlusFeatureWrapperForTest;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil$AddressbookPlusFeatureWrapperForTest;->getSyncCallIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 144
    :cond_0
    const-string/jumbo v0, "/oem/etc/addressbookplus/ic_synccall_status.png"

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static isAddressBookPlusAppEnabled(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const/4 v2, 0x0

    .line 66
    .local v2, "isAddressBookPlusAppEnabled":Z
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 68
    .local v3, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string/jumbo v4, "com.kddi.android.AddressbookPlus"

    .line 69
    const/16 v5, 0x80

    .line 68
    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 70
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "isAddressBookPlusAppEnabled":Z
    :goto_0
    return v2

    .line 71
    .restart local v2    # "isAddressBookPlusAppEnabled":Z
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static isKddiAddressBookFeatureEnabled(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil;->mInjectedWrapper:Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil$AddressbookPlusFeatureWrapperForTest;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil;->mInjectedWrapper:Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil$AddressbookPlusFeatureWrapperForTest;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil$AddressbookPlusFeatureWrapperForTest;->isKddiAddressBookFeatureEnabled()Z

    move-result v0

    return v0

    .line 61
    :cond_0
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil;->isAddressBookPlusAppEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil;->isSyncCallProviderAvailable(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSyncCallProviderAvailable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 78
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v3, "com.kddi.android.AddressbookPlus.provider"

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    .line 79
    .local v0, "pi":Landroid/content/pm/ProviderInfo;
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public static isSyncCallSettingsEnabled(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 89
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil;->mInjectedWrapper:Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil$AddressbookPlusFeatureWrapperForTest;

    if-eqz v0, :cond_0

    .line 90
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil;->mInjectedWrapper:Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil$AddressbookPlusFeatureWrapperForTest;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil$AddressbookPlusFeatureWrapperForTest;->isSyncCallSettingsEnabled()Z

    move-result v0

    return v0

    .line 92
    :cond_0
    const/4 v7, 0x0

    .line 93
    .local v7, "isSyncCallSettingON":Z
    const-string/jumbo v3, "name = \'setting_use_seeingcall\'"

    .line 94
    .local v3, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 95
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil;->URI_SYNC_CALL_SETTINGS:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 94
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 96
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 97
    const-string/jumbo v0, "value"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v7, 0x1

    .line 101
    :goto_0
    if-eqz v6, :cond_1

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    if-eqz v8, :cond_7

    throw v8

    .line 97
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 99
    :cond_3
    :try_start_2
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "isSyncCallSettingON() cursor is empty."

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 101
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_2
    if-eqz v6, :cond_4

    :try_start_4
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    :cond_4
    :goto_3
    if-eqz v1, :cond_6

    throw v1

    .restart local v6    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v8

    goto :goto_1

    .end local v6    # "cursor":Landroid/database/Cursor;
    :catch_2
    move-exception v2

    if-nez v1, :cond_5

    move-object v1, v2

    goto :goto_3

    :cond_5
    if-eq v1, v2, :cond_4

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    throw v0

    .line 102
    .restart local v6    # "cursor":Landroid/database/Cursor;
    :cond_7
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isSyncCallSettingON: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return v7

    .line 101
    .end local v6    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v0

    move-object v1, v8

    goto :goto_2
.end method

.method public static setAddressbookPlusFeatureWrapperForTest(Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil$AddressbookPlusFeatureWrapperForTest;)V
    .locals 0
    .param p0, "injectedWrapper"    # Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil$AddressbookPlusFeatureWrapperForTest;
    .annotation build Lcom/sonyericsson/android/socialphonebook/legacy/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 164
    sput-object p0, Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil;->mInjectedWrapper:Lcom/sonyericsson/android/socialphonebook/addressbookplus/KddiAddressBookUtil$AddressbookPlusFeatureWrapperForTest;

    .line 163
    return-void
.end method
