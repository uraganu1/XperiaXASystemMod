.class public final enum Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;
.super Ljava/lang/Enum;
.source "ImEnvironmentApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/jms/environment/ImEnvironmentApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

.field public static final enum CONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

.field public static final enum DISABLED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

.field public static final enum DISCONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    const-string/jumbo v1, "CONNECTED"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->CONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    new-instance v0, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    const-string/jumbo v1, "DISCONNECTED"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->DISCONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    new-instance v0, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    const-string/jumbo v1, "DISABLED"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->DISABLED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    const/4 v0, 0x3

    .line 30
    new-array v0, v0, [Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    sget-object v1, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->CONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->DISCONNECTED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->DISABLED:Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->$VALUES:[Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    .line 30
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;->$VALUES:[Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/jms/environment/ImEnvironmentApi$ConnectionStatus;

    return-object v0
.end method
