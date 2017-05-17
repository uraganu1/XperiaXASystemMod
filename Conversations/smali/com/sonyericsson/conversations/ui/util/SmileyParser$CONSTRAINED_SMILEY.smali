.class public final enum Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;
.super Ljava/lang/Enum;
.source "SmileyParser.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/util/SmileyParser$Smiley;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/util/SmileyParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CONSTRAINED_SMILEY"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;",
        ">;",
        "Lcom/sonyericsson/conversations/ui/util/SmileyParser$Smiley;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

.field public static final enum ANGRY:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

.field public static final enum CONFUSED:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

.field public static final enum COOL:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

.field public static final enum EMBARRASSED:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

.field public static final enum MUSIC_NOTE:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

.field public static final enum NERD:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

.field public static final enum PIG:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

.field public static final enum PIRATE:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

.field public static final enum ROLLING_EYES:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

.field public static final enum SAD:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

.field public static final enum SHOCKED:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

.field public static final enum TONGUE_OUT:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

.field public static final enum VERY_HAPPY:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;


# instance fields
.field private final mSmileyArrayRes:I

.field private final mSmileyDrawableRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 184
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    const-string/jumbo v1, "SAD"

    const v2, 0x7f020090

    const v3, 0x7f10003d

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;->SAD:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    .line 185
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    const-string/jumbo v1, "SHOCKED"

    const v2, 0x7f02009a

    const v3, 0x7f10003e

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;->SHOCKED:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    .line 186
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    const-string/jumbo v1, "VERY_HAPPY"

    const v2, 0x7f02009d

    const v3, 0x7f10003f

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;->VERY_HAPPY:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    .line 187
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    const-string/jumbo v1, "TONGUE_OUT"

    const v2, 0x7f020097

    const v3, 0x7f100040

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;->TONGUE_OUT:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    .line 188
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    const-string/jumbo v1, "ANGRY"

    const v2, 0x7f020069

    const v3, 0x7f100041

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;->ANGRY:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    .line 189
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    const-string/jumbo v1, "EMBARRASSED"

    const/4 v2, 0x5

    const v3, 0x7f020077

    const v4, 0x7f100043

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;->EMBARRASSED:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    .line 190
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    const-string/jumbo v1, "COOL"

    const/4 v2, 0x6

    const v3, 0x7f020072

    const v4, 0x7f100044

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;->COOL:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    .line 191
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    const-string/jumbo v1, "CONFUSED"

    const/4 v2, 0x7

    const v3, 0x7f020071

    const v4, 0x7f100042

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;->CONFUSED:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    .line 192
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    const-string/jumbo v1, "NERD"

    const/16 v2, 0x8

    const v3, 0x7f020085

    const v4, 0x7f100045

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;->NERD:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    .line 193
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    const-string/jumbo v1, "ROLLING_EYES"

    const/16 v2, 0x9

    const v3, 0x7f020079

    const v4, 0x7f100046

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;->ROLLING_EYES:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    .line 194
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    const-string/jumbo v1, "PIRATE"

    const/16 v2, 0xa

    const v3, 0x7f02008b

    const v4, 0x7f100047

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;->PIRATE:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    .line 195
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    const-string/jumbo v1, "MUSIC_NOTE"

    const/16 v2, 0xb

    const v3, 0x7f020084

    const v4, 0x7f100048

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;->MUSIC_NOTE:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    .line 196
    new-instance v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    const-string/jumbo v1, "PIG"

    const/16 v2, 0xc

    const v3, 0x7f02008a

    const v4, 0x7f100049

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;->PIG:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    .line 183
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    sget-object v1, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;->SAD:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;->SHOCKED:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;->VERY_HAPPY:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;->TONGUE_OUT:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    aput-object v1, v0, v8

    sget-object v1, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;->ANGRY:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    aput-object v1, v0, v9

    sget-object v1, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;->EMBARRASSED:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;->COOL:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;->CONFUSED:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;->NERD:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;->ROLLING_EYES:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;->PIRATE:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;->MUSIC_NOTE:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;->PIG:Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sput-object v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;->$VALUES:[Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .param p3, "drawableRes"    # I
    .param p4, "arrayRes"    # I

    .prologue
    .line 201
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 202
    iput p3, p0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;->mSmileyDrawableRes:I

    .line 203
    iput p4, p0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;->mSmileyArrayRes:I

    .line 201
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 183
    const-class v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;->$VALUES:[Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;

    return-object v0
.end method


# virtual methods
.method public getSmileyArrayRes()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;->mSmileyArrayRes:I

    return v0
.end method

.method public getSmileyDrawableRes()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lcom/sonyericsson/conversations/ui/util/SmileyParser$CONSTRAINED_SMILEY;->mSmileyDrawableRes:I

    return v0
.end method
