.class public Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;
.super Ljava/lang/Object;
.source "PermissionUtil.java"


# static fields
.field public static final ALL_PERMISSION_GROUP_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTACTS_PERMISSIONS:[Ljava/lang/String;

.field public static final EASY_RATIONALE_PERMISSOIN_GROUP:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIRST_TIME_LAUNCH:Ljava/lang/String; = "first_time_launch"

.field public static final PHONE_PERMISSIONS:[Ljava/lang/String;

.field public static final REQUEST_MULTIPLE_PERMISSIONS:I = 0x14

.field public static final REQUEST_PERMISSION:I = 0xa

.field public static final SMS_PERMISSIONS:[Ljava/lang/String;

.field public static final STORAGE_PERMISSIONS:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    const-class v0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->TAG:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 64
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->EASY_RATIONALE_PERMISSOIN_GROUP:Ljava/util/Set;

    .line 67
    new-array v0, v4, [Ljava/lang/String;

    .line 68
    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    aput-object v1, v0, v2

    .line 69
    const-string/jumbo v1, "android.permission.WRITE_CONTACTS"

    aput-object v1, v0, v3

    .line 67
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->CONTACTS_PERMISSIONS:[Ljava/lang/String;

    .line 71
    new-array v0, v3, [Ljava/lang/String;

    .line 72
    const-string/jumbo v1, "android.permission.READ_SMS"

    aput-object v1, v0, v2

    .line 71
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->SMS_PERMISSIONS:[Ljava/lang/String;

    .line 74
    new-array v0, v3, [Ljava/lang/String;

    .line 75
    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v0, v2

    .line 74
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->PHONE_PERMISSIONS:[Ljava/lang/String;

    .line 77
    new-array v0, v4, [Ljava/lang/String;

    .line 78
    const-string/jumbo v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v1, v0, v2

    .line 79
    const-string/jumbo v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, v0, v3

    .line 77
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->STORAGE_PERMISSIONS:[Ljava/lang/String;

    .line 95
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->EASY_RATIONALE_PERMISSOIN_GROUP:Ljava/util/Set;

    const-string/jumbo v1, "android.permission-group.CONTACTS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->EASY_RATIONALE_PERMISSOIN_GROUP:Ljava/util/Set;

    const-string/jumbo v1, "android.permission-group.PHONE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 106
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->ALL_PERMISSION_GROUP_MAP:Ljava/util/HashMap;

    .line 119
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->ALL_PERMISSION_GROUP_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "android.permission-group.CONTACTS"

    .line 120
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->CONTACTS_PERMISSIONS:[Ljava/lang/String;

    .line 119
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->ALL_PERMISSION_GROUP_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "android.permission-group.SMS"

    .line 122
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->SMS_PERMISSIONS:[Ljava/lang/String;

    .line 121
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->ALL_PERMISSION_GROUP_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "android.permission-group.PHONE"

    .line 124
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->PHONE_PERMISSIONS:[Ljava/lang/String;

    .line 123
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->ALL_PERMISSION_GROUP_MAP:Ljava/util/HashMap;

    const-string/jumbo v1, "android.permission-group.STORAGE"

    .line 126
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->STORAGE_PERMISSIONS:[Ljava/lang/String;

    .line 125
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRationalemessage(Landroid/content/Context;Ljava/util/Set;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 213
    .local p1, "permissionGrps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string/jumbo v4, ""

    .line 214
    .local v4, "message":Ljava/lang/String;
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 215
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 216
    .local v1, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 217
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 218
    .local v0, "element":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 219
    .local v2, "label":Ljava/lang/String;
    const-string/jumbo v6, ""

    .line 220
    .local v6, "text":Ljava/lang/String;
    const-string/jumbo v7, "android.permission-group.CONTACTS"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 222
    const-string/jumbo v7, "android.permission-group.CONTACTS"

    .line 221
    invoke-static {p0, v7}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->getPermissionGroupDisplayLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 223
    const v7, 0x7f0903cd

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 237
    :cond_0
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\n\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 224
    :cond_1
    const-string/jumbo v7, "android.permission-group.SMS"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 226
    const-string/jumbo v7, "android.permission-group.SMS"

    .line 225
    invoke-static {p0, v7}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->getPermissionGroupDisplayLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 227
    const v7, 0x7f0903d2

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 228
    :cond_2
    const-string/jumbo v7, "android.permission-group.PHONE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 230
    const-string/jumbo v7, "android.permission-group.PHONE"

    .line 229
    invoke-static {p0, v7}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->getPermissionGroupDisplayLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    const v7, 0x7f0903ce

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 232
    :cond_3
    const-string/jumbo v7, "android.permission-group.STORAGE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 234
    const-string/jumbo v7, "android.permission-group.STORAGE"

    .line 233
    invoke-static {p0, v7}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->getPermissionGroupDisplayLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 235
    const v7, 0x7f0903cf

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 242
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "label":Ljava/lang/String;
    .end local v6    # "text":Ljava/lang/String;
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 243
    const-string/jumbo v7, "\n+$"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 244
    .local v5, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 245
    .local v3, "matcher":Ljava/util/regex/Matcher;
    const-string/jumbo v7, ""

    invoke-virtual {v3, v7}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 247
    .end local v3    # "matcher":Ljava/util/regex/Matcher;
    .end local v5    # "pattern":Ljava/util/regex/Pattern;
    :cond_5
    return-object v4
.end method

.method public static createSettingAppInfoViewIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "packagename"    # Ljava/lang/String;

    .prologue
    .line 353
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 353
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 355
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 356
    return-object v0
.end method

.method public static getAllDeniedPermissions(Landroid/app/Activity;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 279
    const/4 v0, 0x0

    .line 280
    .local v0, "needPermissions":[Ljava/lang/String;
    if-eqz p1, :cond_3

    array-length v5, p1

    if-lez v5, :cond_3

    .line 281
    const/4 v3, 0x0

    .line 282
    .local v3, "permissionsToRequest":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v5, p1

    .end local v3    # "permissionsToRequest":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, p1, v4

    .line 283
    .local v1, "permission":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->isPermissionDenied(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    .line 284
    .local v2, "permissionDenied":Z
    if-eqz v2, :cond_1

    .line 285
    sget-object v6, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "permission is denied :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    if-nez v3, :cond_0

    .line 287
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 289
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 282
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 291
    :cond_1
    sget-object v6, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "permission is granted :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 294
    .end local v1    # "permission":Ljava/lang/String;
    .end local v2    # "permissionDenied":Z
    :cond_2
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 295
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    .line 296
    .local v0, "needPermissions":[Ljava/lang/String;
    invoke-interface {v3, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 299
    .end local v0    # "needPermissions":[Ljava/lang/String;
    :cond_3
    return-object v0
.end method

.method public static getAllDeniedPermissionsFromGrps(Landroid/app/Activity;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permissionGrpLists"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 258
    const/4 v2, 0x0

    .line 259
    .local v2, "needAllPermissions":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 260
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v6, p1

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v3, p1, v5

    .line 262
    .local v3, "permissionGrp":Ljava/lang/String;
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->ALL_PERMISSION_GROUP_MAP:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 261
    invoke-static {p0, v4}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->getAllDeniedPermissions(Landroid/app/Activity;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "eachPermisison":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v4, v0

    if-lez v4, :cond_0

    .line 264
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 260
    :cond_0
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    .line 267
    .end local v0    # "eachPermisison":[Ljava/lang/String;
    .end local v3    # "permissionGrp":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "needAllPermissions":[Ljava/lang/String;
    check-cast v2, [Ljava/lang/String;

    .line 268
    .local v2, "needAllPermissions":[Ljava/lang/String;
    return-object v2
.end method

.method public static getDisplayPermissionGroupName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 308
    const-string/jumbo v0, ""

    .line 310
    .local v0, "displayName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 311
    const/16 v5, 0x80

    .line 310
    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v2

    .line 312
    .local v2, "groupInfo":Landroid/content/pm/PermissionGroupInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 313
    .local v3, "label":Ljava/lang/CharSequence;
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 317
    .end local v2    # "groupInfo":Landroid/content/pm/PermissionGroupInfo;
    .end local v3    # "label":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    .line 314
    :catch_0
    move-exception v1

    .line 315
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Permission group not found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getPermissionGroupDisplayLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissionGrpName"    # Ljava/lang/String;

    .prologue
    .line 138
    const-string/jumbo v3, ""

    .line 139
    .local v3, "permissionGrpLabel":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 141
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 143
    const/16 v5, 0x80

    .line 141
    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v1

    .line 144
    .local v1, "groupInfo":Landroid/content/pm/PermissionGroupInfo;
    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/pm/PermissionGroupInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 146
    .local v2, "label":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 147
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 154
    .end local v1    # "groupInfo":Landroid/content/pm/PermissionGroupInfo;
    .end local v2    # "label":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object v3

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Permission group not found "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getPermissionGroupName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 366
    const-string/jumbo v1, ""

    .line 368
    .local v1, "groupName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 369
    const/16 v4, 0x80

    .line 368
    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    .line 370
    .local v2, "info":Landroid/content/pm/PermissionInfo;
    iget-object v1, v2, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .end local v2    # "info":Landroid/content/pm/PermissionInfo;
    :goto_0
    return-object v1

    .line 371
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v3, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Permission group not found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getPreference(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 378
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 379
    .local v0, "preference":Landroid/content/SharedPreferences;
    const-string/jumbo v1, "first_time_launch"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static getRationaleTextMessage(Landroid/app/Activity;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "needPermissions"    # [Ljava/lang/String;

    .prologue
    .line 176
    const-string/jumbo v3, ""

    .line 177
    .local v3, "rationaleMessage":Ljava/lang/String;
    const/4 v1, 0x0

    .line 179
    .local v1, "needPermissionGroupNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_4

    array-length v4, p1

    if-lez v4, :cond_4

    .line 180
    const/4 v0, 0x0

    .end local v1    # "needPermissionGroupNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_3

    .line 182
    aget-object v4, p1, v0

    invoke-virtual {p0, v4}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 184
    aget-object v4, p1, v0

    .line 183
    invoke-static {p0, v4}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->getPermissionGroupName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 187
    .local v2, "permissionGrpName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 188
    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->isEasyUnderstandablePemissionGroup(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 180
    .end local v2    # "permissionGrpName":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 189
    .restart local v2    # "permissionGrpName":Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_2

    .line 190
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 192
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 196
    .end local v2    # "permissionGrpName":Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 197
    invoke-static {p0, v1}, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->createRationalemessage(Landroid/content/Context;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v3

    .line 200
    .end local v0    # "i":I
    :cond_4
    return-object v3
.end method

.method public static isAllRequiredPermissionGranted(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 326
    if-eqz p0, :cond_0

    .line 327
    const-string/jumbo v0, "android.permission.READ_CONTACTS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 329
    const-string/jumbo v0, "android.permission.READ_SMS"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 331
    const-string/jumbo v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 333
    const/4 v0, 0x1

    return v0

    .line 336
    :cond_0
    return v1
.end method

.method public static isEasyUnderstandablePemissionGroup(Ljava/lang/String;)Z
    .locals 3
    .param p0, "permissionGrpName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 163
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/permissions/PermissionUtil;->EASY_RATIONALE_PERMISSOIN_GROUP:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 164
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    const/4 v1, 0x1

    return v1

    .line 169
    :cond_1
    return v2

    .line 171
    .end local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    return v2
.end method

.method public static isPermissionDenied(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 340
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 346
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 341
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 342
    .local v0, "selfPermission":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 343
    const/4 v1, 0x1

    return v1
.end method

.method public static setPreference(Landroid/content/Context;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z

    .prologue
    .line 383
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 384
    .local v0, "preference":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "first_time_launch"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 382
    return-void
.end method
