.class final enum Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;
.super Ljava/lang/Enum;
.source "ImPermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/jms/permission/ImPermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ImSendMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;

.field public static final enum DEQUEUE:Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;

.field public static final enum NORMAL:Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-instance v0, Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;->NORMAL:Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;

    new-instance v0, Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;

    const-string/jumbo v1, "DEQUEUE"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;->DEQUEUE:Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;

    const/4 v0, 0x2

    .line 65
    new-array v0, v0, [Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;

    sget-object v1, Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;->NORMAL:Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;->DEQUEUE:Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;->$VALUES:[Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;

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
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;

    .line 65
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;->$VALUES:[Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/jms/permission/ImPermissionManager$ImSendMode;

    return-object v0
.end method
