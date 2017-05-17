.class public Lcom/sonyericsson/android/socialphonebook/util/VerizonCloudUtils;
.super Ljava/lang/Object;
.source "VerizonCloudUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/util/VerizonCloudUtils$CloudStatusUpdateAsyncTask;
    }
.end annotation


# static fields
.field public static final CLOUD_PACKAGE_NAME_PHONE:Ljava/lang/String; = "com.vcast.mediamanager"

.field static final CLOUD_PACKAGE_NAME_TABLET:Ljava/lang/String; = "com.androidhub"

.field static final CLOUD_STATUS_NOT_PROVISIONED:I = 0x0

.field static final CLOUD_STATUS_PROVISIONED:I = 0x1

.field public static final CLOUD_STATUS_URI:Ljava/lang/String; = "content://com.fusionone.android.sync.provider.chsettings/settings"

.field private static final DB_APP_STATE_PARAM_NAME:Ljava/lang/String; = "app.state"

.field private static final DB_COLUMN_NAME:Ljava/lang/String; = "name"

.field private static final DB_COLUMN_VALUE:Ljava/lang/String; = "value"

.field static final INTENT_ACTION_CONTACTS:Ljava/lang/String; = "com.vcast.mediamanager.ACTION_CONTACTS"

.field static sVerizonCloudCurrentStatus:I


# direct methods
.method static synthetic -wrap0(Landroid/content/ContentResolver;)V
    .locals 0
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/VerizonCloudUtils;->updateCloudStatus(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput v0, Lcom/sonyericsson/android/socialphonebook/util/VerizonCloudUtils;->sVerizonCloudCurrentStatus:I

    .line 24
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCloudApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 72
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string/jumbo v2, "com.vcast.mediamanager"

    .line 73
    const/4 v3, 0x1

    .line 72
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 74
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    const-string/jumbo v2, "com.androidhub"

    .line 80
    const/4 v3, 0x1

    .line 79
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    return-object v2

    .line 81
    :catch_1
    move-exception v0

    .line 85
    const/4 v2, 0x0

    return-object v2
.end method

.method public static getCloudLaunchIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.vcast.mediamanager.ACTION_CONTACTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getCloudStatus()I
    .locals 1

    .prologue
    .line 183
    sget v0, Lcom/sonyericsson/android/socialphonebook/util/VerizonCloudUtils;->sVerizonCloudCurrentStatus:I

    return v0
.end method

.method public static getVerizonAccountDisplayName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 98
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/VerizonCloudUtils;->isCloudEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/VerizonCloudUtils;->isCloudProvisioned()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const v0, 0x7f09005a

    .line 99
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 103
    :cond_0
    const v0, 0x7f09037f

    .line 102
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVerizonCloudPhotoPickIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 214
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    const-string/jumbo v1, "com.androidhub"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    :goto_0
    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    return-object v0

    .line 218
    :cond_0
    const-string/jumbo v1, "com.vcast.mediamanager"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static isCloudEnabled(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/Configuration;->getInstance(Landroid/content/Context;)Lcom/sonyericsson/android/socialphonebook/Configuration;

    move-result-object v2

    .line 117
    .local v2, "config":Lcom/sonyericsson/android/socialphonebook/Configuration;
    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/Configuration;->isVerizonCloudContactsIntegrationSupported()Z

    move-result v3

    .line 119
    .local v3, "contactsIntegrationSupported":Z
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/VerizonCloudUtils;->getCloudApplicationInfo(Landroid/content/Context;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 120
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    .line 122
    :goto_0
    if-eqz v3, :cond_1

    :goto_1
    return v1

    .line 120
    :cond_0
    const/4 v1, 0x0

    .local v1, "cloudEnabled":Z
    goto :goto_0

    .line 122
    .end local v1    # "cloudEnabled":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static isCloudProvisioned()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 192
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/VerizonCloudUtils;->getCloudStatus()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static queryCloudStatus(Landroid/content/ContentResolver;)I
    .locals 9
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 142
    const/4 v7, 0x0

    .line 143
    .local v7, "cursor":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 146
    .local v8, "status":I
    :try_start_0
    const-string/jumbo v0, "content://com.fusionone.android.sync.provider.chsettings/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 147
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "value"

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 148
    const-string/jumbo v3, "name = ?"

    .line 149
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "app.state"

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 150
    const/4 v5, 0x0

    move-object v0, p0

    .line 145
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 153
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const-string/jumbo v0, "value"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 155
    .local v6, "columnIndex":I
    invoke-interface {v7, v6}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 158
    .end local v6    # "columnIndex":I
    :cond_0
    if-eqz v7, :cond_1

    .line 159
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 163
    :cond_1
    return v8

    .line 157
    .end local v7    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    .line 158
    if-eqz v7, :cond_2

    .line 159
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 157
    :cond_2
    throw v0
.end method

.method private static updateCloudStatus(Landroid/content/ContentResolver;)V
    .locals 1
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 173
    invoke-static {p0}, Lcom/sonyericsson/android/socialphonebook/util/VerizonCloudUtils;->queryCloudStatus(Landroid/content/ContentResolver;)I

    move-result v0

    sput v0, Lcom/sonyericsson/android/socialphonebook/util/VerizonCloudUtils;->sVerizonCloudCurrentStatus:I

    .line 172
    return-void
.end method
