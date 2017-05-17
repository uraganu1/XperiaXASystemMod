.class public Lcom/sonyericsson/conversations/util/FileSize;
.super Ljava/lang/Object;
.source "FileSize.java"


# static fields
.field private static DEFAULT_DECIMAL_FORMAT:Ljava/lang/String;

.field private static MEGABYTE_DECIMAL_FORMAT:Ljava/lang/String;

.field private static SHORT_DECIMAL_FORMAT:Ljava/lang/String;


# instance fields
.field private final mSize:D

.field private final mUnit:Lcom/sonyericsson/conversations/util/ByteUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-string/jumbo v0, "#.##"

    sput-object v0, Lcom/sonyericsson/conversations/util/FileSize;->DEFAULT_DECIMAL_FORMAT:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, "#"

    sput-object v0, Lcom/sonyericsson/conversations/util/FileSize;->SHORT_DECIMAL_FORMAT:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, "#.#"

    sput-object v0, Lcom/sonyericsson/conversations/util/FileSize;->MEGABYTE_DECIMAL_FORMAT:Ljava/lang/String;

    .line 10
    return-void
.end method

.method private constructor <init>(DLcom/sonyericsson/conversations/util/ByteUnit;)V
    .locals 1
    .param p1, "size"    # D
    .param p3, "unit"    # Lcom/sonyericsson/conversations/util/ByteUnit;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide p1, p0, Lcom/sonyericsson/conversations/util/FileSize;->mSize:D

    .line 21
    iput-object p3, p0, Lcom/sonyericsson/conversations/util/FileSize;->mUnit:Lcom/sonyericsson/conversations/util/ByteUnit;

    .line 19
    return-void
.end method

.method private getFormattedSize(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "decimalFormat"    # Ljava/lang/String;

    .prologue
    .line 47
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 48
    .local v0, "df":Ljava/text/DecimalFormat;
    iget-wide v2, p0, Lcom/sonyericsson/conversations/util/FileSize;->mSize:D

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static newInstance(J)Lcom/sonyericsson/conversations/util/FileSize;
    .locals 10
    .param p0, "bytes"    # J

    .prologue
    .line 52
    invoke-static {}, Lcom/sonyericsson/conversations/util/ByteUnit;->values()[Lcom/sonyericsson/conversations/util/ByteUnit;

    move-result-object v5

    array-length v5, v5

    add-int/lit8 v4, v5, -0x1

    .line 53
    .local v4, "start":I
    move v1, v4

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 54
    invoke-static {}, Lcom/sonyericsson/conversations/util/ByteUnit;->values()[Lcom/sonyericsson/conversations/util/ByteUnit;

    move-result-object v5

    aget-object v0, v5, v1

    .line 55
    .local v0, "byteUnit":Lcom/sonyericsson/conversations/util/ByteUnit;
    long-to-double v6, p0

    invoke-virtual {v0, v6, v7}, Lcom/sonyericsson/conversations/util/ByteUnit;->fromBytes(D)D

    move-result-wide v2

    .line 56
    .local v2, "size":D
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v2, v6

    if-ltz v5, :cond_0

    .line 57
    new-instance v5, Lcom/sonyericsson/conversations/util/FileSize;

    invoke-direct {v5, v2, v3, v0}, Lcom/sonyericsson/conversations/util/FileSize;-><init>(DLcom/sonyericsson/conversations/util/ByteUnit;)V

    return-object v5

    .line 53
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 60
    .end local v0    # "byteUnit":Lcom/sonyericsson/conversations/util/ByteUnit;
    .end local v2    # "size":D
    :cond_1
    new-instance v5, Lcom/sonyericsson/conversations/util/FileSize;

    long-to-double v6, p0

    sget-object v8, Lcom/sonyericsson/conversations/util/ByteUnit;->BYTE:Lcom/sonyericsson/conversations/util/ByteUnit;

    invoke-direct {v5, v6, v7, v8}, Lcom/sonyericsson/conversations/util/FileSize;-><init>(DLcom/sonyericsson/conversations/util/ByteUnit;)V

    return-object v5
.end method


# virtual methods
.method public getFormattedSize()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lcom/sonyericsson/conversations/util/ByteUnit;->KILOBYTE:Lcom/sonyericsson/conversations/util/ByteUnit;

    iget-object v1, p0, Lcom/sonyericsson/conversations/util/FileSize;->mUnit:Lcom/sonyericsson/conversations/util/ByteUnit;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/util/ByteUnit;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    sget-object v0, Lcom/sonyericsson/conversations/util/FileSize;->SHORT_DECIMAL_FORMAT:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/util/FileSize;->getFormattedSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 35
    :cond_0
    sget-object v0, Lcom/sonyericsson/conversations/util/ByteUnit;->MEGABYTE:Lcom/sonyericsson/conversations/util/ByteUnit;

    iget-object v1, p0, Lcom/sonyericsson/conversations/util/FileSize;->mUnit:Lcom/sonyericsson/conversations/util/ByteUnit;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/util/ByteUnit;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    sget-object v0, Lcom/sonyericsson/conversations/util/FileSize;->MEGABYTE_DECIMAL_FORMAT:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/util/FileSize;->getFormattedSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 38
    :cond_1
    sget-object v0, Lcom/sonyericsson/conversations/util/FileSize;->DEFAULT_DECIMAL_FORMAT:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/util/FileSize;->getFormattedSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntegerFormattedSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/sonyericsson/conversations/util/FileSize;->SHORT_DECIMAL_FORMAT:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/util/FileSize;->getFormattedSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnit()Lcom/sonyericsson/conversations/util/ByteUnit;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sonyericsson/conversations/util/FileSize;->mUnit:Lcom/sonyericsson/conversations/util/ByteUnit;

    return-object v0
.end method
