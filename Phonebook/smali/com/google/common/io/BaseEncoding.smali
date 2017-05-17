.class public abstract Lcom/google/common/io/BaseEncoding;
.super Ljava/lang/Object;
.source "BaseEncoding.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/io/BaseEncoding$DecodingException;,
        Lcom/google/common/io/BaseEncoding$Alphabet;,
        Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;,
        Lcom/google/common/io/BaseEncoding$SeparatedBaseEncoding;
    }
.end annotation


# static fields
.field private static final BASE16:Lcom/google/common/io/BaseEncoding;

.field private static final BASE32:Lcom/google/common/io/BaseEncoding;

.field private static final BASE32_HEX:Lcom/google/common/io/BaseEncoding;

.field private static final BASE64:Lcom/google/common/io/BaseEncoding;

.field private static final BASE64_URL:Lcom/google/common/io/BaseEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x3d

    .line 385
    new-instance v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    .line 386
    const-string/jumbo v1, "base64()"

    const-string/jumbo v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    .line 385
    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/common/io/BaseEncoding;->BASE64:Lcom/google/common/io/BaseEncoding;

    .line 405
    new-instance v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    .line 406
    const-string/jumbo v1, "base64Url()"

    const-string/jumbo v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    .line 405
    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    sput-object v0, Lcom/google/common/io/BaseEncoding;->BASE64_URL:Lcom/google/common/io/BaseEncoding;

    .line 427
    new-instance v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    const-string/jumbo v1, "base32()"

    const-string/jumbo v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    .line 426
    sput-object v0, Lcom/google/common/io/BaseEncoding;->BASE32:Lcom/google/common/io/BaseEncoding;

    .line 447
    new-instance v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    const-string/jumbo v1, "base32Hex()"

    const-string/jumbo v2, "0123456789ABCDEFGHIJKLMNOPQRSTUV"

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    .line 446
    sput-object v0, Lcom/google/common/io/BaseEncoding;->BASE32_HEX:Lcom/google/common/io/BaseEncoding;

    .line 466
    new-instance v0, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;

    const-string/jumbo v1, "base16()"

    const-string/jumbo v2, "0123456789ABCDEF"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/io/BaseEncoding$StandardBaseEncoding;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Character;)V

    .line 465
    sput-object v0, Lcom/google/common/io/BaseEncoding;->BASE16:Lcom/google/common/io/BaseEncoding;

    .line 133
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static base16()Lcom/google/common/io/BaseEncoding;
    .locals 1

    .prologue
    .line 483
    sget-object v0, Lcom/google/common/io/BaseEncoding;->BASE16:Lcom/google/common/io/BaseEncoding;

    return-object v0
.end method

.method public static base32()Lcom/google/common/io/BaseEncoding;
    .locals 1

    .prologue
    .line 443
    sget-object v0, Lcom/google/common/io/BaseEncoding;->BASE32:Lcom/google/common/io/BaseEncoding;

    return-object v0
.end method

.method public static base32Hex()Lcom/google/common/io/BaseEncoding;
    .locals 1

    .prologue
    .line 462
    sget-object v0, Lcom/google/common/io/BaseEncoding;->BASE32_HEX:Lcom/google/common/io/BaseEncoding;

    return-object v0
.end method

.method public static base64()Lcom/google/common/io/BaseEncoding;
    .locals 1

    .prologue
    .line 402
    sget-object v0, Lcom/google/common/io/BaseEncoding;->BASE64:Lcom/google/common/io/BaseEncoding;

    return-object v0
.end method

.method public static base64Url()Lcom/google/common/io/BaseEncoding;
    .locals 1

    .prologue
    .line 423
    sget-object v0, Lcom/google/common/io/BaseEncoding;->BASE64_URL:Lcom/google/common/io/BaseEncoding;

    return-object v0
.end method

