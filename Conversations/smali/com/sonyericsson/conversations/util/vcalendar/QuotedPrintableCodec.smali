.class public Lcom/sonyericsson/conversations/util/vcalendar/QuotedPrintableCodec;
.super Ljava/lang/Object;
.source "QuotedPrintableCodec.java"


# static fields
.field private static final PRINTABLE_CHARS:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 34
    new-instance v1, Ljava/util/BitSet;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/sonyericsson/conversations/util/vcalendar/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    .line 44
    const/16 v0, 0x21

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x3c

    if-gt v0, v1, :cond_0

    .line 45
    sget-object v1, Lcom/sonyericsson/conversations/util/vcalendar/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    :cond_0
    const/16 v0, 0x3e

    :goto_1
    const/16 v1, 0x7e

    if-gt v0, v1, :cond_1

    .line 48
    sget-object v1, Lcom/sonyericsson/conversations/util/vcalendar/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 47
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 50
    :cond_1
    sget-object v1, Lcom/sonyericsson/conversations/util/vcalendar/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 51
    sget-object v1, Lcom/sonyericsson/conversations/util/vcalendar/QuotedPrintableCodec;->PRINTABLE_CHARS:Ljava/util/BitSet;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "pString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 118
    if-nez p0, :cond_0

    .line 119
    return-object v0

    .line 121
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/sonyericsson/conversations/util/vcalendar/QuotedPrintableCodec;->getBytesUsAscii(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/conversations/util/vcalendar/QuotedPrintableCodec;->decodeQuotedPrintable([B)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method public static decodeQuotedPrintable([B)[B
    .locals 6
    .param p0, "bytes"    # [B

    .prologue
    const/4 v5, 0x0

    .line 145
    if-nez p0, :cond_0

    .line 146
    return-object v5

    .line 148
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 149
    .local v1, "buffer":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 150
    .local v2, "i":I
    :goto_0
    array-length v5, p0

    if-ge v2, v5, :cond_2

    .line 151
    aget-byte v0, p0, v2

    .line 152
    .local v0, "b":I
    const/16 v5, 0x3d

    if-ne v0, v5, :cond_1

    .line 154
    add-int/lit8 v2, v2, 0x1

    aget-byte v5, p0, v2

    invoke-static {v5}, Lcom/sonyericsson/conversations/util/vcalendar/QuotedPrintableCodec;->digit16(B)I

    move-result v4

    .line 155
    .local v4, "u":I
    add-int/lit8 v2, v2, 0x1

    aget-byte v5, p0, v2

    invoke-static {v5}, Lcom/sonyericsson/conversations/util/vcalendar/QuotedPrintableCodec;->digit16(B)I

    move-result v3

    .line 156
    .local v3, "l":I
    shl-int/lit8 v5, v4, 0x4

    add-int/2addr v5, v3

    int-to-char v5, v5

    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 161
    .end local v3    # "l":I
    .end local v4    # "u":I
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .line 163
    .end local v0    # "b":I
    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    return-object v5
.end method

.method private static digit16(B)I
    .locals 2
    .param p0, "b"    # B

    .prologue
    .line 167
    int-to-char v0, p0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    return v0
.end method

.method public static getBytesUsAscii(Ljava/lang/String;)[B
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 125
    if-nez p0, :cond_0

    .line 126
    return-object v0

    .line 128
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    return-object v0
.end method
