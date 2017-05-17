.class Lcom/android/vcard/VCardParserImpl_V30;
.super Lcom/android/vcard/VCardParserImpl_V21;
.source "VCardParserImpl_V30.java"


# instance fields
.field private mEmittedAgentWarning:Z

.field private mPreviousLine:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/vcard/VCardParserImpl_V21;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vcard/VCardParserImpl_V30;->mEmittedAgentWarning:Z

    .line 44
    return-void
.end method

.method private splitAndPutParam(Lcom/android/vcard/VCardProperty;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "property"    # Lcom/android/vcard/VCardProperty;
    .param p2, "paramName"    # Ljava/lang/String;
    .param p3, "paramValue"    # Ljava/lang/String;

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 215
    .local v3, "insideDquote":Z
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    .line 216
    .local v4, "length":I
    const/4 v2, 0x0

    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_8

    .line 217
    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 218
    .local v1, "ch":C
    const/16 v5, 0x22

    if-ne v1, v5, :cond_3

    .line 219
    if-eqz v3, :cond_0

    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/vcard/VCardParserImpl_V30;->encodeParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, p2, v5}, Lcom/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const/4 v0, 0x0

    .line 223
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 216
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    :cond_0
    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 229
    const-string/jumbo v5, "vCard"

    const-string/jumbo v6, "Unexpected Dquote inside property."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_1
    :goto_2
    const/4 v3, 0x1

    goto :goto_1

    .line 234
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/vcard/VCardParserImpl_V30;->encodeParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, p2, v5}, Lcom/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 239
    :cond_3
    const/16 v5, 0x2c

    if-ne v1, v5, :cond_4

    if-eqz v3, :cond_6

    .line 250
    :cond_4
    if-nez v0, :cond_5

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 240
    :cond_6
    if-nez v0, :cond_7

    .line 241
    const-string/jumbo v5, "vCard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Comma is used before actual string comes. ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 242
    const-string/jumbo v7, ")"

    .line 241
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 244
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/vcard/VCardParserImpl_V30;->encodeParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, p2, v5}, Lcom/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const/4 v0, 0x0

    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    goto :goto_1

    .line 256
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "ch":C
    :cond_8
    if-eqz v3, :cond_9

    .line 259
    const-string/jumbo v5, "vCard"

    const-string/jumbo v6, "Dangling Dquote."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_9
    if-eqz v0, :cond_a

    .line 262
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-nez v5, :cond_b

    .line 263
    const-string/jumbo v5, "vCard"

    const-string/jumbo v6, "Unintended behavior. We must not see empty StringBuilder at the end of parameter value parsing."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_a
    :goto_3
    return-void

    .line 266
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/vcard/VCardParserImpl_V30;->encodeParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, p2, v5}, Lcom/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static unescapeCharacter(C)Ljava/lang/String;
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 355
    const/16 v0, 0x6e

    if-eq p0, v0, :cond_0

    const/16 v0, 0x4e

    if-ne p0, v0, :cond_1

    .line 356
    :cond_0
    const-string/jumbo v0, "\n"

    return-object v0

    .line 358
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 333
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 334
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 335
    .local v1, "ch":C
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_2

    add-int/lit8 v5, v3, -0x1

    if-ge v2, v5, :cond_2

    .line 336
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 337
    .local v4, "next_ch":C
    const/16 v5, 0x6e

    if-eq v4, v5, :cond_0

    const/16 v5, 0x4e

    if-ne v4, v5, :cond_1

    .line 338
    :cond_0
    const-string/jumbo v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .end local v4    # "next_ch":C
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 340
    .restart local v4    # "next_ch":C
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 343
    .end local v4    # "next_ch":C
    :cond_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 346
    .end local v1    # "ch":C
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method protected encodeParamValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "paramValue"    # Ljava/lang/String;

    .prologue
    .line 276
    const-string/jumbo v0, "ISO-8859-1"

    const-string/jumbo v1, "UTF-8"

    .line 275
    invoke-static {p1, v0, v1}, Lcom/android/vcard/VCardUtils;->convertStringCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "firstString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 315
    return-object p1
.end method

.method protected getKnownPropertyNameSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 364
    sget-object v0, Lcom/android/vcard/VCardParser_V30;->sKnownPropertyNameSet:Ljava/util/Set;

    return-object v0
.end method

