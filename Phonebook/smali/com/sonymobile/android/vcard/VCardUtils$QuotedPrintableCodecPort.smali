.class Lcom/sonymobile/android/vcard/VCardUtils$QuotedPrintableCodecPort;
.super Ljava/lang/Object;
.source "VCardUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/android/vcard/VCardUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QuotedPrintableCodecPort"
.end annotation


# static fields
.field private static ESCAPE_CHAR:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x3d

    sput-byte v0, Lcom/sonymobile/android/vcard/VCardUtils$QuotedPrintableCodecPort;->ESCAPE_CHAR:B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final decodeQuotedPrintable([B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/android/vcard/VCardUtils$DecoderException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v5, -0x1

    .line 70
    if-eqz p0, :cond_0

    .line 73
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x0

    .line 74
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_1

    .line 91
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 71
    :cond_0
    return-object v0

    .line 75
    :cond_1
    aget-byte v2, p0, v0

    .line 76
    sget-byte v3, Lcom/sonymobile/android/vcard/VCardUtils$QuotedPrintableCodecPort;->ESCAPE_CHAR:B

    if-eq v2, v3, :cond_2

    .line 88
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 74
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_2
    add-int/lit8 v0, v0, 0x1

    :try_start_0
    aget-byte v2, p0, v0

    int-to-char v2, v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    .line 79
    add-int/lit8 v0, v0, 0x1

    aget-byte v3, p0, v0

    int-to-char v3, v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Character;->digit(CI)I

    move-result v3

    .line 80
    if-ne v2, v5, :cond_4

    .line 81
    :cond_3
    new-instance v0, Lcom/sonymobile/android/vcard/VCardUtils$DecoderException;

    const-string/jumbo v1, "Invalid quoted-printable encoding"

    invoke-direct {v0, v1}, Lcom/sonymobile/android/vcard/VCardUtils$DecoderException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :catch_0
    move-exception v0

    .line 85
    new-instance v0, Lcom/sonymobile/android/vcard/VCardUtils$DecoderException;

    const-string/jumbo v1, "Invalid quoted-printable encoding"

    invoke-direct {v0, v1}, Lcom/sonymobile/android/vcard/VCardUtils$DecoderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_4
    if-eq v3, v5, :cond_3

    .line 83
    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v3

    int-to-char v2, v2

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
