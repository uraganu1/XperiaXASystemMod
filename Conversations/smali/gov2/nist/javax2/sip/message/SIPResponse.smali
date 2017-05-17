.class public final Lgov2/nist/javax2/sip/message/SIPResponse;
.super Lgov2/nist/javax2/sip/message/SIPMessage;
.source "SIPResponse.java"

# interfaces
.implements Ljavax2/sip/message/Response;
.implements Ljavax2/sip/message/Message;


# instance fields
.field protected statusLine:Lgov2/nist/javax2/sip/header/StatusLine;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 388
    invoke-direct {p0}, Lgov2/nist/javax2/sip/message/SIPMessage;-><init>()V

    .line 389
    return-void
.end method

.method public static getReasonPhrase(I)Ljava/lang/String;
    .locals 1
    .param p0, "rc"    # I

    .prologue
    const/4 v0, 0x0

    .line 74
    .local v0, "retval":Ljava/lang/String;
    sparse-switch p0, :sswitch_data_0

    const-string/jumbo v0, "Unknown Status"

    .line 293
    .local v0, "retval":Ljava/lang/String;
    :goto_0
    return-object v0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_0
    const-string/jumbo v0, "Trying"

    .line 77
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v0, "Ringing"

    .line 81
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v0, "Call is being forwarded"

    .line 85
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v0, "Queued"

    .line 89
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v0, "Session progress"

    .line 93
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v0, "OK"

    .line 97
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v0, "Accepted"

    .line 101
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_7
    const-string/jumbo v0, "Multiple choices"

    .line 105
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_8
    const-string/jumbo v0, "Moved permanently"

    .line 109
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v0, "Moved Temporarily"

    .line 113
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v0, "Use proxy"

    .line 117
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_b
    const-string/jumbo v0, "Alternative service"

    .line 121
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v0, "Bad request"

    .line 125
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v0, "Unauthorized"

    .line 129
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v0, "Payment required"

    .line 133
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v0, "Forbidden"

    .line 137
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_10
    const-string/jumbo v0, "Not found"

    .line 141
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_11
    const-string/jumbo v0, "Method not allowed"

    .line 145
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_12
    const-string/jumbo v0, "Not acceptable"

    .line 149
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_13
    const-string/jumbo v0, "Proxy Authentication required"

    .line 153
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_14
    const-string/jumbo v0, "Request timeout"

    .line 157
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_15
    const-string/jumbo v0, "Gone"

    .line 161
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_16
    const-string/jumbo v0, "Temporarily Unavailable"

    .line 165
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_17
    const-string/jumbo v0, "Request entity too large"

    .line 169
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_18
    const-string/jumbo v0, "Request-URI too large"

    .line 173
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_19
    const-string/jumbo v0, "Unsupported media type"

    .line 177
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_1a
    const-string/jumbo v0, "Unsupported URI Scheme"

    .line 181
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_1b
    const-string/jumbo v0, "Bad extension"

    .line 185
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_1c
    const-string/jumbo v0, "Etension Required"

    .line 189
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_1d
    const-string/jumbo v0, "Interval too brief"

    .line 193
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_1e
    const-string/jumbo v0, "Call leg/Transaction does not exist"

    .line 197
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_1f
    const-string/jumbo v0, "Loop detected"

    .line 201
    .local v0, "retval":Ljava/lang/String;
    goto :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_20
    const-string/jumbo v0, "Too many hops"

    .line 205
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_21
    const-string/jumbo v0, "Address incomplete"

    .line 209
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_22
    const-string/jumbo v0, "Ambiguous"

    .line 213
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_23
    const-string/jumbo v0, "Busy here"

    .line 217
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_24
    const-string/jumbo v0, "Request Terminated"

    .line 221
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_25
    const-string/jumbo v0, "Not Acceptable here"

    .line 226
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_26
    const-string/jumbo v0, "Bad Event"

    .line 230
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_27
    const-string/jumbo v0, "Request Pending"

    .line 234
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_28
    const-string/jumbo v0, "Server Internal Error"

    .line 238
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_29
    const-string/jumbo v0, "Undecipherable"

    .line 242
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_2a
    const-string/jumbo v0, "Not implemented"

    .line 246
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_2b
    const-string/jumbo v0, "Bad gateway"

    .line 250
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_2c
    const-string/jumbo v0, "Service unavailable"

    .line 254
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_2d
    const-string/jumbo v0, "Gateway timeout"

    .line 258
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_2e
    const-string/jumbo v0, "SIP version not supported"

    .line 262
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_2f
    const-string/jumbo v0, "Message Too Large"

    .line 266
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_30
    const-string/jumbo v0, "Busy everywhere"

    .line 270
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_31
    const-string/jumbo v0, "Decline"

    .line 274
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_32
    const-string/jumbo v0, "Does not exist anywhere"

    .line 278
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_33
    const-string/jumbo v0, "Session Not acceptable"

    .line 282
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    .local v0, "retval":Ljava/lang/String;
    :sswitch_34
    const-string/jumbo v0, "Conditional request failed"

    .line 286
    .local v0, "retval":Ljava/lang/String;
    goto/16 :goto_0

    .line 74
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xb4 -> :sswitch_1
        0xb5 -> :sswitch_2
        0xb6 -> :sswitch_3
        0xb7 -> :sswitch_4
        0xc8 -> :sswitch_5
        0xca -> :sswitch_6
        0x12c -> :sswitch_7
        0x12d -> :sswitch_8
        0x12e -> :sswitch_9
        0x131 -> :sswitch_a
        0x17c -> :sswitch_b
        0x190 -> :sswitch_c
        0x191 -> :sswitch_d
        0x192 -> :sswitch_e
        0x193 -> :sswitch_f
        0x194 -> :sswitch_10
        0x195 -> :sswitch_11
        0x196 -> :sswitch_12
        0x197 -> :sswitch_13
        0x198 -> :sswitch_14
        0x19a -> :sswitch_15
        0x19c -> :sswitch_34
        0x19d -> :sswitch_17
        0x19e -> :sswitch_18
        0x19f -> :sswitch_19
        0x1a0 -> :sswitch_1a
        0x1a4 -> :sswitch_1b
        0x1a5 -> :sswitch_1c
        0x1a7 -> :sswitch_1d
        0x1e0 -> :sswitch_16
        0x1e1 -> :sswitch_1e
        0x1e2 -> :sswitch_1f
        0x1e3 -> :sswitch_20
        0x1e4 -> :sswitch_21
        0x1e5 -> :sswitch_22
        0x1e6 -> :sswitch_23
        0x1e7 -> :sswitch_24
        0x1e8 -> :sswitch_25
        0x1e9 -> :sswitch_26
        0x1eb -> :sswitch_27
        0x1ed -> :sswitch_29
        0x1f4 -> :sswitch_28
        0x1f5 -> :sswitch_2a
        0x1f6 -> :sswitch_2b
        0x1f7 -> :sswitch_2c
        0x1f8 -> :sswitch_2d
        0x1f9 -> :sswitch_2e
        0x201 -> :sswitch_2f
        0x258 -> :sswitch_30
        0x25b -> :sswitch_31
        0x25c -> :sswitch_32
        0x25e -> :sswitch_33
    .end sparse-switch
