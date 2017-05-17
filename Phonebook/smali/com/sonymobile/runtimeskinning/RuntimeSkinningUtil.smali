.class public Lcom/sonymobile/runtimeskinning/RuntimeSkinningUtil;
.super Ljava/lang/Object;
.source "RuntimeSkinningUtil.java"


# static fields
.field public static final FLAG_DO_NOT_SHOW_UI:I = 0x1

.field public static final FLAG_PREFER_LIVE_WALLPAPER:I = 0x4

.field public static final FLAG_RESET_SOUNDS:I = 0x400

.field public static final FLAG_RETAIN_WALLPAPER:I = 0x2

.field public static final FLAG_SET_ALARM_SOUND:I = 0x100

.field public static final FLAG_SET_LOCKSCREEN_WALLPAPER:I = 0x40

.field public static final FLAG_SET_NOTIFICATION_SOUND:I = 0x200

.field public static final FLAG_SET_RINGTONE_SOUND:I = 0x80

.field public static final FLAG_SET_WALLPAPER:I = 0x10


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    return-void
.end method

.method private static getSkinPackageChangedFlag(Landroid/content/Intent;I)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 240
    if-eqz p0, :cond_0

    const-string/jumbo v1, "com.sonymobile.runtimeskinning.intent.SKIN_CHANGED"

    .line 243
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "com.sonymobile.runtimeskinning.flags"

    .line 246
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "silent"

    .line 247
    invoke-virtual {p0, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 250
    :goto_0
    and-int/2addr v1, p1

    if-eq v1, p1, :cond_3

    :goto_1
    return v0

    .line 241
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Intent must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid intent action, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_2
    or-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    .line 250
    goto :goto_1
.end method

.method public static isInitialSetup(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    const/high16 v0, 0x10000

    .line 229
    invoke-static {p0, v0}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningUtil;->getSkinPackageChangedFlag(Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method public static isLiveWallpaperUsed(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    const/4 v0, 0x4

    .line 199
    invoke-static {p0, v0}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningUtil;->getSkinPackageChangedFlag(Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method public static isStaticWallpaperUsed(Landroid/content/Intent;)Z
    .locals 1

    .prologue
    const/16 v0, 0x8

    .line 214
    invoke-static {p0, v0}, Lcom/sonymobile/runtimeskinning/RuntimeSkinningUtil;->getSkinPackageChangedFlag(Landroid/content/Intent;I)Z

    move-result v0

    return v0
.end method

.method public static newChangeCurrentSkinAndResourcesIntent(Landroid/content/Context;Landroid/content/pm/PackageInfo;I)Landroid/content/Intent;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 142
    if-nez p0, :cond_1

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Parameters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_1
    if-eqz p1, :cond_0

    .line 145
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.sonymobile.runtimeskinning.intent.SET_SKIN_PACKAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.category.DEFAULT"

    .line 146
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v2, "silent"

    .line 149
    and-int/lit8 v3, p2, 0x1

    if-nez v3, :cond_2

    :goto_0
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "com.sonymobile.runtimeskinning.flags"

    .line 150
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    return-object v1

    :cond_2
    const/4 v0, 0x1

    .line 149
    goto :goto_0
.end method

.method public static newGetSkinForColorIntent(FFFFFFI)Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 177
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.sonymobile.runtimeskinning.intent.PICK_SKIN_PACKAGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.category.DEFAULT"

    .line 178
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x6

    .line 179
    new-array v3, v3, [F

    aput p0, v3, v0

    aput p1, v3, v1

    const/4 v4, 0x2

    aput p2, v3, v4

    const/4 v4, 0x3

    aput p3, v3, v4

    const/4 v4, 0x4

    aput p4, v3, v4

    const/4 v4, 0x5

    aput p5, v3, v4

    const-string/jumbo v4, "com.sonymobile.runtimeskinning.hsvcolorandtolerance"

    .line 180
    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[F)Landroid/content/Intent;

    const-string/jumbo v3, "silent"

    .line 182
    and-int/lit8 v4, p6, 0x1

    if-nez v4, :cond_0

    :goto_0
    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v0, "com.sonymobile.runtimeskinning.flags"

    .line 183
    invoke-virtual {v2, v0, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 184
    return-object v2

    :cond_0
    move v0, v1

    .line 182
    goto :goto_0
.end method

.method public static requestSkinVerification(Landroid/content/Context;Landroid/content/pm/PackageInfo;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 269
    if-nez p0, :cond_1

    .line 270
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Parameters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_1
    if-eqz p1, :cond_0

    .line 273
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.sonymobile.runtimeskinning.core"

    const-string/jumbo v2, "com.sonymobile.runtimeskinning.verification.SkinVerificationService"

    .line 274
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 278
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 279
    return-void
.end method