.method protected getLine()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 77
    iget-object v1, p0, Lcom/android/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    .line 79
    .local v0, "ret":Ljava/lang/String;
    iput-object v2, p0, Lcom/android/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    .line 80
    return-object v0

    .line 82
    .end local v0    # "ret":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/android/vcard/VCardParserImpl_V30;->mReader:Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-virtual {v1}, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getNonEmptyLine()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 93
    const/4 v0, 0x0

    .line 94
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/vcard/VCardParserImpl_V30;->mReader:Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-virtual {v3}, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 97
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 99
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x9

    if-ne v3, v4, :cond_4

    .line 102
    :cond_1
    if-nez v0, :cond_2

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    :cond_2
    iget-object v3, p0, Lcom/android/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 106
    iget-object v3, p0, Lcom/android/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iput-object v5, p0, Lcom/android/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    .line 109
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 111
    :cond_4
    if-nez v0, :cond_5

    iget-object v3, p0, Lcom/android/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 118
    :cond_5
    const/4 v2, 0x0

    .line 119
    .local v2, "ret":Ljava/lang/String;
    if-eqz v0, :cond_8

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 124
    .end local v2    # "ret":Ljava/lang/String;
    :cond_6
    :goto_1
    iput-object v1, p0, Lcom/android/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    .line 125
    if-nez v2, :cond_9

    .line 126
    new-instance v3, Lcom/android/vcard/exception/VCardException;

    const-string/jumbo v4, "Reached end of buffer."

    invoke-direct {v3, v4}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 114
    :cond_7
    iput-object v1, p0, Lcom/android/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    goto :goto_0

    .line 121
    .restart local v2    # "ret":Ljava/lang/String;
    :cond_8
    iget-object v3, p0, Lcom/android/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 122
    iget-object v2, p0, Lcom/android/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    .local v2, "ret":Ljava/lang/String;
    goto :goto_1

    .line 128
    .end local v2    # "ret":Ljava/lang/String;
    :cond_9
    return-object v2
.end method

.method protected getVersion()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method protected getVersionString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "3.0"

    return-object v0
.end method

.method protected handleAgent(Lcom/android/vcard/VCardProperty;)V
    .locals 2
    .param p1, "property"    # Lcom/android/vcard/VCardProperty;

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/android/vcard/VCardParserImpl_V30;->mEmittedAgentWarning:Z

    if-nez v0, :cond_0

    .line 300
    const-string/jumbo v0, "vCard"

    const-string/jumbo v1, "AGENT in vCard 3.0 is not supported yet. Ignore it"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vcard/VCardParserImpl_V30;->mEmittedAgentWarning:Z

    .line 280
    :cond_0
    return-void
.end method

.method protected handleAnyParam(Lcom/android/vcard/VCardProperty;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "propertyData"    # Lcom/android/vcard/VCardProperty;
    .param p2, "paramName"    # Ljava/lang/String;
    .param p3, "paramValue"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-direct {p0, p1, p2, p3}, Lcom/android/vcard/VCardParserImpl_V30;->splitAndPutParam(Lcom/android/vcard/VCardProperty;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method protected handleParamWithoutName(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 0
    .param p1, "property"    # Lcom/android/vcard/VCardProperty;
    .param p2, "paramValue"    # Ljava/lang/String;

    .prologue
    .line 172
    invoke-virtual {p0, p1, p2}, Lcom/android/vcard/VCardParserImpl_V30;->handleType(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method protected handleParams(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 5
    .param p1, "propertyData"    # Lcom/android/vcard/VCardProperty;
    .param p2, "params"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 150
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/vcard/VCardParserImpl_V21;->handleParams(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Lcom/android/vcard/exception/VCardException;
    const-string/jumbo v2, "="

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "strArray":[Ljava/lang/String;
    array-length v2, v1

    if-ne v2, v3, :cond_0

    .line 155
    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/vcard/VCardParserImpl_V30;->handleAnyParam(Lcom/android/vcard/VCardProperty;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_0
    new-instance v2, Lcom/android/vcard/exception/VCardException;

    .line 159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown params value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 158
    invoke-direct {v2, v3}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected handleType(Lcom/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Lcom/android/vcard/VCardProperty;
    .param p2, "paramValue"    # Ljava/lang/String;

    .prologue
    .line 189
    const-string/jumbo v0, "TYPE"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/vcard/VCardParserImpl_V30;->splitAndPutParam(Lcom/android/vcard/VCardProperty;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void
.end method

.method protected maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 327
    invoke-static {p1}, Lcom/android/vcard/VCardParserImpl_V30;->unescapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected peekLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    return-object v0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/android/vcard/VCardParserImpl_V30;->mReader:Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-virtual {v0}, Lcom/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->peekLine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected readBeginVCard(Z)Z
    .locals 1
    .param p1, "allowGarbage"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/android/vcard/VCardParserImpl_V21;->readBeginVCard(Z)Z

    move-result v0

    return v0
.end method
