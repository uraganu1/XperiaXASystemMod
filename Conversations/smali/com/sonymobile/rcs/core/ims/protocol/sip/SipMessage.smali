.class public abstract Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;
.super Ljava/lang/Object;
.source "SipMessage.java"


# instance fields
.field protected stackMessage:Ljavax2/sip/message/Message;

.field private stackTransaction:Ljavax2/sip/Transaction;


# direct methods
.method public constructor <init>(Ljavax2/sip/message/Message;)V
    .locals 1
    .param p1, "message"    # Ljavax2/sip/message/Message;

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->stackTransaction:Ljavax2/sip/Transaction;

    .line 72
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->stackMessage:Ljavax2/sip/message/Message;

    .line 73
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 108
    :try_start_0
    sget-object v2, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->HEADER_FACTORY:Ljavax2/sip/header/HeaderFactory;

    invoke-interface {v2, p1, p2}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v1

    .line 109
    .local v1, "header":Ljavax2/sip/header/Header;
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->stackMessage:Ljavax2/sip/message/Message;

    invoke-interface {v2, v1}, Ljavax2/sip/message/Message;->setHeader(Ljavax2/sip/header/Header;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v1    # "header":Ljavax2/sip/header/Header;
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public getBoundaryContentType()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 299
    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->stackMessage:Ljavax2/sip/message/Message;

    const-string/jumbo v3, "Content-Type"

    invoke-interface {v2, v3}, Ljavax2/sip/message/Message;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax2/sip/header/ContentTypeHeader;

    .line 301
    .local v0, "header":Ljavax2/sip/header/ContentTypeHeader;
    if-nez v0, :cond_0

    .line 309
    return-object v4

    :cond_0
    const-string/jumbo v2, "boundary"

    .line 302
    invoke-interface {v0, v2}, Ljavax2/sip/header/ContentTypeHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 303
    .local v1, "value":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 307
    :goto_0
    return-object v1

    .line 305
    :cond_1
    invoke-static {v1}, Lcom/sonymobile/rcs/utils/StringUtils;->removeQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getCSeq()J
    .locals 4

    .prologue
    .line 210
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->stackMessage:Ljavax2/sip/message/Message;

    const-string/jumbo v2, "CSeq"

    invoke-interface {v1, v2}, Ljavax2/sip/message/Message;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax2/sip/header/CSeqHeader;

    .line 211
    .local v0, "header":Ljavax2/sip/header/CSeqHeader;
    invoke-interface {v0}, Ljavax2/sip/header/CSeqHeader;->getSeqNumber()J

    move-result-wide v2

    return-wide v2
.end method

.method public getCallId()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 319
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->stackMessage:Ljavax2/sip/message/Message;

    const-string/jumbo v2, "Call-ID"

    invoke-interface {v1, v2}, Ljavax2/sip/message/Message;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax2/sip/header/CallIdHeader;

    .line 320
    .local v0, "header":Ljavax2/sip/header/CallIdHeader;
    if-nez v0, :cond_0

    .line 323
    return-object v3

    .line 321
    :cond_0
    invoke-interface {v0}, Ljavax2/sip/header/CallIdHeader;->getCallId()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getContactURI()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 220
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->stackMessage:Ljavax2/sip/message/Message;

    const-string/jumbo v2, "Contact"

    invoke-interface {v1, v2}, Ljavax2/sip/message/Message;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax2/sip/header/ContactHeader;

    .line 221
    .local v0, "header":Ljavax2/sip/header/ContactHeader;
    if-nez v0, :cond_0

    .line 224
    return-object v3

    .line 222
    :cond_0
    invoke-interface {v0}, Ljavax2/sip/header/ContactHeader;->getAddress()Ljavax2/sip/address/Address;

    move-result-object v1

    invoke-interface {v1}, Ljavax2/sip/address/Address;->getURI()Ljavax2/sip/address/URI;

    move-result-object v1

    invoke-interface {v1}, Ljavax2/sip/address/URI;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getContent()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 234
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->stackMessage:Ljavax2/sip/message/Message;

    invoke-interface {v1}, Ljavax2/sip/message/Message;->getRawContent()[B

    move-result-object v0

    .line 235
    .local v0, "content":[B
    if-nez v0, :cond_0

    .line 238
    return-object v2

    .line 236
    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public getContentBytes()[B
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->stackMessage:Ljavax2/sip/message/Message;

    invoke-interface {v0}, Ljavax2/sip/message/Message;->getRawContent()[B

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 284
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->stackMessage:Ljavax2/sip/message/Message;

    const-string/jumbo v2, "Content-Type"

    invoke-interface {v1, v2}, Ljavax2/sip/message/Message;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax2/sip/header/ContentTypeHeader;

    .line 286
    .local v0, "header":Ljavax2/sip/header/ContentTypeHeader;
    if-nez v0, :cond_0

    .line 289
    return-object v3

    .line 287
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Ljavax2/sip/header/ContentTypeHeader;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljavax2/sip/header/ContentTypeHeader;->getContentSubType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFeatureTags()Ljava/util/ArrayList;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 361
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v12, "tags":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 365
    .local v13, "temp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->stackMessage:Ljavax2/sip/message/Message;

    const-string/jumbo v16, "Contact"

    invoke-interface/range {v15 .. v16}, Ljavax2/sip/message/Message;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v3

    check-cast v3, Ljavax2/sip/header/ContactHeader;

    .line 366
    .local v3, "contactHeader":Ljavax2/sip/header/ContactHeader;
    if-nez v3, :cond_2

    .line 387
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->stackMessage:Ljavax2/sip/message/Message;

    const-string/jumbo v16, "Accept-Contact"

    invoke-interface/range {v15 .. v16}, Ljavax2/sip/message/Message;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v1

    check-cast v1, Ljavax2/sip/header/ExtensionHeader;

    .line 389
    .local v1, "acceptHeader":Ljavax2/sip/header/ExtensionHeader;
    if-eqz v1, :cond_5

    .line 395
    :goto_0
    if-nez v1, :cond_6

    :cond_1
    const/4 v4, 0x0

    .line 423
    .local v4, "i":I
    :goto_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lt v4, v15, :cond_b

    .line 445
    return-object v12

    .line 368
    .end local v1    # "acceptHeader":Ljavax2/sip/header/ExtensionHeader;
    .end local v4    # "i":I
    :cond_2
    invoke-interface {v3}, Ljavax2/sip/header/ContactHeader;->getParameterNames()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 370
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 371
    .local v9, "pname":Ljava/lang/String;
    invoke-interface {v3, v9}, Ljavax2/sip/header/ContactHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 372
    .local v10, "pvalue":Ljava/lang/String;
    invoke-static {v10}, Lcom/sonymobile/rcs/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_4

    const-string/jumbo v15, ","

    .line 377
    invoke-virtual {v10, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .local v14, "values":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 378
    .local v6, "j":I
    :goto_3
    array-length v15, v14

    if-ge v6, v15, :cond_3

    .line 379
    aget-object v15, v14, v6

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 380
    .local v11, "tag":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "=\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 374
    .end local v6    # "j":I
    .end local v11    # "tag":Ljava/lang/String;
    .end local v14    # "values":[Ljava/lang/String;
    :cond_4
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 391
    .end local v5    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v9    # "pname":Ljava/lang/String;
    .end local v10    # "pvalue":Ljava/lang/String;
    .restart local v1    # "acceptHeader":Ljavax2/sip/header/ExtensionHeader;
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->stackMessage:Ljavax2/sip/message/Message;

    const-string/jumbo v16, "a"

    invoke-interface/range {v15 .. v16}, Ljavax2/sip/message/Message;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v1

    .end local v1    # "acceptHeader":Ljavax2/sip/header/ExtensionHeader;
    check-cast v1, Ljavax2/sip/header/ExtensionHeader;

    .restart local v1    # "acceptHeader":Ljavax2/sip/header/ExtensionHeader;
    goto :goto_0

    .line 397
    :cond_6
    invoke-interface {v1}, Ljavax2/sip/header/ExtensionHeader;->getValue()Ljava/lang/String;

    move-result-object v2

    .local v2, "acceptHeaderValue":Ljava/lang/String;
    const-string/jumbo v15, ";"

    .line 398
    invoke-virtual {v2, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .local v8, "parameters":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 399
    .restart local v4    # "i":I
    :goto_4
    array-length v15, v8

    if-ge v4, v15, :cond_1

    .line 401
    aget-object v15, v8, v4

    const-string/jumbo v16, "="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .local v7, "param":[Ljava/lang/String;
    const/4 v15, 0x0

    .line 402
    aget-object v9, v7, v15

    .restart local v9    # "pname":Ljava/lang/String;
    const/4 v10, 0x0

    .line 404
    .local v10, "pvalue":Ljava/lang/String;
    array-length v15, v7

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v15, v0, :cond_9

    .line 407
    .end local v10    # "pvalue":Ljava/lang/String;
    :goto_5
    if-nez v10, :cond_a

    .line 409
    :cond_7
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .restart local v10    # "pvalue":Ljava/lang/String;
    :cond_9
    const/4 v15, 0x1

    .line 405
    aget-object v10, v7, v15

    .local v10, "pvalue":Ljava/lang/String;
    goto :goto_5

    .line 407
    .end local v10    # "pvalue":Ljava/lang/String;
    :cond_a
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_7

    const-string/jumbo v15, "\""

    const-string/jumbo v16, ""

    .line 412
    move-object/from16 v0, v16

    invoke-virtual {v10, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "pvalue":Ljava/lang/String;
    const-string/jumbo v15, ","

    .line 413
    invoke-virtual {v10, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "values":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 414
    .restart local v6    # "j":I
    :goto_6
    array-length v15, v14

    if-ge v6, v15, :cond_8

    .line 415
    aget-object v15, v14, v6

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 416
    .restart local v11    # "tag":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "=\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "\""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 414
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 424
    .end local v2    # "acceptHeaderValue":Ljava/lang/String;
    .end local v6    # "j":I
    .end local v7    # "param":[Ljava/lang/String;
    .end local v8    # "parameters":[Ljava/lang/String;
    .end local v9    # "pname":Ljava/lang/String;
    .end local v10    # "pvalue":Ljava/lang/String;
    .end local v11    # "tag":Ljava/lang/String;
    .end local v14    # "values":[Ljava/lang/String;
    :cond_b
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .restart local v11    # "tag":Ljava/lang/String;
    const-string/jumbo v15, "+"

    .line 428
    invoke-virtual {v11, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_e

    :cond_c
    :goto_7
    const-string/jumbo v15, "+sip.instance"

    .line 435
    invoke-virtual {v11, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_d

    .line 440
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    .line 423
    :cond_d
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v15, "video"

    .line 428
    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c

    const-string/jumbo v15, "automata"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c

    const-string/jumbo v15, "explicit"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c

    const-string/jumbo v15, "require"

    invoke-virtual {v11, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    goto :goto_7

    .line 441
    :cond_f
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method public getFrom()Ljava/lang/String;
    .locals 3

    .prologue
    .line 150
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->stackMessage:Ljavax2/sip/message/Message;

    const-string/jumbo v2, "From"

    invoke-interface {v1, v2}, Ljavax2/sip/message/Message;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax2/sip/header/FromHeader;

    .line 151
    .local v0, "header":Ljavax2/sip/header/FromHeader;
    invoke-interface {v0}, Ljavax2/sip/header/FromHeader;->getAddress()Ljavax2/sip/address/Address;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFromTag()Ljava/lang/String;
    .locals 3

    .prologue
    .line 160
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->stackMessage:Ljavax2/sip/message/Message;

    const-string/jumbo v2, "From"

    invoke-interface {v1, v2}, Ljavax2/sip/message/Message;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax2/sip/header/FromHeader;

    .line 161
    .local v0, "header":Ljavax2/sip/header/FromHeader;
    invoke-interface {v0}, Ljavax2/sip/header/FromHeader;->getTag()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getFromUri()Ljava/lang/String;
    .locals 3

    .prologue
    .line 170
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->stackMessage:Ljavax2/sip/message/Message;

    const-string/jumbo v2, "From"

    invoke-interface {v1, v2}, Ljavax2/sip/message/Message;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax2/sip/header/FromHeader;

    .line 171
    .local v0, "header":Ljavax2/sip/header/FromHeader;
    invoke-interface {v0}, Ljavax2/sip/header/FromHeader;->getAddress()Ljavax2/sip/address/Address;

    move-result-object v1

    invoke-interface {v1}, Ljavax2/sip/address/Address;->getURI()Ljavax2/sip/address/URI;

    move-result-object v1

    invoke-interface {v1}, Ljavax2/sip/address/URI;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->stackMessage:Ljavax2/sip/message/Message;

    invoke-interface {v0, p1}, Ljavax2/sip/message/Message;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ListIterator",
            "<",
            "Ljavax2/sip/header/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->stackMessage:Ljavax2/sip/message/Message;

    invoke-interface {v0, p1}, Ljavax2/sip/message/Message;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public getSdpContent()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 248
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, "content":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "contentType":Ljava/lang/String;
    if-eqz v2, :cond_1

    const-string/jumbo v4, "multipart"

    .line 258
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "application/sdp"

    .line 262
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 265
    return-object v5

    .line 250
    .end local v2    # "contentType":Ljava/lang/String;
    :cond_0
    return-object v5

    .line 255
    .restart local v2    # "contentType":Ljava/lang/String;
    :cond_1
    return-object v5

    .line 259
    :cond_2
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->getBoundaryContentType()Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "boundary":Ljava/lang/String;
    new-instance v3, Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;

    invoke-direct {v3, v1, v0}, Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v3, "multi":Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;
    const-string/jumbo v4, "application/sdp"

    .line 261
    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;->getPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 263
    .end local v0    # "boundary":Ljava/lang/String;
    .end local v3    # "multi":Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;
    :cond_3
    return-object v1
.end method

.method public getSessionTimerExpire()I
    .locals 2

    .prologue
    const-string/jumbo v1, "Session-Expires"

    .line 454
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/extensions/SessionExpiresHeader;

    .line 455
    .local v0, "sessionExpiresHeader":Lgov2/nist/javax2/sip/header/extensions/SessionExpiresHeader;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    .line 458
    return v1

    .line 456
    :cond_0
    invoke-interface {v0}, Lgov2/nist/javax2/sip/header/extensions/SessionExpiresHeader;->getExpires()I

    move-result v1

    return v1
.end method

.method public getSessionTimerRefresher()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "role":Ljava/lang/String;
    const-string/jumbo v2, "Session-Expires"

    .line 469
    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/header/extensions/SessionExpiresHeader;

    .line 470
    .local v1, "sessionExpiresHeader":Lgov2/nist/javax2/sip/header/extensions/SessionExpiresHeader;
    if-nez v1, :cond_0

    .line 473
    .end local v0    # "role":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    .line 476
    return-object v0

    .line 471
    .restart local v0    # "role":Ljava/lang/String;
    :cond_0
    invoke-interface {v1}, Lgov2/nist/javax2/sip/header/extensions/SessionExpiresHeader;->getRefresher()Ljava/lang/String;

    move-result-object v0

    .local v0, "role":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "role":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "uac"

    .line 474
    return-object v2
.end method

.method public abstract getStackMessage()Ljavax2/sip/message/Message;
.end method

.method public getStackTransaction()Ljavax2/sip/Transaction;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->stackTransaction:Ljavax2/sip/Transaction;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 2

    .prologue
    const-string/jumbo v1, "Subject"

    .line 333
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax2/sip/header/SubjectHeader;

    .line 334
    .local v0, "header":Ljavax2/sip/header/SubjectHeader;
    if-nez v0, :cond_0

    const-string/jumbo v1, ""

    .line 337
    return-object v1

    .line 335
    :cond_0
    invoke-interface {v0}, Ljavax2/sip/header/SubjectHeader;->getSubject()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 180
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->stackMessage:Ljavax2/sip/message/Message;

    const-string/jumbo v2, "To"

    invoke-interface {v1, v2}, Ljavax2/sip/message/Message;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax2/sip/header/ToHeader;

    .line 181
    .local v0, "header":Ljavax2/sip/header/ToHeader;
    invoke-interface {v0}, Ljavax2/sip/header/ToHeader;->getAddress()Ljavax2/sip/address/Address;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getToTag()Ljava/lang/String;
    .locals 3

    .prologue
    .line 190
    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->stackMessage:Ljavax2/sip/message/Message;

    const-string/jumbo v2, "To"

    invoke-interface {v1, v2}, Ljavax2/sip/message/Message;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax2/sip/header/ToHeader;

    .line 191
    .local v0, "header":Ljavax2/sip/header/ToHeader;
    invoke-interface {v0}, Ljavax2/sip/header/ToHeader;->getTag()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getViaHeaders()Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Ljavax2/sip/header/ViaHeader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->stackMessage:Ljavax2/sip/message/Message;

    const-string/jumbo v1, "Via"

    invoke-interface {v0, v1}, Ljavax2/sip/message/Message;->getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public setStackTransaction(Ljavax2/sip/Transaction;)V
    .locals 0
    .param p1, "transaction"    # Ljavax2/sip/Transaction;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;->stackTransaction:Ljavax2/sip/Transaction;

    .line 98
    return-void
.end method
