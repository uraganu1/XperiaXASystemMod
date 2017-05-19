.class public final enum Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;
.super Ljava/lang/Enum;
.source "GenerativeArtWork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/generativeartwork/GenerativeArtWork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Request"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;

.field public static final enum LAYER_ADDED:Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;

.field public static final enum LAYER_REMOVED:Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;

.field public static final enum RENDER:Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 30
    new-instance v0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;

    const-string/jumbo v1, "RENDER"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;->RENDER:Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;

    new-instance v0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;

    const-string/jumbo v1, "LAYER_ADDED"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;->LAYER_ADDED:Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;

    new-instance v0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;

    const-string/jumbo v1, "LAYER_REMOVED"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;->LAYER_REMOVED:Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;

    .line 29
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;

    sget-object v1, Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;->RENDER:Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;->LAYER_ADDED:Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;->LAYER_REMOVED:Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;->$VALUES:[Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;->$VALUES:[Lcom/sonymobile/generativeartwork/GenerativeArtWork$Request;

    return-object v0
.end method
