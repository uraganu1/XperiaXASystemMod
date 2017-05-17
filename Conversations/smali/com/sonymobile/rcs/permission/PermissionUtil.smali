.class public Lcom/sonymobile/rcs/permission/PermissionUtil;
.super Ljava/lang/Object;
.source "PermissionUtil.java"


# static fields
.field private static mEasilyUnderstandablePermissions:[Ljava/lang/String;

.field private static mOptionalPermissions:[Ljava/lang/String;

.field private static mReqMinimumPermissions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 71
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    aput-object v1, v0, v3

    const-string/jumbo v1, "android.permission.READ_SMS"

    aput-object v1, v0, v4

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonymobile/rcs/permission/PermissionUtil;->mReqMinimumPermissions:[Ljava/lang/String;

    .line 95
    new-array v0, v2, [Ljava/lang/String;

    sput-object v0, Lcom/sonymobile/rcs/permission/PermissionUtil;->mOptionalPermissions:[Ljava/lang/String;

    .line 101
    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    const-string/jumbo v1, "android.permission.READ_SMS"

    aput-object v1, v0, v4

    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonymobile/rcs/permission/PermissionUtil;->mEasilyUnderstandablePermissions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    return-void
.end method

.method public static getMissingMandatoryPermissions(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 274
    sget-object v0, Lcom/sonymobile/rcs/permission/PermissionUtil;->mReqMinimumPermissions:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sonymobile/rcs/permission/PermissionUtil;->getMissingPermissions(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getMissingPermissions(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 262
    .local v3, "missingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 267
    return-object v3

    .line 262
    :cond_0
    aget-object v4, v0, v1

    .line 263
    .local v4, "permission":Ljava/lang/String;
    invoke-static {p0, v4}, Lcom/sonymobile/rcs/permission/PermissionUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 262
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static getPermissionRationaleString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "permissionRationale":Ljava/lang/StringBuilder;
    const/4 v1, -0x1

    .line 180
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 201
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_0
    const-string/jumbo v3, "android.permission.READ_PHONE_STATE"

    .line 180
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "android.permission.READ_SMS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :pswitch_0
    const v1, 0x7f050021

    .line 182
    invoke-static {p0, v1}, Lcom/sonymobile/rcs/permission/PermissionUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    const v1, 0x7f050023

    .line 186
    invoke-static {p0, v1}, Lcom/sonymobile/rcs/permission/PermissionUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    const v1, 0x7f05001d

    .line 191
    invoke-static {p0, v1}, Lcom/sonymobile/rcs/permission/PermissionUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_3
    const v1, 0x7f050025

    .line 195
    invoke-static {p0, v1}, Lcom/sonymobile/rcs/permission/PermissionUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 180
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7aed85b0 -> :sswitch_1
        -0x550ba9 -> :sswitch_0
        0xcc96c13 -> :sswitch_3
        0x516a29a7 -> :sswitch_4
        0x75dd2d9c -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static getPermissionString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, "permissionName":Ljava/lang/StringBuilder;
    const/4 v1, -0x1

    .line 142
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 163
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_0
    const-string/jumbo v3, "android.permission.READ_PHONE_STATE"

    .line 142
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "android.permission.READ_CONTACTS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "android.permission.READ_SMS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :pswitch_0
    const v1, 0x7f050020

    .line 144
    invoke-static {p0, v1}, Lcom/sonymobile/rcs/permission/PermissionUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    const v1, 0x7f05001c

    .line 149
    invoke-static {p0, v1}, Lcom/sonymobile/rcs/permission/PermissionUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    const v1, 0x7f050022

    .line 153
    invoke-static {p0, v1}, Lcom/sonymobile/rcs/permission/PermissionUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_3
    const v1, 0x7f050024

    .line 157
    invoke-static {p0, v1}, Lcom/sonymobile/rcs/permission/PermissionUtil;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 142
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7aed85b0 -> :sswitch_3
        -0x550ba9 -> :sswitch_0
        0xcc96c13 -> :sswitch_2
        0x516a29a7 -> :sswitch_4
        0x75dd2d9c -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissionStringResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 167
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hasMandatoryPermissions(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 257
    sget-object v0, Lcom/sonymobile/rcs/permission/PermissionUtil;->mReqMinimumPermissions:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/sonymobile/rcs/permission/PermissionUtil;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 353
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 243
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 248
    const/4 v4, 0x1

    return v4

    .line 243
    :cond_0
    aget-object v3, v0, v1

    .line 244
    .local v3, "permission":Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/sonymobile/rcs/permission/PermissionUtil;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    :cond_1
    return v5
.end method

.method public static isEasilyUnderstandablePermission(Ljava/lang/String;)Z
    .locals 6
    .param p0, "permissionName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 234
    sget-object v0, Lcom/sonymobile/rcs/permission/PermissionUtil;->mEasilyUnderstandablePermissions:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 239
    return v5

    .line 234
    :cond_0
    aget-object v3, v0, v1

    .line 235
    .local v3, "permission":Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 236
    :cond_1
    const/4 v4, 0x1

    return v4
.end method

.method public static isOptionalPermission(Ljava/lang/String;)Z
    .locals 6
    .param p0, "permissionName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 222
    sget-object v0, Lcom/sonymobile/rcs/permission/PermissionUtil;->mOptionalPermissions:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 227
    return v5

    .line 222
    :cond_0
    aget-object v3, v0, v1

    .line 223
    .local v3, "permission":Ljava/lang/String;
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    :cond_1
    const/4 v4, 0x1

    return v4
.end method

.method public static redirectToPermissionInfoIfNeeded(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "redirectingPermissionValue"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 116
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 119
    :goto_0
    invoke-static {p0}, Lcom/sonymobile/rcs/permission/PermissionUtil;->hasMandatoryPermissions(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 122
    invoke-static {p0}, Lcom/sonymobile/rcs/permission/PermissionUtil;->getMissingMandatoryPermissions(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 123
    .local v0, "mandatoryPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lcom/sonymobile/rcs/permission/PermissionUtil$1;

    invoke-direct {v1}, Lcom/sonymobile/rcs/permission/PermissionUtil$1;-><init>()V

    invoke-static {v0, v1, v3, p1}, Lcom/sonymobile/rcs/permission/PermissionsController;->addPermissionRequest(Ljava/util/ArrayList;Lcom/sonymobile/rcs/permission/PermissionsController$PermissionControllerCallback;ZI)V

    .line 131
    return v3

    .line 117
    .end local v0    # "mandatoryPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    invoke-static {p0}, Lcom/sonymobile/rcs/platform/AndroidFactory;->setApplicationContext(Landroid/content/Context;)V

    goto :goto_0

    .line 120
    :cond_1
    return v2
.end method

.method public static redirecting(I)V
    .locals 1
    .param p0, "redirectingPermissionValue"    # I

    .prologue
    .line 278
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/permission/PermissionUtil;->hasMandatoryPermissions(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    packed-switch p0, :pswitch_data_0

    .line 295
    :goto_0
    return-void

    .line 279
    :cond_0
    return-void

    .line 284
    :pswitch_0
    invoke-static {}, Lcom/sonymobile/rcs/permission/PermissionUtil;->startLaunchService()V

    goto :goto_0

    .line 287
    :pswitch_1
    invoke-static {}, Lcom/sonymobile/rcs/permission/PermissionUtil;->startHttpsProvisioningService()V

    goto :goto_0

    .line 290
    :pswitch_2
    invoke-static {}, Lcom/sonymobile/rcs/permission/PermissionUtil;->triggerRcsService()V

    goto :goto_0

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static setRcsServiceState(Landroid/content/Context;I)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    const-string/jumbo v2, "rcs_service_state"

    const/4 v3, 0x0

    .line 409
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 411
    .local v1, "rcsServiceStatePreference":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v2, "rcs_service_state"

    .line 412
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 413
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 414
    return-void
.end method

.method public static startAppInfoSettingsActivity(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 215
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 216
    return-void
.end method

.method private static startHttpsProvisioningService()V
    .locals 3

    .prologue
    .line 315
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 318
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "first"

    .line 320
    invoke-static {}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->isFirstLaunch()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 322
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 323
    return-void

    .line 316
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public static startLaunchService()V
    .locals 3

    .prologue
    .line 302
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 303
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 304
    :cond_0
    return-void

    .line 303
    :cond_1
    invoke-static {v0}, Lcom/sonymobile/rcs/permission/PermissionUtil;->hasMandatoryPermissions(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/rcs/utils/DeviceUtils;->updateImLauncherVisibility(Landroid/content/Context;)Z

    .line 307
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sonymobile/rcs/service/LauncherUtils;->launchRcsService(Landroid/content/Context;Z)V

    .line 308
    return-void
.end method

.method private static triggerRcsService()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 326
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 327
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getRcsStates(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 330
    invoke-static {v0, v5}, Lcom/sonymobile/rcs/service/StartService;->setUserMessageAccepted(Landroid/content/Context;Z)V

    .line 331
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->setConfigValidityStatus(I)V

    .line 332
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.sonymobile.rcs.accept"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 334
    new-instance v1, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;

    invoke-direct {v1, v0}, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;-><init>(Landroid/content/Context;)V

    .line 335
    .local v1, "params":Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;
    invoke-virtual {v1, v0, v5}, Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;->setProvisioned(Landroid/content/Context;Z)V

    .line 336
    invoke-static {}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->isFirstLaunch()Z

    move-result v2

    if-nez v2, :cond_2

    .line 341
    :cond_0
    invoke-static {v0}, Lcom/sonymobile/rcs/service/LauncherUtils;->forceLaunchRcsCoreService(Landroid/content/Context;)V

    .line 343
    :goto_0
    invoke-static {v4}, Lcom/sonymobile/rcs/provisioning/https/HttpsProvisioningService;->setFirstLaunch(Z)V

    .line 344
    return-void

    .line 328
    .end local v1    # "params":Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;
    :cond_1
    return-void

    .line 336
    .restart local v1    # "params":Lcom/sonymobile/rcs/provisioning/HttpRequestParamsHandler;
    :cond_2
    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/client/gsma/GsmaClientConnector;->isRcsClientActivated(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
    invoke-static {v0}, Lcom/sonymobile/rcs/service/api/client/gsma/GsmaClientConnector;->deactivateOtherRcsClients(Landroid/content/Context;)V

    goto :goto_0
.end method
