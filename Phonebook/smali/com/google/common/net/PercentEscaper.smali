.class public final Lcom/google/common/net/PercentEscaper;
.super Lcom/google/common/escape/UnicodeEscaper;
.source "PercentEscaper.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation


# static fields
.field private static final PLUS_SIGN:[C

.field private static final UPPER_HEX_DIGITS:[C


# instance fields
.field private final plusForSpace:Z

.field private final safeOctets:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/16 v1, 0x2b

    const/4 v2, 0x0

    aput-char v1, v0, v2

    sput-object v0, Lcom/google/common/net/PercentEscaper;->PLUS_SIGN:[C

    .line 66
    const-string/jumbo v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 65
    sput-object v0, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "safeChars"    # Ljava/lang/String;
    .param p2, "plusForSpace"    # Z

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/google/common/escape/UnicodeEscaper;-><init>()V

    .line 98
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string/jumbo v0, ".*[0-9A-Za-z].*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 102
    const-string/jumbo v1, "Alphanumeric characters are always \'safe\' and should not be explicitly specified"

    .line 101
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 110
    if-eqz p2, :cond_1

    const-string/jumbo v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 112
    const-string/jumbo v1, "plusForSpace cannot be specified when space is a \'safe\' character"

    .line 111
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_1
    iput-boolean p2, p0, Lcom/google/common/net/PercentEscaper;->plusForSpace:Z

    .line 115
    invoke-static {p1}, Lcom/google/common/net/PercentEscaper;->createSafeOctets(Ljava/lang/String;)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/net/PercentEscaper;->safeOctets:[Z

    .line 95
    return-void
.end method

.method private static createSafeOctets(Ljava/lang/String;)[Z
    .locals 7
    .param p0, "safeChars"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 124
    const/4 v1, -0x1

    .line 125
    .local v1, "maxChar":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 126
    .local v3, "safeCharArray":[C
    array-length v6, v3

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_0

    aget-char v0, v3, v5

    .line 127
    .local v0, "c":C
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 126
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 129
    .end local v0    # "c":C
    :cond_0
    add-int/lit8 v5, v1, 0x1

    new-array v2, v5, [Z

    .line 130
    .local v2, "octets":[Z
    array-length v5, v3

    :goto_1
    if-ge v4, v5, :cond_1

    aget-char v0, v3, v4

    .line 131
    .restart local v0    # "c":C
    const/4 v6, 0x1

    aput-boolean v6, v2, v0

    .line 130
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 133
    .end local v0    # "c":C
    :cond_1
    return-object v2
.end method


# virtual methods
.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 160
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 162
    .local v2, "slen":I
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 163
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 164
    .local v0, "c":C
    iget-object v3, p0, Lcom/google/common/net/PercentEscaper;->safeOctets:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lcom/google/common/net/PercentEscaper;->safeOctets:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/google/common/net/PercentEscaper;->escapeSlow(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 168
    .end local v0    # "c":C
    :cond_1
    return-object p1
.end method

.method protected escape(I)[C
    .locals 7
    .param p1, "cp"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    const/16 v2, 0x25

    .line 178
    iget-object v1, p0, Lcom/google/common/net/PercentEscaper;->safeOctets:[Z

    array-length v1, v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/net/PercentEscaper;->safeOctets:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_0

    .line 179
    const/4 v1, 0x0

    return-object v1

    .line 180
    :cond_0
    const/16 v1, 0x20

    if-ne p1, v1, :cond_1

    iget-boolean v1, p0, Lcom/google/common/net/PercentEscaper;->plusForSpace:Z

    if-eqz v1, :cond_1

    .line 181
    sget-object v1, Lcom/google/common/net/PercentEscaper;->PLUS_SIGN:[C

    return-object v1

    .line 182
    :cond_1
    const/16 v1, 0x7f

    if-gt p1, v1, :cond_2

    .line 185
    const/4 v1, 0x3

    new-array v0, v1, [C

    .line 186
    .local v0, "dest":[C
    aput-char v2, v0, v4

    .line 187
    sget-object v1, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, v0, v6

    .line 188
    sget-object v1, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    ushr-int/lit8 v2, p1, 0x4

    aget-char v1, v1, v2

    aput-char v1, v0, v5

    .line 189
    return-object v0

    .line 190
    .end local v0    # "dest":[C
    :cond_2
    const/16 v1, 0x7ff

    if-gt p1, v1, :cond_3

    .line 193
    const/4 v1, 0x6

    new-array v0, v1, [C

    .line 194
    .restart local v0    # "dest":[C
    aput-char v2, v0, v4

    .line 195
    const/4 v1, 0x3

    aput-char v2, v0, v1

    .line 196
    sget-object v1, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    const/4 v2, 0x5

    aput-char v1, v0, v2

    .line 197
    ushr-int/lit8 p1, p1, 0x4

    .line 198
    sget-object v1, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0x3

    or-int/lit8 v2, v2, 0x8

    aget-char v1, v1, v2

    const/4 v2, 0x4

    aput-char v1, v0, v2

    .line 199
    ushr-int/lit8 p1, p1, 0x2

    .line 200
    sget-object v1, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, v0, v6

    .line 201
    ushr-int/lit8 p1, p1, 0x4

    .line 202
    sget-object v1, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    or-int/lit8 v2, p1, 0xc

    aget-char v1, v1, v2

    aput-char v1, v0, v5

    .line 203
    return-object v0

    .line 204
    .end local v0    # "dest":[C
    :cond_3
    const v1, 0xffff

    if-gt p1, v1, :cond_4

    .line 207
    const/16 v1, 0x9

    new-array v0, v1, [C

    .line 208
    .restart local v0    # "dest":[C
    aput-char v2, v0, v4

    .line 209
    const/16 v1, 0x45

    aput-char v1, v0, v5

    .line 210
    const/4 v1, 0x3

    aput-char v2, v0, v1

    .line 211
    const/4 v1, 0x6

    aput-char v2, v0, v1

    .line 212
    sget-object v1, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, v0, v3

    .line 213
    ushr-int/lit8 p1, p1, 0x4

    .line 214
    sget-object v1, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0x3

    or-int/lit8 v2, v2, 0x8

    aget-char v1, v1, v2

    const/4 v2, 0x7

    aput-char v1, v0, v2

    .line 215
    ushr-int/lit8 p1, p1, 0x2

    .line 216
    sget-object v1, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    const/4 v2, 0x5

    aput-char v1, v0, v2

    .line 217
    ushr-int/lit8 p1, p1, 0x4

    .line 218
    sget-object v1, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0x3

    or-int/lit8 v2, v2, 0x8

    aget-char v1, v1, v2

    const/4 v2, 0x4

    aput-char v1, v0, v2

    .line 219
    ushr-int/lit8 p1, p1, 0x2

    .line 220
    sget-object v1, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    aget-char v1, v1, p1

    aput-char v1, v0, v6

    .line 221
    return-object v0

    .line 222
    .end local v0    # "dest":[C
    :cond_4
    const v1, 0x10ffff

    if-gt p1, v1, :cond_5

    .line 223
    const/16 v1, 0xc

    new-array v0, v1, [C

    .line 226
    .restart local v0    # "dest":[C
    aput-char v2, v0, v4

    .line 227
    const/16 v1, 0x46

    aput-char v1, v0, v5

    .line 228
    const/4 v1, 0x3

    aput-char v2, v0, v1

    .line 229
    const/4 v1, 0x6

    aput-char v2, v0, v1

    .line 230
    const/16 v1, 0x9

    aput-char v2, v0, v1

    .line 231
    sget-object v1, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    const/16 v2, 0xb

    aput-char v1, v0, v2

    .line 232
    ushr-int/lit8 p1, p1, 0x4

    .line 233
    sget-object v1, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0x3

    or-int/lit8 v2, v2, 0x8

    aget-char v1, v1, v2

    const/16 v2, 0xa

    aput-char v1, v0, v2

    .line 234
    ushr-int/lit8 p1, p1, 0x2

    .line 235
    sget-object v1, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    aput-char v1, v0, v3

    .line 236
    ushr-int/lit8 p1, p1, 0x4

    .line 237
    sget-object v1, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0x3

    or-int/lit8 v2, v2, 0x8

    aget-char v1, v1, v2

    const/4 v2, 0x7

    aput-char v1, v0, v2

    .line 238
    ushr-int/lit8 p1, p1, 0x2

    .line 239
    sget-object v1, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    const/4 v2, 0x5

    aput-char v1, v0, v2

    .line 240
    ushr-int/lit8 p1, p1, 0x4

    .line 241
    sget-object v1, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0x3

    or-int/lit8 v2, v2, 0x8

    aget-char v1, v1, v2

    const/4 v2, 0x4

    aput-char v1, v0, v2

    .line 242
    ushr-int/lit8 p1, p1, 0x2

    .line 243
    sget-object v1, Lcom/google/common/net/PercentEscaper;->UPPER_HEX_DIGITS:[C

    and-int/lit8 v2, p1, 0x7

    aget-char v1, v1, v2

    aput-char v1, v0, v6

    .line 244
    return-object v0

    .line 247
    .end local v0    # "dest":[C
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid unicode character value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 247
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected nextEscapeIndex(Ljava/lang/CharSequence;II)I
    .locals 2
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "index"    # I
    .param p3, "end"    # I

    .prologue
    .line 143
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :goto_0
    if-ge p2, p3, :cond_0

    .line 145
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 146
    .local v0, "c":C
    iget-object v1, p0, Lcom/google/common/net/PercentEscaper;->safeOctets:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/common/net/PercentEscaper;->safeOctets:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 144
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "c":C
    :cond_0
    return p2
.end method
