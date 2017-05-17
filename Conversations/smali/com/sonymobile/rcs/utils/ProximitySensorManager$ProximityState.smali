.class public final enum Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximityState;
.super Ljava/lang/Enum;
.source "ProximitySensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/rcs/utils/ProximitySensorManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProximityState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximityState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximityState;

.field public static final enum FAR:Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximityState;

.field public static final enum NEAR:Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximityState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximityState;

    const-string/jumbo v1, "NEAR"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximityState;->NEAR:Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximityState;

    new-instance v0, Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximityState;

    const-string/jumbo v1, "FAR"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximityState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximityState;->FAR:Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximityState;

    const/4 v0, 0x2

    .line 42
    new-array v0, v0, [Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximityState;

    sget-object v1, Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximityState;->NEAR:Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximityState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximityState;->FAR:Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximityState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximityState;->$VALUES:[Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximityState;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximityState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximityState;

    .line 42
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximityState;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximityState;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximityState;->$VALUES:[Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximityState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/rcs/utils/ProximitySensorManager$ProximityState;

    return-object v0
.end method
