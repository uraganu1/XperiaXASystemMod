.class public final enum Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;
.super Ljava/lang/Enum;
.source "PileItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/pileview/PileItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

.field public static final enum ALIEN:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

.field public static final enum ANIMATED_IMAGE:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

.field public static final enum ANIMATED_STICKER:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

.field public static final enum AUDIO:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

.field public static final enum CONTACT:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

.field public static final enum IMAGE:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

.field public static final enum LOCATION:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

.field public static final enum LOCATION_IMAGE:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

.field public static final enum STICKER:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

.field public static final enum UNKNOWN:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

.field public static final enum VCALENDAR:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

.field public static final enum VIDEO:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 23
    new-instance v0, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    const-string/jumbo v1, "IMAGE"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->IMAGE:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    new-instance v0, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    const-string/jumbo v1, "ANIMATED_IMAGE"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ANIMATED_IMAGE:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    new-instance v0, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    const-string/jumbo v1, "STICKER"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->STICKER:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    new-instance v0, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    const-string/jumbo v1, "ANIMATED_STICKER"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ANIMATED_STICKER:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    new-instance v0, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    const-string/jumbo v1, "LOCATION"

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->LOCATION:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    new-instance v0, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    const-string/jumbo v1, "LOCATION_IMAGE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->LOCATION_IMAGE:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    .line 24
    new-instance v0, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    const-string/jumbo v1, "VIDEO"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->VIDEO:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    new-instance v0, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    const-string/jumbo v1, "CONTACT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->CONTACT:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    new-instance v0, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    const-string/jumbo v1, "AUDIO"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->AUDIO:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    new-instance v0, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    const-string/jumbo v1, "VCALENDAR"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->VCALENDAR:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    new-instance v0, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    const-string/jumbo v1, "ALIEN"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ALIEN:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    new-instance v0, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    const-string/jumbo v1, "UNKNOWN"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->UNKNOWN:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    .line 23
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->IMAGE:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ANIMATED_IMAGE:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->STICKER:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ANIMATED_STICKER:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->LOCATION:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->LOCATION_IMAGE:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->VIDEO:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->CONTACT:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->AUDIO:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->VCALENDAR:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->ALIEN:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->UNKNOWN:Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->$VALUES:[Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;->$VALUES:[Lcom/sonyericsson/conversations/ui/pileview/PileItem$Type;

    return-object v0
.end method