.method private static extract([BI)[B
    .locals 3
    .param p0, "result"    # [B
    .param p1, "length"    # I

    .prologue
    const/4 v2, 0x0

    .line 228
    array-length v1, p0

    if-ne p1, v1, :cond_0

    .line 229
    return-object p0

    .line 231
    :cond_0
    new-array v0, p1, [B

    .line 232
    .local v0, "trunc":[B
    invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 233
    return-object v0
.end method

.method static ignoringInput(Lcom/google/common/io/GwtWorkarounds$CharInput;Lcom/google/common/base/CharMatcher;)Lcom/google/common/io/GwtWorkarounds$CharInput;
    .locals 1
    .param p0, "delegate"    # Lcom/google/common/io/GwtWorkarounds$CharInput;
    .param p1, "toIgnore"    # Lcom/google/common/base/CharMatcher;

    .prologue
    .line 797
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    new-instance v0, Lcom/google/common/io/BaseEncoding$5;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/BaseEncoding$5;-><init>(Lcom/google/common/io/GwtWorkarounds$CharInput;Lcom/google/common/base/CharMatcher;)V

    return-object v0
.end method

.method static separatingOutput(Lcom/google/common/io/GwtWorkarounds$CharOutput;Ljava/lang/String;I)Lcom/google/common/io/GwtWorkarounds$CharOutput;
    .locals 1
    .param p0, "delegate"    # Lcom/google/common/io/GwtWorkarounds$CharOutput;
    .param p1, "separator"    # Ljava/lang/String;
    .param p2, "afterEveryChars"    # I

    .prologue
    const/4 v0, 0x0

    .line 818
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    if-lez p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 821
    new-instance v0, Lcom/google/common/io/BaseEncoding$6;

    invoke-direct {v0, p2, p1, p0}, Lcom/google/common/io/BaseEncoding$6;-><init>(ILjava/lang/String;Lcom/google/common/io/GwtWorkarounds$CharOutput;)V

    return-object v0
.end method


# virtual methods
.method public final decode(Ljava/lang/CharSequence;)[B
    .locals 2
    .param p1, "chars"    # Ljava/lang/CharSequence;

    .prologue
    .line 246
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/common/io/BaseEncoding;->decodeChecked(Ljava/lang/CharSequence;)[B
    :try_end_0
    .catch Lcom/google/common/io/BaseEncoding$DecodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 247
    :catch_0
    move-exception v0

    .line 248
    .local v0, "badInput":Lcom/google/common/io/BaseEncoding$DecodingException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method final decodeChecked(Ljava/lang/CharSequence;)[B
    .locals 8
    .param p1, "chars"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/common/io/BaseEncoding$DecodingException;
        }
    .end annotation

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/google/common/io/BaseEncoding;->padding()Lcom/google/common/base/CharMatcher;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/google/common/base/CharMatcher;->trimTrailingFrom(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 261
    invoke-static {p1}, Lcom/google/common/io/GwtWorkarounds;->asCharInput(Ljava/lang/CharSequence;)Lcom/google/common/io/GwtWorkarounds$CharInput;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/google/common/io/BaseEncoding;->decodingStream(Lcom/google/common/io/GwtWorkarounds$CharInput;)Lcom/google/common/io/GwtWorkarounds$ByteInput;

    move-result-object v1

    .line 262
    .local v1, "decodedInput":Lcom/google/common/io/GwtWorkarounds$ByteInput;
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/google/common/io/BaseEncoding;->maxDecodedSize(I)I

    move-result v7

    new-array v6, v7, [B

    .line 263
    .local v6, "tmp":[B
    const/4 v4, 0x0

    .line 265
    .local v4, "index":I
    :try_start_0
    invoke-interface {v1}, Lcom/google/common/io/GwtWorkarounds$ByteInput;->read()I

    move-result v2

    .local v2, "i":I
    move v5, v4

    .end local v4    # "index":I
    .local v5, "index":I
    :goto_0
    const/4 v7, -0x1

    if-eq v2, v7, :cond_0

    .line 266
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    int-to-byte v7, v2

    aput-byte v7, v6, v5

    .line 265
    invoke-interface {v1}, Lcom/google/common/io/GwtWorkarounds$ByteInput;->read()I
    :try_end_0
    .catch Lcom/google/common/io/BaseEncoding$DecodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v5, v4

    .end local v4    # "index":I
    .restart local v5    # "index":I
    goto :goto_0

    .line 270
    .end local v2    # "i":I
    .end local v5    # "index":I
    .restart local v4    # "index":I
    :catch_0
    move-exception v3

    .line 271
    .local v3, "impossible":Ljava/io/IOException;
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 268
    .end local v3    # "impossible":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 269
    .local v0, "badInput":Lcom/google/common/io/BaseEncoding$DecodingException;
    throw v0

    .line 273
    .end local v0    # "badInput":Lcom/google/common/io/BaseEncoding$DecodingException;
    .end local v4    # "index":I
    .restart local v2    # "i":I
    .restart local v5    # "index":I
    :cond_0
    invoke-static {v6, v5}, Lcom/google/common/io/BaseEncoding;->extract([BI)[B

    move-result-object v7

    return-object v7
.end method

.method public final decodingSource(Lcom/google/common/io/CharSource;)Lcom/google/common/io/ByteSource;
    .locals 1
    .param p1, "encodedSource"    # Lcom/google/common/io/CharSource;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "ByteSource,CharSource"
    .end annotation

    .prologue
    .line 312
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    new-instance v0, Lcom/google/common/io/BaseEncoding$4;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/BaseEncoding$4;-><init>(Lcom/google/common/io/BaseEncoding;Lcom/google/common/io/CharSource;)V

    return-object v0
.end method

.method abstract decodingStream(Lcom/google/common/io/GwtWorkarounds$CharInput;)Lcom/google/common/io/GwtWorkarounds$ByteInput;
.end method

.method public final decodingStream(Lcom/google/common/io/InputSupplier;)Lcom/google/common/io/InputSupplier;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Reader,InputStream"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/InputSupplier",
            "<+",
            "Ljava/io/Reader;",
            ">;)",
            "Lcom/google/common/io/InputSupplier",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 297
    .local p1, "readerSupplier":Lcom/google/common/io/InputSupplier;, "Lcom/google/common/io/InputSupplier<+Ljava/io/Reader;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    new-instance v0, Lcom/google/common/io/BaseEncoding$3;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/BaseEncoding$3;-><init>(Lcom/google/common/io/BaseEncoding;Lcom/google/common/io/InputSupplier;)V

    return-object v0
.end method

.method public final decodingStream(Ljava/io/Reader;)Ljava/io/InputStream;
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Reader,InputStream"
    .end annotation

    .prologue
    .line 283
    invoke-static {p1}, Lcom/google/common/io/GwtWorkarounds;->asCharInput(Ljava/io/Reader;)Lcom/google/common/io/GwtWorkarounds$CharInput;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/io/BaseEncoding;->decodingStream(Lcom/google/common/io/GwtWorkarounds$CharInput;)Lcom/google/common/io/GwtWorkarounds$ByteInput;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/GwtWorkarounds;->asInputStream(Lcom/google/common/io/GwtWorkarounds$ByteInput;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public encode([B)Ljava/lang/String;
    .locals 3
    .param p1, "bytes"    # [B

    .prologue
    .line 158
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/google/common/io/BaseEncoding;->encode([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final encode([BII)Ljava/lang/String;
    .locals 6
    .param p1, "bytes"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .prologue
    .line 166
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    add-int v4, p2, p3

    array-length v5, p1

    invoke-static {p2, v4, v5}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    .line 168
    invoke-virtual {p0, p3}, Lcom/google/common/io/BaseEncoding;->maxEncodedSize(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/common/io/GwtWorkarounds;->stringBuilderOutput(I)Lcom/google/common/io/GwtWorkarounds$CharOutput;

    move-result-object v3

    .line 169
    .local v3, "result":Lcom/google/common/io/GwtWorkarounds$CharOutput;
    invoke-virtual {p0, v3}, Lcom/google/common/io/BaseEncoding;->encodingStream(Lcom/google/common/io/GwtWorkarounds$CharOutput;)Lcom/google/common/io/GwtWorkarounds$ByteOutput;

    move-result-object v0

    .line 171
    .local v0, "byteOutput":Lcom/google/common/io/GwtWorkarounds$ByteOutput;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_0

    .line 172
    add-int v4, p2, v1

    :try_start_0
    aget-byte v4, p1, v4

    invoke-interface {v0, v4}, Lcom/google/common/io/GwtWorkarounds$ByteOutput;->write(B)V

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    :cond_0
    invoke-interface {v0}, Lcom/google/common/io/GwtWorkarounds$ByteOutput;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 175
    :catch_0
    move-exception v2

    .line 176
    .local v2, "impossible":Ljava/io/IOException;
    new-instance v4, Ljava/lang/AssertionError;

    const-string/jumbo v5, "impossible"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method public final encodingSink(Lcom/google/common/io/CharSink;)Lcom/google/common/io/ByteSink;
    .locals 1
    .param p1, "encodedSink"    # Lcom/google/common/io/CharSink;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "ByteSink,CharSink"
    .end annotation

    .prologue
    .line 216
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    new-instance v0, Lcom/google/common/io/BaseEncoding$2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/BaseEncoding$2;-><init>(Lcom/google/common/io/BaseEncoding;Lcom/google/common/io/CharSink;)V

    return-object v0
.end method

.method abstract encodingStream(Lcom/google/common/io/GwtWorkarounds$CharOutput;)Lcom/google/common/io/GwtWorkarounds$ByteOutput;
.end method

.method public final encodingStream(Lcom/google/common/io/OutputSupplier;)Lcom/google/common/io/OutputSupplier;
    .locals 1
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Writer,OutputStream"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/OutputSupplier",
            "<+",
            "Ljava/io/Writer;",
            ">;)",
            "Lcom/google/common/io/OutputSupplier",
            "<",
            "Ljava/io/OutputStream;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 202
    .local p1, "writerSupplier":Lcom/google/common/io/OutputSupplier;, "Lcom/google/common/io/OutputSupplier<+Ljava/io/Writer;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    new-instance v0, Lcom/google/common/io/BaseEncoding$1;

    invoke-direct {v0, p0, p1}, Lcom/google/common/io/BaseEncoding$1;-><init>(Lcom/google/common/io/BaseEncoding;Lcom/google/common/io/OutputSupplier;)V

    return-object v0
.end method

.method public final encodingStream(Ljava/io/Writer;)Ljava/io/OutputStream;
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation build Lcom/google/common/annotations/GwtIncompatible;
        value = "Writer,OutputStream"
    .end annotation

    .prologue
    .line 188
    invoke-static {p1}, Lcom/google/common/io/GwtWorkarounds;->asCharOutput(Ljava/io/Writer;)Lcom/google/common/io/GwtWorkarounds$CharOutput;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/io/BaseEncoding;->encodingStream(Lcom/google/common/io/GwtWorkarounds$CharOutput;)Lcom/google/common/io/GwtWorkarounds$ByteOutput;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/GwtWorkarounds;->asOutputStream(Lcom/google/common/io/GwtWorkarounds$ByteOutput;)Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract lowerCase()Lcom/google/common/io/BaseEncoding;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation
.end method

.method abstract maxDecodedSize(I)I
.end method

.method abstract maxEncodedSize(I)I
.end method

.method public abstract omitPadding()Lcom/google/common/io/BaseEncoding;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation
.end method

.method abstract padding()Lcom/google/common/base/CharMatcher;
.end method

.method public abstract upperCase()Lcom/google/common/io/BaseEncoding;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation
.end method

.method public abstract withPadChar(C)Lcom/google/common/io/BaseEncoding;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation
.end method

.method public abstract withSeparator(Ljava/lang/String;I)Lcom/google/common/io/BaseEncoding;
    .annotation runtime Ljavax/annotation/CheckReturnValue;
    .end annotation
.end method
