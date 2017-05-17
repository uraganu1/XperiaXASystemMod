.class Lcom/sonymobile/android/vcard/VCardParserImpl_V30;
.super Lcom/sonymobile/android/vcard/VCardParserImpl_V21;
.source "VCardParserImpl_V30.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "vCard"


# instance fields
.field private mEmittedAgentWarning:Z

.field private mPreviousLine:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;-><init>()V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V30;->mEmittedAgentWarning:Z

    .line 50
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;-><init>(I)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V30;->mEmittedAgentWarning:Z

    .line 54
    return-void
.end method

.method private splitAndPutParam(Lcom/sonymobile/android/vcard/VCardProperty;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 206
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v2

    move v1, v2

    move-object v0, v3

    .line 207
    :goto_0
    if-lt v4, v5, :cond_0

    .line 247
    if-nez v1, :cond_9

    .line 252
    :goto_1
    if-nez v0, :cond_a

    .line 260
    :goto_2
    return-void

    .line 208
    :cond_0
    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    int-to-char v6, v6

    const/16 v7, 0x22

    .line 209
    if-eq v6, v7, :cond_2

    const/16 v7, 0x2c

    .line 230
    if-eq v6, v7, :cond_6

    .line 241
    :cond_1
    if-eqz v0, :cond_8

    .line 244
    :goto_3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v9, v1

    move-object v1, v0

    move v0, v9

    .line 207
    :goto_4
    add-int/lit8 v4, v4, 0x1

    move v9, v0

    move-object v0, v1

    move v1, v9

    goto :goto_0

    .line 210
    :cond_2
    if-nez v1, :cond_3

    .line 216
    if-nez v0, :cond_4

    .line 228
    :goto_5
    const/4 v1, 0x1

    move v9, v1

    move-object v1, v0

    move v0, v9

    goto :goto_4

    .line 212
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V30;->encodeParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/sonymobile/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    move-object v1, v3

    .line 214
    goto :goto_4

    .line 217
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-gtz v1, :cond_5

    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/sonymobile/android/vcard/VCardParserImpl_V30;->encodeParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/sonymobile/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    const-string/jumbo v1, "vCard"

    const-string/jumbo v6, "Unexpected Dquote inside property."

    .line 220
    invoke-static {v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 230
    :cond_6
    if-nez v1, :cond_1

    .line 231
    if-eqz v0, :cond_7

    .line 235
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V30;->encodeParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/sonymobile/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    move-object v1, v3

    .line 236
    goto :goto_4

    :cond_7
    const-string/jumbo v6, "vCard"

    .line 232
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Comma is used before actual string comes. ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v1

    move-object v1, v0

    move v0, v9

    goto :goto_4

    .line 242
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :cond_9
    const-string/jumbo v1, "vCard"

    const-string/jumbo v2, "Dangling Dquote."

    .line 250
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 253
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_b

    .line 257
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V30;->encodeParamValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/sonymobile/android/vcard/VCardProperty;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    const-string/jumbo v0, "vCard"

    const-string/jumbo v1, "Unintended behavior. We must not see empty StringBuilder at the end of parameter value parsing."

    .line 254
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public static unescapeCharacter(C)Ljava/lang/String;
    .locals 1

    .prologue
    const/16 v0, 0x6e

    .line 348
    if-ne p0, v0, :cond_1

    :cond_0
    const-string/jumbo v0, "\n"

    .line 349
    return-object v0

    :cond_1
    const/16 v0, 0x4e

    .line 348
    if-eq p0, v0, :cond_0

    const/16 v0, 0x72

    .line 350
    if-ne p0, v0, :cond_3

    :cond_2
    const-string/jumbo v0, "\r"

    .line 351
    return-object v0

    :cond_3
    const/16 v0, 0x52

    .line 350
    if-eq p0, v0, :cond_2

    .line 353
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v0, 0x0

    .line 324
    :goto_0
    if-lt v0, v2, :cond_0

    .line 339
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 325
    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-char v3, v3

    const/16 v4, 0x5c

    .line 326
    if-eq v3, v4, :cond_2

    .line 336
    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 324
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 326
    :cond_2
    add-int/lit8 v4, v2, -0x1

    if-ge v0, v4, :cond_1

    .line 327
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-char v3, v3

    const/16 v4, 0x6e

    .line 328
    if-ne v3, v4, :cond_4

    :cond_3
    const-string/jumbo v3, "\n"

    .line 329
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const/16 v4, 0x4e

    .line 328
    if-eq v3, v4, :cond_3

    const/16 v4, 0x72

    .line 330
    if-ne v3, v4, :cond_6

    :cond_5
    const-string/jumbo v3, "\r"

    .line 331
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const/16 v4, 0x52

    .line 330
    if-eq v3, v4, :cond_5

    .line 333
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method protected encodeParamValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v0, "ISO-8859-1"

    const-string/jumbo v1, "UTF-8"

    .line 266
    invoke-static {p1, v0, v1}, Lcom/sonymobile/android/vcard/VCardUtils;->convertStringCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getBase64(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonymobile/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 306
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
    .line 359
    sget-object v0, Lcom/sonymobile/android/vcard/VCardParser_V30;->sKnownPropertyNameSet:Ljava/util/Set;

    return-object v0
.end method

.method protected getLine()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 68
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V30;->mReader:Lcom/sonymobile/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-virtual {v0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    .line 71
    return-object v0
.end method

.method protected getNonEmptyLine()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonymobile/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    move-object v0, v1

    .line 85
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V30;->mReader:Lcom/sonymobile/android/vcard/VCardParserImpl_V21$CustomBufferedReader;

    invoke-virtual {v2}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21$CustomBufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 110
    :cond_1
    if-nez v0, :cond_7

    .line 112
    iget-object v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 115
    :goto_1
    iput-object v2, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    .line 116
    if-eqz v1, :cond_9

    .line 119
    return-object v1

    .line 88
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_4

    .line 93
    :cond_3
    if-eqz v0, :cond_5

    .line 96
    :goto_2
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    if-nez v3, :cond_6

    :goto_3
    const/4 v3, 0x1

    .line 100
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 90
    :cond_4
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_3

    .line 102
    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 105
    iput-object v2, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    goto :goto_0

    .line 94
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    .line 97
    :cond_6
    iget-object v3, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iput-object v1, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    goto :goto_3

    .line 111
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 113
    :cond_8
    iget-object v1, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V30;->mPreviousLine:Ljava/lang/String;

    goto :goto_1

    .line 117
    :cond_9
    new-instance v0, Lcom/sonymobile/android/vcard/exception/VCardException;

    const-string/jumbo v1, "Reached end of buffer."

    invoke-direct {v0, v1}, Lcom/sonymobile/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getVersion()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 58
    return v0
.end method

.method protected getVersionString()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "3.0"

    .line 63
    return-object v0
.end method

.method protected handleAgent(Lcom/sonymobile/android/vcard/VCardProperty;)V
    .locals 2

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V30;->mEmittedAgentWarning:Z

    if-eqz v0, :cond_0

    .line 294
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "vCard"

    const-string/jumbo v1, "AGENT in vCard 3.0 is not supported yet. Ignore it"

    .line 291
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/android/vcard/VCardParserImpl_V30;->mEmittedAgentWarning:Z

    goto :goto_0
.end method

.method protected handleAnyParam(Lcom/sonymobile/android/vcard/VCardProperty;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0, p1, p2, p3}, Lcom/sonymobile/android/vcard/VCardParserImpl_V30;->splitAndPutParam(Lcom/sonymobile/android/vcard/VCardProperty;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method protected handleParamWithoutName(Lcom/sonymobile/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/android/vcard/VCardParserImpl_V30;->handleType(Lcom/sonymobile/android/vcard/VCardProperty;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method protected handleParams(Lcom/sonymobile/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    .line 141
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->handleParams(Lcom/sonymobile/android/vcard/VCardProperty;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonymobile/android/vcard/exception/VCardException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    const-string/jumbo v0, "="

    .line 144
    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 145
    array-length v1, v0

    if-eq v1, v2, :cond_0

    .line 149
    new-instance v0, Lcom/sonymobile/android/vcard/exception/VCardException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown params value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sonymobile/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v1, 0x0

    .line 146
    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {p0, p1, v1, v0}, Lcom/sonymobile/android/vcard/VCardParserImpl_V30;->handleAnyParam(Lcom/sonymobile/android/vcard/VCardProperty;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleType(Lcom/sonymobile/android/vcard/VCardProperty;Ljava/lang/String;)V
    .locals 1

    .prologue
    const-string/jumbo v0, "TYPE"

    .line 180
    invoke-direct {p0, p1, v0, p2}, Lcom/sonymobile/android/vcard/VCardParserImpl_V30;->splitAndPutParam(Lcom/sonymobile/android/vcard/VCardProperty;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method protected maybeUnescapeCharacter(C)Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    invoke-static {p1}, Lcom/sonymobile/android/vcard/VCardParserImpl_V30;->unescapeCharacter(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    invoke-static {p1}, Lcom/sonymobile/android/vcard/VCardParserImpl_V30;->unescapeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected readBeginVCard(Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonymobile/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/sonymobile/android/vcard/VCardParserImpl_V21;->readBeginVCard(Z)Z

    move-result v0

    return v0
.end method
