.class public Lgov2/nist/core/StringTokenizer;
.super Ljava/lang/Object;
.source "StringTokenizer.java"


# instance fields
.field protected buffer:Ljava/lang/String;

.field protected bufferLen:I

.field protected ptr:I

.field protected savedPtr:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lgov2/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lgov2/nist/core/StringTokenizer;->bufferLen:I

    const/4 v0, 0x0

    .line 55
    iput v0, p0, Lgov2/nist/core/StringTokenizer;->ptr:I

    .line 56
    return-void
.end method

.method public static isAlpha(C)Z
    .locals 3
    .param p0, "ch"    # C

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x7f

    .line 81
    if-le p0, v2, :cond_1

    .line 84
    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_0
    move v1, v0

    :goto_0
    return v1

    :cond_1
    const/16 v2, 0x61

    .line 82
    if-ge p0, v2, :cond_4

    :cond_2
    const/16 v2, 0x41

    if-ge p0, v2, :cond_5

    :goto_1
    move v0, v1

    :cond_3
    :goto_2
    return v0

    :cond_4
    const/16 v2, 0x7a

    if-gt p0, v2, :cond_2

    goto :goto_2

    :cond_5
    const/16 v2, 0x5a

    if-le p0, v2, :cond_3

    goto :goto_1

    .line 84
    :cond_6
    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public static isAlphaDigit(C)Z
    .locals 3
    .param p0, "ch"    # C

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x7f

    .line 97
    if-le p0, v2, :cond_1

    .line 100
    invoke-static {p0}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_0
    move v1, v0

    :goto_0
    return v1

    :cond_1
    const/16 v2, 0x61

    .line 98
    if-ge p0, v2, :cond_5

    :cond_2
    const/16 v2, 0x41

    if-ge p0, v2, :cond_6

    :cond_3
    const/16 v2, 0x39

    if-le p0, v2, :cond_7

    :goto_1
    move v0, v1

    :cond_4
    :goto_2
    return v0

    :cond_5
    const/16 v2, 0x7a

    if-gt p0, v2, :cond_2

    goto :goto_2

    :cond_6
    const/16 v2, 0x5a

    if-gt p0, v2, :cond_3

    goto :goto_2

    :cond_7
    const/16 v2, 0x30

    if-ge p0, v2, :cond_4

    goto :goto_1

    .line 100
    :cond_8
    invoke-static {p0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0
.end method

.method public static isDigit(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    const/16 v0, 0x7f

    .line 89
    if-le p0, v0, :cond_0

    .line 92
    invoke-static {p0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    return v0

    :cond_0
    const/16 v0, 0x39

    .line 90
    if-le p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    const/16 v0, 0x30

    if-lt p0, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isHexDigit(C)Z
    .locals 2
    .param p0, "ch"    # C

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x41

    .line 77
    if-ge p0, v1, :cond_2

    :cond_0
    const/16 v1, 0x61

    if-ge p0, v1, :cond_4

    :cond_1
    invoke-static {p0}, Lgov2/nist/core/StringTokenizer;->isDigit(C)Z

    move-result v1

    if-nez v1, :cond_3

    :goto_0
    return v0

    :cond_2
    const/16 v1, 0x46

    if-gt p0, v1, :cond_0

    :cond_3
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/16 v1, 0x66

    if-gt p0, v1, :cond_1

    goto :goto_1
.end method


# virtual methods
.method public consume()V
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lgov2/nist/core/StringTokenizer;->savedPtr:I

    iput v0, p0, Lgov2/nist/core/StringTokenizer;->ptr:I

    .line 144
    return-void
.end method

.method public consume(I)V
    .locals 1
    .param p1, "k"    # I

    .prologue
    .line 147
    iget v0, p0, Lgov2/nist/core/StringTokenizer;->ptr:I

    add-int/2addr v0, p1

    iput v0, p0, Lgov2/nist/core/StringTokenizer;->ptr:I

    .line 148
    return-void
.end method

.method public getLine()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0xa

    .line 105
    iget v0, p0, Lgov2/nist/core/StringTokenizer;->ptr:I

    .line 106
    .local v0, "startIdx":I
    :goto_0
    iget v1, p0, Lgov2/nist/core/StringTokenizer;->ptr:I

    iget v2, p0, Lgov2/nist/core/StringTokenizer;->bufferLen:I

    if-lt v1, v2, :cond_2

    .line 109
    :cond_0
    iget v1, p0, Lgov2/nist/core/StringTokenizer;->ptr:I

    iget v2, p0, Lgov2/nist/core/StringTokenizer;->bufferLen:I

    if-lt v1, v2, :cond_3

    .line 112
    :cond_1
    :goto_1
    iget-object v1, p0, Lgov2/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v2, p0, Lgov2/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 106
    :cond_2
    iget-object v1, p0, Lgov2/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v2, p0, Lgov2/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_0

    .line 107
    iget v1, p0, Lgov2/nist/core/StringTokenizer;->ptr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgov2/nist/core/StringTokenizer;->ptr:I

    goto :goto_0

    .line 109
    :cond_3
    iget-object v1, p0, Lgov2/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v2, p0, Lgov2/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_1

    .line 110
    iget v1, p0, Lgov2/nist/core/StringTokenizer;->ptr:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lgov2/nist/core/StringTokenizer;->ptr:I

    goto :goto_1
.end method

.method public getNextChar()C
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 136
    iget v0, p0, Lgov2/nist/core/StringTokenizer;->ptr:I

    iget v1, p0, Lgov2/nist/core/StringTokenizer;->bufferLen:I

    if-ge v0, v1, :cond_0

    .line 139
    iget-object v0, p0, Lgov2/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v1, p0, Lgov2/nist/core/StringTokenizer;->ptr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgov2/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 137
    :cond_0
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgov2/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " getNextChar: End of buffer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lgov2/nist/core/StringTokenizer;->ptr:I

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public getNextToken(C)Ljava/lang/String;
    .locals 5
    .param p1, "delim"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 166
    iget v1, p0, Lgov2/nist/core/StringTokenizer;->ptr:I

    .line 168
    .local v1, "startIdx":I
    :goto_0
    invoke-virtual {p0, v4}, Lgov2/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v2

    int-to-char v0, v2

    .line 169
    .local v0, "la":C
    if-eq v0, p1, :cond_1

    .line 171
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 172
    invoke-virtual {p0, v2}, Lgov2/nist/core/StringTokenizer;->consume(I)V

    goto :goto_0

    .line 171
    :cond_0
    new-instance v2, Ljava/text/ParseException;

    const-string/jumbo v3, "EOL reached"

    invoke-direct {v2, v3, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 174
    :cond_1
    iget-object v2, p0, Lgov2/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v3, p0, Lgov2/nist/core/StringTokenizer;->ptr:I

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public hasMoreChars()Z
    .locals 2

    .prologue
    .line 73
    iget v0, p0, Lgov2/nist/core/StringTokenizer;->ptr:I

    iget v1, p0, Lgov2/nist/core/StringTokenizer;->bufferLen:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public lookAhead()C
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, v0}, Lgov2/nist/core/StringTokenizer;->lookAhead(I)C

    move-result v0

    return v0
.end method

.method public lookAhead(I)C
    .locals 3
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 129
    :try_start_0
    iget-object v1, p0, Lgov2/nist/core/StringTokenizer;->buffer:Ljava/lang/String;

    iget v2, p0, Lgov2/nist/core/StringTokenizer;->ptr:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const/4 v1, 0x0

    return v1
.end method
