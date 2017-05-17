.class public final enum Lcom/sonymobile/generativeartwork/layers/LayerType;
.super Ljava/lang/Enum;
.source "LayerType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/generativeartwork/layers/LayerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/generativeartwork/layers/LayerType;

.field public static final enum ARTISTIC:Lcom/sonymobile/generativeartwork/layers/LayerType;

.field public static final enum BACKGROUND:Lcom/sonymobile/generativeartwork/layers/LayerType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/sonymobile/generativeartwork/layers/LayerType;

    const-string/jumbo v1, "BACKGROUND"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/generativeartwork/layers/LayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/generativeartwork/layers/LayerType;->BACKGROUND:Lcom/sonymobile/generativeartwork/layers/LayerType;

    .line 16
    new-instance v0, Lcom/sonymobile/generativeartwork/layers/LayerType;

    const-string/jumbo v1, "ARTISTIC"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/generativeartwork/layers/LayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/generativeartwork/layers/LayerType;->ARTISTIC:Lcom/sonymobile/generativeartwork/layers/LayerType;

    const/4 v0, 0x2

    .line 14
    new-array v0, v0, [Lcom/sonymobile/generativeartwork/layers/LayerType;

    sget-object v1, Lcom/sonymobile/generativeartwork/layers/LayerType;->BACKGROUND:Lcom/sonymobile/generativeartwork/layers/LayerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/generativeartwork/layers/LayerType;->ARTISTIC:Lcom/sonymobile/generativeartwork/layers/LayerType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/generativeartwork/layers/LayerType;->$VALUES:[Lcom/sonymobile/generativeartwork/layers/LayerType;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/generativeartwork/layers/LayerType;
    .locals 1

    .prologue
    const-class v0, Lcom/sonymobile/generativeartwork/layers/LayerType;

    .line 14
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/generativeartwork/layers/LayerType;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/generativeartwork/layers/LayerType;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/sonymobile/generativeartwork/layers/LayerType;->$VALUES:[Lcom/sonymobile/generativeartwork/layers/LayerType;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/generativeartwork/layers/LayerType;

    return-object v0
.end method
