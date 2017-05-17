.class public Lcom/sonyericsson/conversations/permission/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;,
        Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionsCallback;
    }
.end annotation


# static fields
.field private static sPermissionCallback:Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;

.field private static sPermissionsCallback:Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionsCallback;

.field private static sReqMinimumPermissions:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.READ_SMS"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 50
    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 49
    sput-object v0, Lcom/sonyericsson/conversations/permission/PermissionUtils;->sReqMinimumPermissions:[Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canWriteSystemSettings(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 357
    invoke-static {p0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static getMissingMandatoryPermissions(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v0, "missingList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    sget-object v3, Lcom/sonyericsson/conversations/permission/PermissionUtils;->sReqMinimumPermissions:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v3, v2

    .line 211
    .local v1, "permission":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 212
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 215
    .end local v1    # "permission":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public static getPermissionRationaleString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .local v0, "permissionRationale":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    const v1, 0x7f0b028a

    .line 141
    invoke-static {p0, v1}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 139
    :cond_0
    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    const v1, 0x7f0b028b

    .line 145
    invoke-static {p0, v1}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 139
    :cond_1
    const-string/jumbo v1, "android.permission.READ_SMS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 150
    const v1, 0x7f0b028c

    .line 149
    invoke-static {p0, v1}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 139
    :cond_2
    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 154
    const v1, 0x7f0b028e

    .line 153
    invoke-static {p0, v1}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 139
    :cond_3
    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 159
    :cond_4
    const v1, 0x7f0b028f

    .line 158
    invoke-static {p0, v1}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 139
    :cond_5
    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "android.permission.CAMERA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 163
    const v1, 0x7f0b0292

    .line 162
    invoke-static {p0, v1}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 139
    :cond_6
    const-string/jumbo v1, "android.permission.WRITE_SETTINGS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 167
    const v1, 0x7f0b0290

    .line 166
    invoke-static {p0, v1}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 139
    :cond_7
    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 171
    const v1, 0x7f0b0294

    .line 170
    invoke-static {p0, v1}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 174
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static getPermissionString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v0, "permissionName":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    const v1, 0x7f0b0286

    .line 89
    invoke-static {p0, v1}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 87
    :cond_0
    const-string/jumbo v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    const v1, 0x7f0b0285

    .line 93
    invoke-static {p0, v1}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 87
    :cond_1
    const-string/jumbo v1, "android.permission.READ_SMS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    const v1, 0x7f0b0287

    invoke-static {p0, v1}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 87
    :cond_2
    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 102
    const v1, 0x7f0b028d

    .line 101
    invoke-static {p0, v1}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 87
    :cond_3
    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 107
    :cond_4
    const v1, 0x7f0b0288

    .line 106
    invoke-static {p0, v1}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 87
    :cond_5
    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "android.permission.WRITE_SETTINGS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 111
    const v1, 0x7f0b0289

    .line 110
    invoke-static {p0, v1}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 87
    :cond_6
    const-string/jumbo v1, "android.permission.CAMERA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 115
    const v1, 0x7f0b0291

    .line 114
    invoke-static {p0, v1}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 87
    :cond_7
    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 119
    const v1, 0x7f0b0293

    .line 118
    invoke-static {p0, v1}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 122
    :cond_8
    const-string/jumbo v1, "Unsupported permission"

    invoke-static {v1}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissionStringResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 181
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static grantPersistablePermissionForDocumentUri(Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 339
    if-eqz p0, :cond_0

    .line 340
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 341
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Intent;->getFlags()I

    move-result v3

    and-int/lit8 v2, v3, 0x1

    .line 343
    .local v2, "writePermFlag":I
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "writePermFlag":I
    :cond_0
    :goto_0
    return-void

    .line 344
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v2    # "writePermFlag":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method public static handleMultipleOptionalPermissionRequest(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionsCallback;Z)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionsCallback;
    .param p3, "showAppInfo"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionsCallback;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 258
    sget-object v5, Lcom/sonyericsson/conversations/permission/PermissionUtils;->sPermissionCallback:Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;

    if-eqz v5, :cond_0

    .line 261
    sget-object v5, Lcom/sonyericsson/conversations/permission/PermissionUtils;->sPermissionsCallback:Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionsCallback;

    invoke-interface {v5, v6}, Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionsCallback;->onMultiplePermissionsResponse(Z)V

    .line 263
    :cond_0
    sput-object p2, Lcom/sonyericsson/conversations/permission/PermissionUtils;->sPermissionsCallback:Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionsCallback;

    .line 264
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 265
    .local v2, "nonGrantedPermissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "permission$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 266
    .local v3, "permission":Ljava/lang/String;
    invoke-virtual {p0, v3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 267
    .local v0, "hasPermission":I
    if-eqz v0, :cond_1

    .line 268
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    sget-object v5, Lcom/sonyericsson/conversations/permission/PermissionUtils;->sPermissionsCallback:Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionsCallback;

    invoke-interface {v5, v6}, Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionsCallback;->onMultiplePermissionsResponse(Z)V

    goto :goto_0

    .line 272
    .end local v0    # "hasPermission":I
    .end local v3    # "permission":Ljava/lang/String;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/sonyericsson/conversations/permission/OptionalPermissionActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "permission_string"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 274
    const-string/jumbo v5, "permission_app_info"

    invoke-virtual {v1, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 275
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 257
    return-void
.end method

.method public static handleMultiplePermissionsRequest(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionsCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionsCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->handleMultipleOptionalPermissionRequest(Landroid/content/Context;Ljava/util/ArrayList;Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionsCallback;Z)V

    .line 244
    return-void
.end method

.method public static handleOptionalPermissionRequest(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;

    .prologue
    .line 287
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->handleOptionalPermissionRequest(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;Z)V

    .line 286
    return-void
.end method

.method public static handleOptionalPermissionRequest(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;
    .param p3, "showAppInfo"    # Z

    .prologue
    .line 301
    sget-object v2, Lcom/sonyericsson/conversations/permission/PermissionUtils;->sPermissionCallback:Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;

    if-eqz v2, :cond_0

    .line 304
    sget-object v2, Lcom/sonyericsson/conversations/permission/PermissionUtils;->sPermissionCallback:Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;->onPermissionResponse(Z)V

    .line 306
    :cond_0
    sput-object p2, Lcom/sonyericsson/conversations/permission/PermissionUtils;->sPermissionCallback:Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;

    .line 307
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v1, "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/sonyericsson/conversations/permission/OptionalPermissionActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 310
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "permission_string"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 311
    const-string/jumbo v2, "permission_app_info"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 312
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 300
    return-void
.end method

.method public static hasMandatoryPermissions(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 196
    sget-object v3, Lcom/sonyericsson/conversations/permission/PermissionUtils;->sReqMinimumPermissions:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 197
    .local v0, "permission":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 198
    return v2

    .line 196
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 201
    .end local v0    # "permission":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static hasPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 219
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static hasPermissions(Landroid/content/Context;Ljava/util/ArrayList;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "permission$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 230
    .local v0, "permission":Ljava/lang/String;
    invoke-static {p0, v0}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 231
    const/4 v2, 0x0

    return v2

    .line 234
    .end local v0    # "permission":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method public static onPermissionResponse(Z)V
    .locals 2
    .param p0, "isGranted"    # Z

    .prologue
    const/4 v1, 0x0

    .line 321
    sget-object v0, Lcom/sonyericsson/conversations/permission/PermissionUtils;->sPermissionCallback:Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;

    if-eqz v0, :cond_0

    .line 322
    sget-object v0, Lcom/sonyericsson/conversations/permission/PermissionUtils;->sPermissionCallback:Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;

    invoke-interface {v0, p0}, Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;->onPermissionResponse(Z)V

    .line 323
    sput-object v1, Lcom/sonyericsson/conversations/permission/PermissionUtils;->sPermissionCallback:Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionCallback;

    .line 326
    :cond_0
    sget-object v0, Lcom/sonyericsson/conversations/permission/PermissionUtils;->sPermissionsCallback:Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionsCallback;

    if-eqz v0, :cond_1

    .line 327
    sget-object v0, Lcom/sonyericsson/conversations/permission/PermissionUtils;->sPermissionsCallback:Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionsCallback;

    invoke-interface {v0, p0}, Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionsCallback;->onMultiplePermissionsResponse(Z)V

    .line 328
    sput-object v1, Lcom/sonyericsson/conversations/permission/PermissionUtils;->sPermissionsCallback:Lcom/sonyericsson/conversations/permission/PermissionUtils$PermissionsCallback;

    .line 320
    :cond_1
    return-void
.end method

.method public static showWriteSettingsInfoDialog(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 367
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v2, "permissions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const-string/jumbo v3, "android.permission.WRITE_SETTINGS"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 371
    .local v1, "ft":Landroid/app/FragmentTransaction;
    sget-object v3, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;->WRITE_SETTINGS_INFO_DIALOG:Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;

    .line 370
    invoke-static {v2, v3}, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->newInstance(Ljava/util/ArrayList;Lcom/sonyericsson/conversations/permission/SomcPermissionDialog$SomcDialogType;)Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;

    move-result-object v0

    .line 372
    .local v0, "dialog":Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;
    invoke-static {p0, v0}, Lcom/sonyericsson/conversations/permission/PermissionUtils;->writeSettingsDialogCallback(Landroid/app/Activity;Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;)Lcom/sonyericsson/conversations/permission/SomcDialogCallBack;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;->setCallBack(Lcom/sonyericsson/conversations/permission/SomcDialogCallBack;)V

    .line 373
    const-string/jumbo v3, "write_settings_info_dialog"

    invoke-virtual {v1, v0, v3}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 374
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 366
    return-void
.end method

.method public static startAppInfoSettingsActivity(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    invoke-static {}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getAppInfoSettingsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 189
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 187
    return-void
.end method

.method private static writeSettingsDialogCallback(Landroid/app/Activity;Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;)Lcom/sonyericsson/conversations/permission/SomcDialogCallBack;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "dialog"    # Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;

    .prologue
    .line 379
    new-instance v0, Lcom/sonyericsson/conversations/permission/PermissionUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/sonyericsson/conversations/permission/PermissionUtils$1;-><init>(Landroid/app/Activity;Lcom/sonyericsson/conversations/permission/SomcPermissionDialog;)V

    return-object v0
.end method
