.class public final enum Lcom/sonymobile/generativeartwork/gl/Letter$Type;
.super Ljava/lang/Enum;
.source "Letter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/generativeartwork/gl/Letter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/generativeartwork/gl/Letter$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/generativeartwork/gl/Letter$Type;

.field public static final enum FONT_AND_STOCK_IMAGES:Lcom/sonymobile/generativeartwork/gl/Letter$Type;

.field public static final enum FONT_IMAGE:Lcom/sonymobile/generativeartwork/gl/Letter$Type;

.field public static final enum STOCK_IMAGES:Lcom/sonymobile/generativeartwork/gl/Letter$Type;

.field public static final enum UNDEFINED:Lcom/sonymobile/generativeartwork/gl/Letter$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/sonymobile/generativeartwork/gl/Letter$Type;

    const-string/jumbo v1, "FONT_IMAGE"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/generativeartwork/gl/Letter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/generativeartwork/gl/Letter$Type;->FONT_IMAGE:Lcom/sonymobile/generativeartwork/gl/Letter$Type;

    new-instance v0, Lcom/sonymobile/generativeartwork/gl/Letter$Type;

    const-string/jumbo v1, "STOCK_IMAGES"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/generativeartwork/gl/Letter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/generativeartwork/gl/Letter$Type;->STOCK_IMAGES:Lcom/sonymobile/generativeartwork/gl/Letter$Type;

    new-instance v0, Lcom/sonymobile/generativeartwork/gl/Letter$Type;

    const-string/jumbo v1, "FONT_AND_STOCK_IMAGES"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/generativeartwork/gl/Letter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/generativeartwork/gl/Letter$Type;->FONT_AND_STOCK_IMAGES:Lcom/sonymobile/generativeartwork/gl/Letter$Type;

    new-instance v0, Lcom/sonymobile/generativeartwork/gl/Letter$Type;

    const-string/jumbo v1, "UNDEFINED"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/generativeartwork/gl/Letter$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/generativeartwork/gl/Letter$Type;->UNDEFINED:Lcom/sonymobile/generativeartwork/gl/Letter$Type;

    const/4 v0, 0x4

    .line 26
    new-array v0, v0, [Lcom/sonymobile/generativeartwork/gl/Letter$Type;

    sget-object v1, Lcom/sonymobile/generativeartwork/gl/Letter$Type;->FONT_IMAGE:Lcom/sonymobile/generativeartwork/gl/Letter$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/generativeartwork/gl/Letter$Type;->STOCK_IMAGES:Lcom/sonymobile/generativeartwork/gl/Letter$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/generativeartwork/gl/Letter$Type;->FONT_AND_STOCK_IMAGES:Lcom/sonymobile/generativeartwork/gl/Letter$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/generativeartwork/gl/Letter$Type;->UNDEFINED:Lcom/sonymobile/generativeartwork/gl/Letter$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonymobile/generativeartwork/gl/Letter$Type;->$VALUES:[Lcom/sonymobile/generativeartwork/gl/Letter$Type;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/generativeartwork/gl/Letter$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/sonymobile/generativeartwork/gl/Letter$Type;

    .line 26
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/generativeartwork/gl/Letter$Type;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/generativeartwork/gl/Letter$Type;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/sonymobile/generativeartwork/gl/Letter$Type;->$VALUES:[Lcom/sonymobile/generativeartwork/gl/Letter$Type;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/generativeartwork/gl/Letter$Type;

    return-object v0
.end method