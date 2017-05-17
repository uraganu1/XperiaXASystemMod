.class public abstract Lcom/sonymobile/rcs/platform/registry/RegistryFactory;
.super Ljava/lang/Object;
.source "RegistryFactory.java"


# static fields
.field private static factory:Lcom/sonymobile/rcs/platform/registry/RegistryFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 32
    sput-object v0, Lcom/sonymobile/rcs/platform/registry/RegistryFactory;->factory:Lcom/sonymobile/rcs/platform/registry/RegistryFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFactory()Lcom/sonymobile/rcs/platform/registry/RegistryFactory;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/sonymobile/rcs/platform/registry/RegistryFactory;->factory:Lcom/sonymobile/rcs/platform/registry/RegistryFactory;

    return-object v0
.end method

.method public static loadFactory(Ljava/lang/String;)V
    .locals 4
    .param p0, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/platform/FactoryException;
        }
    .end annotation

    .prologue
    .line 41
    sget-object v1, Lcom/sonymobile/rcs/platform/registry/RegistryFactory;->factory:Lcom/sonymobile/rcs/platform/registry/RegistryFactory;

    if-nez v1, :cond_0

    .line 46
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/platform/registry/RegistryFactory;

    sput-object v1, Lcom/sonymobile/rcs/platform/registry/RegistryFactory;->factory:Lcom/sonymobile/rcs/platform/registry/RegistryFactory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    return-void

    .line 42
    :cond_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/sonymobile/rcs/platform/FactoryException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t load the factory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sonymobile/rcs/platform/FactoryException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public abstract readInteger(Ljava/lang/String;I)I
.end method

.method public abstract readLong(Ljava/lang/String;J)J
.end method

.method public abstract readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract removeParameter(Ljava/lang/String;)V
.end method

.method public abstract writeBoolean(Ljava/lang/String;Z)V
.end method

.method public abstract writeInteger(Ljava/lang/String;I)V
.end method

.method public abstract writeLong(Ljava/lang/String;J)V
.end method

.method public abstract writeString(Ljava/lang/String;Ljava/lang/String;)V
.end method