.end method

.method public static isFinalResponse(I)Z
    .locals 1
    .param p0, "rc"    # I

    .prologue
    const/16 v0, 0xc8

    .line 363
    if-ge p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x2bc

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private final setBranch(Lgov2/nist/javax2/sip/header/Via;Ljava/lang/String;)V
    .locals 4
    .param p1, "via"    # Lgov2/nist/javax2/sip/header/Via;
    .param p2, "method"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v2, "ACK"

    .line 632
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "CANCEL"

    .line 640
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 643
    return-void

    .line 633
    :cond_0
    iget-object v2, p0, Lgov2/nist/javax2/sip/message/SIPResponse;->statusLine:Lgov2/nist/javax2/sip/header/StatusLine;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/header/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x12c

    if-ge v2, v3, :cond_1

    .line 637
    invoke-static {}, Lgov2/nist/javax2/sip/Utils;->getInstance()Lgov2/nist/javax2/sip/Utils;

    move-result-object v2

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/Utils;->generateBranchId()Ljava/lang/String;

    move-result-object v0

    .line 646
    .local v0, "branch":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Lgov2/nist/javax2/sip/header/Via;->setBranch(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    :goto_1
    return-void

    .line 634
    .end local v0    # "branch":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPResponse;->getTopmostVia()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v2

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "branch":Ljava/lang/String;
    goto :goto_0

    .line 641
    .end local v0    # "branch":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPResponse;->getTopmostVia()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v2

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "branch":Ljava/lang/String;
    goto :goto_0

    .line 649
    :catch_0
    move-exception v1

    .line 648
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public checkHeaders()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 415
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPResponse;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPResponse;->getTo()Ljavax2/sip/header/ToHeader;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 421
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPResponse;->getFrom()Ljavax2/sip/header/FromHeader;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 424
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPResponse;->getViaHeaders()Lgov2/nist/javax2/sip/header/ViaList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 427
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPResponse;->getCallId()Ljavax2/sip/header/CallIdHeader;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 431
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPResponse;->getStatusCode()I

    move-result v0

    const/16 v1, 0x2bb

    if-gt v0, v1, :cond_5

    .line 435
    return-void

    .line 416
    :cond_0
    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "CSeq Is missing "

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 419
    :cond_1
    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "To Is missing "

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 422
    :cond_2
    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "From Is missing "

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 425
    :cond_3
    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "Via Is missing "

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 428
    :cond_4
    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "Call-ID Is missing "

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 432
    :cond_5
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown error code!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPResponse;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 489
    invoke-super {p0}, Lgov2/nist/javax2/sip/message/SIPMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/message/SIPResponse;

    .line 490
    .local v0, "retval":Lgov2/nist/javax2/sip/message/SIPResponse;
    iget-object v1, p0, Lgov2/nist/javax2/sip/message/SIPResponse;->statusLine:Lgov2/nist/javax2/sip/header/StatusLine;

    if-nez v1, :cond_0

    .line 491
    :goto_0
    return-object v0

    .line 490
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/message/SIPResponse;->statusLine:Lgov2/nist/javax2/sip/header/StatusLine;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/StatusLine;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/header/StatusLine;

    iput-object v1, v0, Lgov2/nist/javax2/sip/message/SIPResponse;->statusLine:Lgov2/nist/javax2/sip/header/StatusLine;

    goto :goto_0
.end method

.method public createRequest(Lgov2/nist/javax2/sip/address/SipUri;Lgov2/nist/javax2/sip/header/Via;Lgov2/nist/javax2/sip/header/CSeq;Lgov2/nist/javax2/sip/header/From;Lgov2/nist/javax2/sip/header/To;)Lgov2/nist/javax2/sip/message/SIPRequest;
    .locals 7
    .param p1, "requestURI"    # Lgov2/nist/javax2/sip/address/SipUri;
    .param p2, "via"    # Lgov2/nist/javax2/sip/header/Via;
    .param p3, "cseq"    # Lgov2/nist/javax2/sip/header/CSeq;
    .param p4, "from"    # Lgov2/nist/javax2/sip/header/From;
    .param p5, "to"    # Lgov2/nist/javax2/sip/header/To;

    .prologue
    .line 690
    new-instance v3, Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-direct {v3}, Lgov2/nist/javax2/sip/message/SIPRequest;-><init>()V

    .line 691
    .local v3, "newRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    invoke-virtual {p3}, Lgov2/nist/javax2/sip/header/CSeq;->getMethod()Ljava/lang/String;

    move-result-object v2

    .line 693
    .local v2, "method":Ljava/lang/String;
    invoke-virtual {v3, v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    .line 694
    invoke-virtual {v3, p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->setRequestURI(Ljavax2/sip/address/URI;)V

    .line 695
    invoke-direct {p0, p2, v2}, Lgov2/nist/javax2/sip/message/SIPResponse;->setBranch(Lgov2/nist/javax2/sip/header/Via;Ljava/lang/String;)V

    .line 696
    invoke-virtual {v3, p2}, Lgov2/nist/javax2/sip/message/SIPRequest;->setHeader(Ljavax2/sip/header/Header;)V

    .line 697
    invoke-virtual {v3, p3}, Lgov2/nist/javax2/sip/message/SIPRequest;->setHeader(Ljavax2/sip/header/Header;)V

    .line 698
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPResponse;->getHeaders()Ljava/util/Iterator;

    move-result-object v1

    .line 699
    .local v1, "headerIterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 726
    :try_start_0
    new-instance v5, Lgov2/nist/javax2/sip/header/MaxForwards;

    const/16 v6, 0x46

    invoke-direct {v5, v6}, Lgov2/nist/javax2/sip/header/MaxForwards;-><init>(I)V

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lgov2/nist/javax2/sip/message/SIPRequest;->attachHeader(Lgov2/nist/javax2/sip/header/SIPHeader;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 731
    :goto_1
    invoke-static {}, Lgov2/nist/javax2/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax2/sip/header/UserAgentHeader;

    move-result-object v5

    if-nez v5, :cond_4

    .line 734
    :goto_2
    return-object v3

    .line 700
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov2/nist/javax2/sip/header/SIPHeader;

    .line 702
    .local v4, "nextHeader":Lgov2/nist/javax2/sip/header/SIPHeader;
    invoke-static {v4}, Lgov2/nist/javax2/sip/message/SIPMessage;->isResponseHeader(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    move-result v5

    if-nez v5, :cond_0

    instance-of v5, v4, Lgov2/nist/javax2/sip/header/ViaList;

    if-nez v5, :cond_0

    instance-of v5, v4, Lgov2/nist/javax2/sip/header/CSeq;

    if-nez v5, :cond_0

    instance-of v5, v4, Lgov2/nist/javax2/sip/header/ContentType;

    if-nez v5, :cond_0

    instance-of v5, v4, Lgov2/nist/javax2/sip/header/ContentLength;

    if-nez v5, :cond_0

    instance-of v5, v4, Lgov2/nist/javax2/sip/header/RecordRouteList;

    if-nez v5, :cond_0

    instance-of v5, v4, Lgov2/nist/javax2/sip/header/RequireList;

    if-nez v5, :cond_0

    instance-of v5, v4, Lgov2/nist/javax2/sip/header/ContactList;

    if-nez v5, :cond_0

    instance-of v5, v4, Lgov2/nist/javax2/sip/header/ContentLength;

    if-nez v5, :cond_0

    instance-of v5, v4, Ljavax2/sip/header/ServerHeader;

    if-nez v5, :cond_0

    instance-of v5, v4, Ljavax2/sip/header/ReasonHeader;

    if-nez v5, :cond_0

    instance-of v5, v4, Lgov2/nist/javax2/sip/header/extensions/SessionExpires;

    if-nez v5, :cond_0

    instance-of v5, v4, Lgov2/nist/javax2/sip/header/ReasonList;

    if-nez v5, :cond_0

    .line 713
    instance-of v5, v4, Lgov2/nist/javax2/sip/header/To;

    if-nez v5, :cond_2

    .line 715
    instance-of v5, v4, Lgov2/nist/javax2/sip/header/From;

    if-nez v5, :cond_3

    .line 717
    :goto_3
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {v3, v4, v5}, Lgov2/nist/javax2/sip/message/SIPRequest;->attachHeader(Lgov2/nist/javax2/sip/header/SIPHeader;Z)V
    :try_end_1
    .catch Lgov2/nist/javax2/sip/message/SIPDuplicateHeaderException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 721
    :catch_0
    move-exception v0

    .line 720
    .local v0, "e":Lgov2/nist/javax2/sip/message/SIPDuplicateHeaderException;
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/message/SIPDuplicateHeaderException;->printStackTrace()V

    goto :goto_0

    .line 714
    .end local v0    # "e":Lgov2/nist/javax2/sip/message/SIPDuplicateHeaderException;
    :cond_2
    move-object v4, p5

    goto :goto_3

    .line 715
    :cond_3
    move-object v4, p4

    goto :goto_3

    .line 732
    .end local v4    # "nextHeader":Lgov2/nist/javax2/sip/header/SIPHeader;
    :cond_4
    invoke-static {}, Lgov2/nist/javax2/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax2/sip/header/UserAgentHeader;

    move-result-object v5

    invoke-virtual {v3, v5}, Lgov2/nist/javax2/sip/message/SIPRequest;->setHeader(Ljavax2/sip/header/Header;)V

    goto :goto_2

    .line 729
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public encode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 445
    iget-object v1, p0, Lgov2/nist/javax2/sip/message/SIPResponse;->statusLine:Lgov2/nist/javax2/sip/header/StatusLine;

    if-nez v1, :cond_0

    .line 448
    invoke-super {p0}, Lgov2/nist/javax2/sip/message/SIPMessage;->encode()Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "retval":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 446
    .end local v0    # "retval":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgov2/nist/javax2/sip/message/SIPResponse;->statusLine:Lgov2/nist/javax2/sip/header/StatusLine;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/header/StatusLine;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lgov2/nist/javax2/sip/message/SIPMessage;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "retval":Ljava/lang/String;
    goto :goto_0
.end method

.method public encodeAsBytes(Ljava/lang/String;)[B
    .locals 7
    .param p1, "transport"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 541
    .local v2, "slbytes":[B
    iget-object v4, p0, Lgov2/nist/javax2/sip/message/SIPResponse;->statusLine:Lgov2/nist/javax2/sip/header/StatusLine;

    if-nez v4, :cond_0

    .line 548
    .end local v2    # "slbytes":[B
    :goto_0
    invoke-super {p0, p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->encodeAsBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 549
    .local v3, "superbytes":[B
    array-length v4, v2

    array-length v5, v3

    add-int/2addr v4, v5

    new-array v1, v4, [B

    .line 550
    .local v1, "retval":[B
    array-length v4, v2

    invoke-static {v2, v6, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 551
    array-length v4, v2

    array-length v5, v3

    invoke-static {v3, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 552
    return-object v1

    .line 543
    .end local v1    # "retval":[B
    .end local v3    # "superbytes":[B
    .restart local v2    # "slbytes":[B
    :cond_0
    :try_start_0
    iget-object v4, p0, Lgov2/nist/javax2/sip/message/SIPResponse;->statusLine:Lgov2/nist/javax2/sip/header/StatusLine;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/header/StatusLine;->encode()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, "slbytes":[B
    goto :goto_0

    .line 546
    .local v2, "slbytes":[B
    :catch_0
    move-exception v0

    .line 545
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v0}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public encodeMessage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 460
    iget-object v1, p0, Lgov2/nist/javax2/sip/message/SIPResponse;->statusLine:Lgov2/nist/javax2/sip/header/StatusLine;

    if-nez v1, :cond_0

    .line 463
    invoke-super {p0}, Lgov2/nist/javax2/sip/message/SIPMessage;->encodeSIPHeaders()Ljava/lang/String;

    move-result-object v0

    .line 464
    .local v0, "retval":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 461
    .end local v0    # "retval":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgov2/nist/javax2/sip/message/SIPResponse;->statusLine:Lgov2/nist/javax2/sip/header/StatusLine;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/header/StatusLine;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-super {p0}, Lgov2/nist/javax2/sip/message/SIPMessage;->encodeSIPHeaders()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "retval":Ljava/lang/String;
    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 500
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 501
    check-cast v0, Lgov2/nist/javax2/sip/message/SIPResponse;

    .line 502
    .local v0, "that":Lgov2/nist/javax2/sip/message/SIPResponse;
    iget-object v2, p0, Lgov2/nist/javax2/sip/message/SIPResponse;->statusLine:Lgov2/nist/javax2/sip/header/StatusLine;

    iget-object v3, v0, Lgov2/nist/javax2/sip/message/SIPResponse;->statusLine:Lgov2/nist/javax2/sip/header/StatusLine;

    invoke-virtual {v2, v3}, Lgov2/nist/javax2/sip/header/StatusLine;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    return v1

    .line 500
    .end local v0    # "that":Lgov2/nist/javax2/sip/message/SIPResponse;
    :cond_1
    return v1

    .line 502
    .restart local v0    # "that":Lgov2/nist/javax2/sip/message/SIPResponse;
    :cond_2
    invoke-super {p0, p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getDialogId(Z)Ljava/lang/String;
    .locals 5
    .param p1, "isServer"    # Z

    .prologue
    .line 563
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPResponse;->getCallId()Ljavax2/sip/header/CallIdHeader;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/CallID;

    .line 564
    .local v0, "cid":Lgov2/nist/javax2/sip/header/CallID;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPResponse;->getFrom()Ljavax2/sip/header/FromHeader;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/header/From;

    .line 565
    .local v1, "from":Lgov2/nist/javax2/sip/header/From;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPResponse;->getTo()Ljavax2/sip/header/ToHeader;

    move-result-object v3

    check-cast v3, Lgov2/nist/javax2/sip/header/To;

    .line 566
    .local v3, "to":Lgov2/nist/javax2/sip/header/To;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 567
    .local v2, "retval":Ljava/lang/StringBuffer;
    if-eqz p1, :cond_1

    .line 580
    invoke-virtual {v3}, Lgov2/nist/javax2/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 585
    :goto_0
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    .line 590
    :cond_0
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 569
    :cond_1
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 574
    :goto_2
    invoke-virtual {v3}, Lgov2/nist/javax2/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, ":"

    .line 575
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 576
    invoke-virtual {v3}, Lgov2/nist/javax2/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const-string/jumbo v4, ":"

    .line 570
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 571
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    const-string/jumbo v4, ":"

    .line 581
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 582
    invoke-virtual {v3}, Lgov2/nist/javax2/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    const-string/jumbo v4, ":"

    .line 586
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 587
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public getFirstLine()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 658
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPResponse;->statusLine:Lgov2/nist/javax2/sip/header/StatusLine;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPResponse;->statusLine:Lgov2/nist/javax2/sip/header/StatusLine;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/StatusLine;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 659
    :cond_0
    return-object v1
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPResponse;->statusLine:Lgov2/nist/javax2/sip/header/StatusLine;

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, ""

    .line 351
    return-object v0

    .line 350
    :cond_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPResponse;->statusLine:Lgov2/nist/javax2/sip/header/StatusLine;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPResponse;->statusLine:Lgov2/nist/javax2/sip/header/StatusLine;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPResponse;->statusLine:Lgov2/nist/javax2/sip/header/StatusLine;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/StatusLine;->getStatusCode()I

    move-result v0

    return v0
.end method

.method public isFinalResponse()Z
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPResponse;->statusLine:Lgov2/nist/javax2/sip/header/StatusLine;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/StatusLine;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Lgov2/nist/javax2/sip/message/SIPResponse;->isFinalResponse(I)Z

    move-result v0

    return v0
.end method

.method public setReasonPhrase(Ljava/lang/String;)V
    .locals 2
    .param p1, "reasonPhrase"    # Ljava/lang/String;

    .prologue
    .line 339
    if-eqz p1, :cond_0

    .line 340
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPResponse;->statusLine:Lgov2/nist/javax2/sip/header/StatusLine;

    if-eqz v0, :cond_1

    .line 341
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPResponse;->statusLine:Lgov2/nist/javax2/sip/header/StatusLine;

    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/header/StatusLine;->setReasonPhrase(Ljava/lang/String;)V

    .line 342
    return-void

    .line 339
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad reason phrase"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_1
    new-instance v0, Lgov2/nist/javax2/sip/header/StatusLine;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/StatusLine;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/message/SIPResponse;->statusLine:Lgov2/nist/javax2/sip/header/StatusLine;

    goto :goto_0
.end method

.method public setStatusCode(I)V
    .locals 3
    .param p1, "statusCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/16 v0, 0x64

    .line 309
    if-ge p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/text/ParseException;

    const-string/jumbo v1, "bad status code"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_1
    const/16 v0, 0x2bb

    if-gt p1, v0, :cond_0

    .line 310
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPResponse;->statusLine:Lgov2/nist/javax2/sip/header/StatusLine;

    if-eqz v0, :cond_2

    .line 311
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPResponse;->statusLine:Lgov2/nist/javax2/sip/header/StatusLine;

    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/header/StatusLine;->setStatusCode(I)V

    .line 312
    return-void

    .line 310
    :cond_2
    new-instance v0, Lgov2/nist/javax2/sip/header/StatusLine;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/StatusLine;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/message/SIPResponse;->statusLine:Lgov2/nist/javax2/sip/header/StatusLine;

    goto :goto_0
.end method

.method public setStatusLine(Lgov2/nist/javax2/sip/header/StatusLine;)V
    .locals 0
    .param p1, "sl"    # Lgov2/nist/javax2/sip/header/StatusLine;

    .prologue
    .line 381
    iput-object p1, p0, Lgov2/nist/javax2/sip/message/SIPResponse;->statusLine:Lgov2/nist/javax2/sip/header/StatusLine;

    .line 382
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 673
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPResponse;->statusLine:Lgov2/nist/javax2/sip/header/StatusLine;

    if-eqz v0, :cond_0

    .line 676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov2/nist/javax2/sip/message/SIPResponse;->statusLine:Lgov2/nist/javax2/sip/header/StatusLine;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/StatusLine;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lgov2/nist/javax2/sip/message/SIPMessage;->encode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    .line 674
    return-object v0
.end method
