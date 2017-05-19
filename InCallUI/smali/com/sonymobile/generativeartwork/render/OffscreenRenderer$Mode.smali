.class public final enum Lcom/sonymobile/generativeartwork/render/OffscreenRenderer$Mode;
.super Ljava/lang/Enum;
.source "OffscreenRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/generativeartwork/render/OffscreenRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/generativeartwork/render/OffscreenRenderer$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/generativeartwork/render/OffscreenRenderer$Mode;

.field public static final enum CutTL:Lcom/sonymobile/generativeartwork/render/OffscreenRenderer$Mode;

.field public static final enum Stretch:Lcom/sonymobile/generativeartwork/render/OffscreenRenderer$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 49
    new-instance v0, Lcom/sonymobile/generativeartwork/render/OffscreenRenderer$Mode;

    const-string/jumbo v1, "Stretch"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/generativeartwork/render/OffscreenRenderer$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/generativeartwork/render/OffscreenRenderer$Mode;->Stretch:Lcom/sonymobile/generativeartwork/render/OffscreenRenderer$Mode;

    new-instance v0, Lcom/sonymobile/generativeartwork/render/OffscreenRenderer$Mode;

    const-string/jumbo v1, "CutTL"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/generativeartwork/render/OffscreenRenderer$Mode;-><init>(Ljava/lang/String;I)V

    .line 50
    sput-object v0, Lcom/sonymobile/generativeartwork/render/OffscreenRenderer$Mode;->CutTL:Lcom/sonymobile/generativeartwork/render/OffscreenRenderer$Mode;

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonymobile/generativeartwork/render/OffscreenRenderer$Mode;

    sget-object v1, Lcom/sonymobile/generativeartwork/render/OffscreenRenderer$Mode;->Stretch:Lcom/sonymobile/generativeartwork/render/OffscreenRenderer$Mode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/generativeartwork/render/OffscreenRenderer$Mode;->CutTL:Lcom/sonymobile/generativeartwork/render/OffscreenRenderer$Mode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/generativeartwork/render/OffscreenRenderer$Mode;->$VALUES:[Lcom/sonymobile/generativeartwork/render/OffscreenRenderer$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/generativeartwork/render/OffscreenRenderer$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 48
    const-class v0, Lcom/sonymobile/generativeartwork/render/OffscreenRenderer$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/generativeartwork/render/OffscreenRenderer$Mode;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/generativeartwork/render/OffscreenRenderer$Mode;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/sonymobile/generativeartwork/render/OffscreenRenderer$Mode;->$VALUES:[Lcom/sonymobile/generativeartwork/render/OffscreenRenderer$Mode;

    return-object v0
.end method
