.class Lcom/sonymobile/runtimeskinning/SkinGlueV21;
.super Ljava/lang/Object;
.source "SkinGlueV21.java"

# interfaces
.implements Lcom/sonymobile/runtimeskinning/SkinGlue;


# instance fields
.field private mFieldConfigSkinPackage:Ljava/lang/reflect/Field;

.field private mFieldIsSkin:Ljava/lang/reflect/Field;

.field private mFieldIsVerifiedSkin:Ljava/lang/reflect/Field;

.field private mMethodGetRuntimeSkin:Ljava/lang/reflect/Method;

.field private mMethodSetRuntimeSkin:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized init()Z
    .locals 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    monitor-enter p0

    .line 198
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->mFieldIsSkin:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_2

    .line 201
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->mFieldIsVerifiedSkin:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_3

    .line 205
    :goto_1
    iget-object v2, p0, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->mFieldConfigSkinPackage:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_4

    .line 209
    :goto_2
    iget-object v2, p0, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->mMethodGetRuntimeSkin:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_5

    .line 213
    :goto_3
    iget-object v2, p0, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->mMethodSetRuntimeSkin:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_6

    .line 217
    :goto_4
    iget-object v2, p0, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->mFieldIsSkin:Ljava/lang/reflect/Field;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_7

    :cond_0
    :goto_5
    move v0, v1

    :cond_1
    monitor-exit p0

    return v0

    :cond_2
    :try_start_1
    const-class v2, Landroid/content/pm/PackageInfo;

    const-string/jumbo v3, "isSkin"

    .line 199
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->mFieldIsSkin:Ljava/lang/reflect/Field;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_2
    const-class v2, Landroid/content/pm/PackageInfo;

    const-string/jumbo v3, "isVerifiedSkin"

    .line 202
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->mFieldIsVerifiedSkin:Ljava/lang/reflect/Field;

    goto :goto_1

    :cond_4
    const-class v2, Landroid/content/pm/ActivityInfo;

    const-string/jumbo v3, "CONFIG_SKIN_PACKAGE"

    .line 206
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3, v4}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->getField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->mFieldConfigSkinPackage:Ljava/lang/reflect/Field;

    goto :goto_2

    :cond_5
    const-class v2, Landroid/content/pm/IPackageManager;

    const-string/jumbo v3, "getRuntimeSkin"

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x1

    .line 210
    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->mMethodGetRuntimeSkin:Ljava/lang/reflect/Method;

    goto :goto_3

    :cond_6
    const-class v2, Landroid/content/pm/IPackageManager;

    const-string/jumbo v3, "setRuntimeSkin"

    .line 214
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->mMethodSetRuntimeSkin:Ljava/lang/reflect/Method;

    goto :goto_4

    .line 217
    :cond_7
    iget-object v2, p0, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->mFieldIsVerifiedSkin:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->mFieldConfigSkinPackage:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->mMethodGetRuntimeSkin:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->mMethodSetRuntimeSkin:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_1

    goto :goto_5
.end method


# virtual methods
.method public getSkin(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 168
    invoke-direct {p0}, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->init()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    new-instance v1, Lcom/sonymobile/runtimeskinning/ExceptionHandler;

    invoke-direct {v1}, Lcom/sonymobile/runtimeskinning/ExceptionHandler;-><init>()V

    .line 172
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 173
    iget-object v2, p0, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->mMethodGetRuntimeSkin:Ljava/lang/reflect/Method;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v0, v1, v3, v4}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 174
    invoke-virtual {v1}, Lcom/sonymobile/runtimeskinning/ExceptionHandler;->reThrow()V

    .line 175
    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 169
    return-object v0
.end method

.method public isApplicable(Landroid/content/Context;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 67
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-gt v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->init()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isResourceOverlaid(Landroid/content/Context;Landroid/content/res/Resources;II)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 124
    :try_start_0
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 125
    const/4 v3, 0x1

    invoke-virtual {p2, p3, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 126
    iget v3, v2, Landroid/util/TypedValue;->assetCookie:I

    .line 127
    const/4 v4, 0x1

    invoke-virtual {p2, p4, v2, v4}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 128
    iget v2, v2, Landroid/util/TypedValue;->assetCookie:I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v2, v3, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 130
    return v0
.end method

.method public isSkin(Landroid/content/Context;Landroid/content/pm/PackageInfo;I)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-direct {p0}, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->init()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->mFieldIsSkin:Ljava/lang/reflect/Field;

    const-class v2, Ljava/lang/Boolean;

    invoke-static {v0, p2, v2}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 76
    :cond_1
    return v1

    .line 78
    :cond_2
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSkinConfigurationChanged(Landroid/content/Context;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 139
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->mFieldConfigSkinPackage:Ljava/lang/reflect/Field;

    const-class v2, Ljava/lang/Integer;

    invoke-static {v0, v3, v2}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 140
    if-nez v0, :cond_1

    .line 141
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 140
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/2addr v2, p2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v2, v0, :cond_2

    move v0, v1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isTrusted(Landroid/content/Context;Landroid/content/pm/PackageInfo;I)Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->init()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->isVerified(Landroid/content/Context;Landroid/content/pm/PackageInfo;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    return v1

    .line 100
    :cond_0
    return v1

    .line 105
    :cond_1
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    move v0, v1

    .line 107
    :goto_0
    if-nez v0, :cond_3

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v3, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v4, "android"

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    :goto_1
    return v1

    :cond_2
    move v0, v2

    .line 105
    goto :goto_0

    .line 108
    :cond_3
    return v2

    :cond_4
    move v1, v2

    .line 111
    goto :goto_1
.end method

.method public isVerified(Landroid/content/Context;Landroid/content/pm/PackageInfo;I)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->init()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->isSkin(Landroid/content/Context;Landroid/content/pm/PackageInfo;I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 88
    :cond_1
    return v1

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->mFieldIsVerifiedSkin:Ljava/lang/reflect/Field;

    const-class v2, Ljava/lang/Boolean;

    invoke-static {v0, p2, v2}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public myUserId(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 183
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    return v0
.end method

.method public setSkin(Landroid/content/Context;Landroid/content/pm/PackageInfo;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 152
    invoke-direct {p0}, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->init()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 155
    new-instance v2, Lcom/sonymobile/runtimeskinning/ExceptionHandler;

    invoke-direct {v2}, Lcom/sonymobile/runtimeskinning/ExceptionHandler;-><init>()V

    .line 156
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 157
    iget-object v4, p0, Lcom/sonymobile/runtimeskinning/SkinGlueV21;->mMethodSetRuntimeSkin:Ljava/lang/reflect/Method;

    const-class v5, Ljava/lang/Boolean;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v7, 0x1

    if-eqz p2, :cond_0

    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    :cond_0
    aput-object v0, v6, v7

    invoke-static {v4, v3, v2, v5, v6}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 159
    invoke-virtual {v2}, Lcom/sonymobile/runtimeskinning/ExceptionHandler;->reThrow()V

    .line 160
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    .line 153
    :cond_1
    return v1

    :cond_2
    move v0, v1

    .line 160
    goto :goto_0
.end method

.method public supportsInstallableSkins(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    return v0
.end method
