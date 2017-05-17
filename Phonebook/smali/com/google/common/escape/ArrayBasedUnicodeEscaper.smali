.class public abstract Lcom/google/common/escape/ArrayBasedUnicodeEscaper;
.super Lcom/google/common/escape/UnicodeEscaper;
.source "ArrayBasedUnicodeEscaper.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# instance fields
.field private final replacements:[[C

.field private final replacementsLength:I

.field private final safeMax:I

.field private final safeMaxChar:C

.field private final safeMin:I

.field private final safeMinChar:C


# direct methods
.method protected constructor <init>(Lcom/google/common/escape/ArrayBasedEscaperMap;IILjava/lang/String;)V
    .locals 1
    .param p1, "escaperMap"    # Lcom/google/common/escape/ArrayBasedEscaperMap;
    .param p2, "safeMin"    # I
    .param p3, "safeMax"    # I
    .param p4, "unsafeReplacement"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/google/common/escape/UnicodeEscaper;-><init>()V

    .line 107
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-virtual {p1}, Lcom/google/common/escape/ArrayBasedEscaperMap;->getReplacementArray()[[C

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->replacements:[[C

    .line 109
    iget-object v0, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->replacements:[[C

    array-length v0, v0

    iput v0, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->replacementsLength:I

    .line 110
    if-ge p3, p2, :cond_0

    .line 113
    const/4 p3, -0x1

    .line 114
    const p2, 0x7fffffff

    .line 116
    :cond_0
    iput p2, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMin:I

    .line 117
    iput p3, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMax:I

    .line 132
    const v0, 0xd800

    if-lt p2, v0, :cond_1

    .line 135
    const v0, 0xffff

    iput-char v0, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMinChar:C

    .line 136
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMaxChar:C

    .line 105
    :goto_0
    return-void

    .line 140
    :cond_1
    int-to-char v0, p2

    iput-char v0, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMinChar:C

    .line 142
    const v0, 0xd7ff

    .line 141
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMaxChar:C

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/util/Map;IILjava/lang/String;)V
    .locals 1
    .param p2, "safeMin"    # I
    .param p3, "safeMax"    # I
    .param p4, "unsafeReplacement"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/String;",
            ">;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "replacementMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/common/escape/ArrayBasedEscaperMap;->create(Ljava/util/Map;)Lcom/google/common/escape/ArrayBasedEscaperMap;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;-><init>(Lcom/google/common/escape/ArrayBasedEscaperMap;IILjava/lang/String;)V

    .line 81
    return-void
.end method


# virtual methods
.method public final escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 153
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 155
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 156
    .local v0, "c":C
    iget v2, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->replacementsLength:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->replacements:[[C

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 158
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 157
    :cond_1
    iget-char v2, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMaxChar:C

    if-gt v0, v2, :cond_0

    iget-char v2, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMinChar:C

    if-lt v0, v2, :cond_0

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    .end local v0    # "c":C
    :cond_2
    return-object p1
.end method

.method protected final escape(I)[C
    .locals 3
    .param p1, "cp"    # I

    .prologue
    const/4 v2, 0x0

    .line 185
    iget v1, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->replacementsLength:I

    if-ge p1, v1, :cond_0

    .line 186
    iget-object v1, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->replacements:[[C

    aget-object v0, v1, p1

    .line 187
    .local v0, "chars":[C
    if-eqz v0, :cond_0

    .line 188
    return-object v0

    .line 191
    .end local v0    # "chars":[C
    :cond_0
    iget v1, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMin:I

    if-lt p1, v1, :cond_1

    iget v1, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMax:I

    if-gt p1, v1, :cond_1

    .line 192
    return-object v2

    .line 194
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->escapeUnsafe(I)[C

    move-result-object v1

    return-object v1
.end method

.method protected abstract escapeUnsafe(I)[C
.end method

.method protected final nextEscapeIndex(Ljava/lang/CharSequence;II)I
    .locals 2
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "index"    # I
    .param p3, "end"    # I

    .prologue
    .line 167
    :goto_0
    if-ge p2, p3, :cond_0

    .line 168
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 169
    .local v0, "c":C
    iget v1, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->replacementsLength:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->replacements:[[C

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 175
    .end local v0    # "c":C
    :cond_0
    return p2

    .line 170
    .restart local v0    # "c":C
    :cond_1
    iget-char v1, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMaxChar:C

    if-gt v0, v1, :cond_0

    iget-char v1, p0, Lcom/google/common/escape/ArrayBasedUnicodeEscaper;->safeMinChar:C

    if-lt v0, v1, :cond_0

    .line 173
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method
