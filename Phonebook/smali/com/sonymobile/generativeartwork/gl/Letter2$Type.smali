.class public final enum Lcom/sonymobile/generativeartwork/gl/Letter2$Type;
.super Ljava/lang/Enum;
.source "Letter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/generativeartwork/gl/Letter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/generativeartwork/gl/Letter2$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/generativeartwork/gl/Letter2$Type;

.field public static final enum FONT_IMAGE:Lcom/sonymobile/generativeartwork/gl/Letter2$Type;

.field public static final enum STOCK_IMAGE:Lcom/sonymobile/generativeartwork/gl/Letter2$Type;

.field public static final enum UNDEFINED:Lcom/sonymobile/generativeartwork/gl/Letter2$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/sonymobile/generativeartwork/gl/Letter2$Type;

    const-string/jumbo v1, "FONT_IMAGE"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/generativeartwork/gl/Letter2$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/generativeartwork/gl/Letter2$Type;->FONT_IMAGE:Lcom/sonymobile/generativeartwork/gl/Letter2$Type;

    new-instance v0, Lcom/sonymobile/generativeartwork/gl/Letter2$Type;

    const-string/jumbo v1, "STOCK_IMAGE"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/generativeartwork/gl/Letter2$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/generativeartwork/gl/Letter2$Type;->STOCK_IMAGE:Lcom/sonymobile/generativeartwork/gl/Letter2$Type;

    new-instance v0, Lcom/sonymobile/generativeartwork/gl/Letter2$Type;

    const-string/jumbo v1, "UNDEFINED"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/generativeartwork/gl/Letter2$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/generativeartwork/gl/Letter2$Type;->UNDEFINED:Lcom/sonymobile/generativeartwork/gl/Letter2$Type;

    const/4 v0, 0x3

    .line 15
    new-array v0, v0, [Lcom/sonymobile/generativeartwork/gl/Letter2$Type;

    sget-object v1, Lcom/sonymobile/generativeartwork/gl/Letter2$Type;->FONT_IMAGE:Lcom/sonymobile/generativeartwork/gl/Letter2$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/generativeartwork/gl/Letter2$Type;->STOCK_IMAGE:Lcom/sonymobile/generativeartwork/gl/Letter2$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/generativeartwork/gl/Letter2$Type;->UNDEFINED:Lcom/sonymobile/generativeartwork/gl/Letter2$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/generativeartwork/gl/Letter2$Type;->$VALUES:[Lcom/sonymobile/generativeartwork/gl/Letter2$Type;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/generativeartwork/gl/Letter2$Type;
    .locals 1

    .prologue
    const-class v0, Lcom/sonymobile/generativeartwork/gl/Letter2$Type;

    .line 15
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/generativeartwork/gl/Letter2$Type;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/generativeartwork/gl/Letter2$Type;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/sonymobile/generativeartwork/gl/Letter2$Type;->$VALUES:[Lcom/sonymobile/generativeartwork/gl/Letter2$Type;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/generativeartwork/gl/Letter2$Type;

    return-object v0
.end method
