.class public final enum Lcom/sonyericsson/conversations/util/ByteUnit;
.super Ljava/lang/Enum;
.source "ByteUnit.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/conversations/util/ByteUnit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/conversations/util/ByteUnit;

.field public static final enum BYTE:Lcom/sonyericsson/conversations/util/ByteUnit;

.field public static final enum KILOBYTE:Lcom/sonyericsson/conversations/util/ByteUnit;

.field public static final enum MEGABYTE:Lcom/sonyericsson/conversations/util/ByteUnit;


# instance fields
.field private mSizeInBytes:D

.field private mUnitResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v3, 0x0

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    .line 12
    new-instance v1, Lcom/sonyericsson/conversations/util/ByteUnit;

    const-string/jumbo v2, "BYTE"

    const-wide/16 v4, 0x0

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const v6, 0x7f0b0210

    invoke-direct/range {v1 .. v6}, Lcom/sonyericsson/conversations/util/ByteUnit;-><init>(Ljava/lang/String;IDI)V

    sput-object v1, Lcom/sonyericsson/conversations/util/ByteUnit;->BYTE:Lcom/sonyericsson/conversations/util/ByteUnit;

    .line 13
    new-instance v5, Lcom/sonyericsson/conversations/util/ByteUnit;

    const-string/jumbo v6, "KILOBYTE"

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    const v10, 0x7f0b0211

    invoke-direct/range {v5 .. v10}, Lcom/sonyericsson/conversations/util/ByteUnit;-><init>(Ljava/lang/String;IDI)V

    sput-object v5, Lcom/sonyericsson/conversations/util/ByteUnit;->KILOBYTE:Lcom/sonyericsson/conversations/util/ByteUnit;

    .line 14
    new-instance v9, Lcom/sonyericsson/conversations/util/ByteUnit;

    const-string/jumbo v10, "MEGABYTE"

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    const v14, 0x7f0b0212

    invoke-direct/range {v9 .. v14}, Lcom/sonyericsson/conversations/util/ByteUnit;-><init>(Ljava/lang/String;IDI)V

    sput-object v9, Lcom/sonyericsson/conversations/util/ByteUnit;->MEGABYTE:Lcom/sonyericsson/conversations/util/ByteUnit;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sonyericsson/conversations/util/ByteUnit;

    sget-object v1, Lcom/sonyericsson/conversations/util/ByteUnit;->BYTE:Lcom/sonyericsson/conversations/util/ByteUnit;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/conversations/util/ByteUnit;->KILOBYTE:Lcom/sonyericsson/conversations/util/ByteUnit;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sonyericsson/conversations/util/ByteUnit;->MEGABYTE:Lcom/sonyericsson/conversations/util/ByteUnit;

    aput-object v1, v0, v11

    sput-object v0, Lcom/sonyericsson/conversations/util/ByteUnit;->$VALUES:[Lcom/sonyericsson/conversations/util/ByteUnit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IDI)V
    .locals 1
    .param p3, "unitSize"    # D
    .param p5, "unitResId"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-wide p3, p0, Lcom/sonyericsson/conversations/util/ByteUnit;->mSizeInBytes:D

    .line 18
    iput p5, p0, Lcom/sonyericsson/conversations/util/ByteUnit;->mUnitResId:I

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/conversations/util/ByteUnit;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/sonyericsson/conversations/util/ByteUnit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/util/ByteUnit;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/conversations/util/ByteUnit;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/sonyericsson/conversations/util/ByteUnit;->$VALUES:[Lcom/sonyericsson/conversations/util/ByteUnit;

    return-object v0
.end method


# virtual methods
.method public fromBytes(D)D
    .locals 3
    .param p1, "bytes"    # D

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/sonyericsson/conversations/util/ByteUnit;->mSizeInBytes:D

    div-double v0, p1, v0

    return-wide v0
.end method

.method public getUnitResId()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/sonyericsson/conversations/util/ByteUnit;->mUnitResId:I

    return v0
.end method
