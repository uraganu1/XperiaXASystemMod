.class public final enum Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;
.super Ljava/lang/Enum;
.source "LayerSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/generativeartwork/settings/LayerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Item"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

.field public static final enum GradientAngle:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

.field public static final enum GradientColorPoints:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

.field public static final enum GradientRanges:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

.field public static final enum LetterAngle:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

.field public static final enum LetterColorPoints:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

.field public static final enum LetterScale:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

.field public static final enum LetterXOffset:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

.field public static final enum LetterYOffset:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

.field public static final enum PaletteColors:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    const-string/jumbo v1, "GradientColorPoints"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->GradientColorPoints:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    .line 22
    new-instance v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    const-string/jumbo v1, "GradientAngle"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->GradientAngle:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    .line 23
    new-instance v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    const-string/jumbo v1, "GradientRanges"

    invoke-direct {v0, v1, v5}, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->GradientRanges:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    .line 24
    new-instance v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    const-string/jumbo v1, "LetterColorPoints"

    invoke-direct {v0, v1, v6}, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterColorPoints:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    .line 25
    new-instance v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    const-string/jumbo v1, "LetterAngle"

    invoke-direct {v0, v1, v7}, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterAngle:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    .line 26
    new-instance v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    const-string/jumbo v1, "LetterXOffset"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterXOffset:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    .line 27
    new-instance v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    const-string/jumbo v1, "LetterYOffset"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterYOffset:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    .line 28
    new-instance v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    const-string/jumbo v1, "LetterScale"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterScale:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    .line 29
    new-instance v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    const-string/jumbo v1, "PaletteColors"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->PaletteColors:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    const/16 v0, 0x9

    .line 20
    new-array v0, v0, [Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    sget-object v1, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->GradientColorPoints:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->GradientAngle:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->GradientRanges:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterColorPoints:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterAngle:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterXOffset:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterYOffset:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->LetterScale:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->PaletteColors:Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->$VALUES:[Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;
    .locals 1

    .prologue
    const-class v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    .line 20
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;->$VALUES:[Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/generativeartwork/settings/LayerSettings$Item;

    return-object v0
.end method
