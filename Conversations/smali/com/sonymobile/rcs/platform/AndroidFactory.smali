.class public Lcom/sonymobile/rcs/platform/AndroidFactory;
.super Ljava/lang/Object;
.source "AndroidFactory.java"


# static fields
.field private static context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    sput-object v0, Lcom/sonymobile/rcs/platform/AndroidFactory;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/sonymobile/rcs/platform/AndroidFactory;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static setApplicationContext(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    sput-object p0, Lcom/sonymobile/rcs/platform/AndroidFactory;->context:Landroid/content/Context;

    :try_start_0
    const-string/jumbo v1, "com.sonymobile.rcs.platform.network.AndroidNetworkFactory"

    .line 55
    invoke-static {v1}, Lcom/sonymobile/rcs/platform/network/NetworkFactory;->loadFactory(Ljava/lang/String;)V

    const-string/jumbo v1, "com.sonymobile.rcs.platform.registry.AndroidRegistryFactory"

    .line 56
    invoke-static {v1}, Lcom/sonymobile/rcs/platform/registry/RegistryFactory;->loadFactory(Ljava/lang/String;)V

    const-string/jumbo v1, "com.sonymobile.rcs.platform.file.AndroidFileFactory"

    .line 58
    invoke-static {v1}, Lcom/sonymobile/rcs/platform/file/FileFactory;->loadFactory(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonymobile/rcs/platform/FactoryException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 61
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Lcom/sonymobile/rcs/platform/FactoryException;
    invoke-virtual {v0}, Lcom/sonymobile/rcs/platform/FactoryException;->printStackTrace()V

    goto :goto_0
.end method
