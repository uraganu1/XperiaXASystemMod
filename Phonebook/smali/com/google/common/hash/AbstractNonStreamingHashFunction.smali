.class abstract Lcom/google/common/hash/AbstractNonStreamingHashFunction;
.super Ljava/lang/Object;
.source "AbstractNonStreamingHashFunction.java"

# interfaces
.implements Lcom/google/common/hash/HashFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;,
        Lcom/google/common/hash/AbstractNonStreamingHashFunction$ExposedByteArrayOutputStream;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hashBytes([B)Lcom/google/common/hash/HashCode;
    .locals 2
    .param p1, "input"    # [B

    .prologue
    .line 83
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/google/common/hash/AbstractNonStreamingHashFunction;->hashBytes([BII)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public hashInt(I)Lcom/google/common/hash/HashCode;
    .locals 1
    .param p1, "input"    # I

    .prologue
    .line 75
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/common/hash/AbstractNonStreamingHashFunction;->newHasher(I)Lcom/google/common/hash/Hasher;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/hash/Hasher;->putInt(I)Lcom/google/common/hash/Hasher;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public hashLong(J)Lcom/google/common/hash/HashCode;
    .locals 1
    .param p1, "input"    # J

    .prologue
    .line 79
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/common/hash/AbstractNonStreamingHashFunction;->newHasher(I)Lcom/google/common/hash/Hasher;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/Hasher;->putLong(J)Lcom/google/common/hash/Hasher;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public hashObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/HashCode;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/common/hash/Funnel",
            "<-TT;>;)",
            "Lcom/google/common/hash/HashCode;"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    .local p2, "funnel":Lcom/google/common/hash/Funnel;, "Lcom/google/common/hash/Funnel<-TT;>;"
    invoke-virtual {p0}, Lcom/google/common/hash/AbstractNonStreamingHashFunction;->newHasher()Lcom/google/common/hash/Hasher;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/hash/Hasher;->putObject(Ljava/lang/Object;Lcom/google/common/hash/Funnel;)Lcom/google/common/hash/Hasher;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public hashString(Ljava/lang/CharSequence;)Lcom/google/common/hash/HashCode;
    .locals 1
    .param p1, "input"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 54
    invoke-virtual {p0, p1}, Lcom/google/common/hash/AbstractNonStreamingHashFunction;->hashUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/HashCode;

    move-result-object v0

    return-object v0
.end method

.method public hashString(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)Lcom/google/common/hash/HashCode;
    .locals 3
    .param p1, "input"    # Ljava/lang/CharSequence;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .prologue
    .line 68
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/common/hash/AbstractNonStreamingHashFunction;->hashBytes([B)Lcom/google/common/hash/HashCode;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public hashUnencodedChars(Ljava/lang/CharSequence;)Lcom/google/common/hash/HashCode;
    .locals 4
    .param p1, "input"    # Ljava/lang/CharSequence;

    .prologue
    .line 58
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 59
    .local v2, "len":I
    mul-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v3}, Lcom/google/common/hash/AbstractNonStreamingHashFunction;->newHasher(I)Lcom/google/common/hash/Hasher;

    move-result-object v0

    .line 60
    .local v0, "hasher":Lcom/google/common/hash/Hasher;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 61
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-interface {v0, v3}, Lcom/google/common/hash/Hasher;->putChar(C)Lcom/google/common/hash/Hasher;

    .line 60
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    :cond_0
    invoke-interface {v0}, Lcom/google/common/hash/Hasher;->hash()Lcom/google/common/hash/HashCode;

    move-result-object v3

    return-object v3
.end method

.method public newHasher()Lcom/google/common/hash/Hasher;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;

    const/16 v1, 0x20

    invoke-direct {v0, p0, v1}, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;-><init>(Lcom/google/common/hash/AbstractNonStreamingHashFunction;I)V

    return-object v0
.end method

.method public newHasher(I)Lcom/google/common/hash/Hasher;
    .locals 1
    .param p1, "expectedInputSize"    # I

    .prologue
    const/4 v0, 0x0

    .line 41
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 42
    new-instance v0, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;

    invoke-direct {v0, p0, p1}, Lcom/google/common/hash/AbstractNonStreamingHashFunction$BufferingHasher;-><init>(Lcom/google/common/hash/AbstractNonStreamingHashFunction;I)V

    return-object v0
.end method
