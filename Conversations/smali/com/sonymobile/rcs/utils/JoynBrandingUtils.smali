.class public Lcom/sonymobile/rcs/utils/JoynBrandingUtils;
.super Ljava/lang/Object;
.source "JoynBrandingUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createContext(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 43
    .local v0, "appContext":Landroid/content/Context;
    if-nez p0, :cond_0

    .line 47
    .end local v0    # "appContext":Landroid/content/Context;
    :goto_0
    :try_start_0
    invoke-static {v0}, Lcom/sonymobile/rcs/platform/AndroidFactory;->setApplicationContext(Landroid/content/Context;)V

    .line 52
    :goto_1
    return-void

    .restart local v0    # "appContext":Landroid/content/Context;
    :cond_0
    const-string/jumbo v2, "com.sonymobile.rcs"

    const/4 v3, 0x2

    .line 44
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, "appContext":Landroid/content/Context;
    goto :goto_0

    .line 51
    .end local v0    # "appContext":Landroid/content/Context;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v2, "JoynBrandingUtils"

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No application with package name com.sonymobile.rcs found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static isEnrichedCallingEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    .line 85
    return v0

    .line 78
    :cond_0
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "com.sonymobile.rcs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 82
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 79
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/rcs/utils/JoynBrandingUtils;->createContext(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static isJoynBranding(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 26
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 29
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    .line 37
    return v0

    .line 27
    :cond_0
    invoke-static {p0}, Lcom/sonymobile/rcs/utils/JoynBrandingUtils;->createContext(Landroid/content/Context;)V

    goto :goto_0

    .line 31
    :cond_1
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "com.sonymobile.rcs"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 34
    :goto_1
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-eqz v2, :cond_3

    :goto_2
    return v0

    .line 32
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/sonymobile/rcs/utils/JoynBrandingUtils;->createContext(Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    move v0, v1

    .line 34
    goto :goto_2
.end method
