.class public Lgov2/nist/javax2/sip/address/SipUri;
.super Lgov2/nist/javax2/sip/address/GenericURI;
.source "SipUri.java"

# interfaces
.implements Ljavax2/sip/address/SipURI;


# static fields
.field private static final serialVersionUID:J = 0x6b8cc0d42713c224L


# instance fields
.field protected authority:Lgov2/nist/javax2/sip/address/Authority;

.field protected qheaders:Lgov2/nist/core/NameValueList;

.field protected telephoneSubscriber:Lgov2/nist/javax2/sip/address/TelephoneNumber;

.field protected uriParms:Lgov2/nist/core/NameValueList;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Lgov2/nist/javax2/sip/address/GenericURI;-><init>()V

    const-string/jumbo v0, "sip"

    .line 82
    iput-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->scheme:Ljava/lang/String;

    .line 83
    new-instance v0, Lgov2/nist/core/NameValueList;

    invoke-direct {v0}, Lgov2/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->uriParms:Lgov2/nist/core/NameValueList;

    .line 84
    new-instance v0, Lgov2/nist/core/NameValueList;

    invoke-direct {v0}, Lgov2/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->qheaders:Lgov2/nist/core/NameValueList;

    .line 85
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->qheaders:Lgov2/nist/core/NameValueList;

    const-string/jumbo v1, "&"

    invoke-virtual {v0, v1}, Lgov2/nist/core/NameValueList;->setSeparator(Ljava/lang/String;)V

    .line 86
    return-void
.end method


# virtual methods
.method public clearUriParms()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lgov2/nist/core/NameValueList;

    invoke-direct {v0}, Lgov2/nist/core/NameValueList;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->uriParms:Lgov2/nist/core/NameValueList;

    .line 111
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 752
    invoke-super {p0}, Lgov2/nist/javax2/sip/address/GenericURI;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/address/SipUri;

    .line 753
    .local v0, "retval":Lgov2/nist/javax2/sip/address/SipUri;
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/SipUri;->authority:Lgov2/nist/javax2/sip/address/Authority;

    if-nez v1, :cond_0

    .line 754
    :goto_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/SipUri;->uriParms:Lgov2/nist/core/NameValueList;

    if-nez v1, :cond_1

    .line 755
    :goto_1
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/SipUri;->qheaders:Lgov2/nist/core/NameValueList;

    if-nez v1, :cond_2

    .line 756
    :goto_2
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/SipUri;->telephoneSubscriber:Lgov2/nist/javax2/sip/address/TelephoneNumber;

    if-nez v1, :cond_3

    .line 758
    :goto_3
    return-object v0

    .line 753
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/SipUri;->authority:Lgov2/nist/javax2/sip/address/Authority;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/address/Authority;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/address/Authority;

    iput-object v1, v0, Lgov2/nist/javax2/sip/address/SipUri;->authority:Lgov2/nist/javax2/sip/address/Authority;

    goto :goto_0

    .line 754
    :cond_1
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/SipUri;->uriParms:Lgov2/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov2/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/core/NameValueList;

    iput-object v1, v0, Lgov2/nist/javax2/sip/address/SipUri;->uriParms:Lgov2/nist/core/NameValueList;

    goto :goto_1

    .line 755
    :cond_2
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/SipUri;->qheaders:Lgov2/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov2/nist/core/NameValueList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/core/NameValueList;

    iput-object v1, v0, Lgov2/nist/javax2/sip/address/SipUri;->qheaders:Lgov2/nist/core/NameValueList;

    goto :goto_2

    .line 757
    :cond_3
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/SipUri;->telephoneSubscriber:Lgov2/nist/javax2/sip/address/TelephoneNumber;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/address/TelephoneNumber;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/address/TelephoneNumber;

    iput-object v1, v0, Lgov2/nist/javax2/sip/address/SipUri;->telephoneSubscriber:Lgov2/nist/javax2/sip/address/TelephoneNumber;

    goto :goto_3
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/address/SipUri;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 256
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->scheme:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->authority:Lgov2/nist/javax2/sip/address/Authority;

    if-nez v0, :cond_0

    .line 258
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->uriParms:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov2/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    :goto_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->qheaders:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov2/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    :goto_2
    return-object p1

    .line 257
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->authority:Lgov2/nist/javax2/sip/address/Authority;

    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/address/Authority;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, ";"

    .line 259
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->uriParms:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov2/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "?"

    .line 263
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->qheaders:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov2/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 19
    .param p1, "that"    # Ljava/lang/Object;

    .prologue
    .line 154
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_0

    .line 156
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax2/sip/address/SipURI;

    move/from16 v16, v0

    if-nez v16, :cond_1

    .line 243
    const/16 v16, 0x0

    return v16

    .line 154
    :cond_0
    const/16 v16, 0x1

    return v16

    .line 157
    :cond_1
    move-object/from16 v2, p0

    .local v2, "a":Ljavax2/sip/address/SipURI;
    move-object/from16 v3, p1

    .line 158
    check-cast v3, Ljavax2/sip/address/SipURI;

    .line 161
    .local v3, "b":Ljavax2/sip/address/SipURI;
    invoke-interface {v2}, Ljavax2/sip/address/SipURI;->isSecure()Z

    move-result v16

    invoke-interface {v3}, Ljavax2/sip/address/SipURI;->isSecure()Z

    move-result v17

    xor-int v16, v16, v17

    if-nez v16, :cond_9

    .line 165
    invoke-interface {v2}, Ljavax2/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_a

    const/16 v16, 0x0

    :goto_0
    invoke-interface {v3}, Ljavax2/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_b

    const/16 v17, 0x0

    :goto_1
    xor-int v16, v16, v17

    if-nez v16, :cond_c

    .line 166
    invoke-interface {v2}, Ljavax2/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_d

    const/16 v16, 0x0

    :goto_2
    invoke-interface {v3}, Ljavax2/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_e

    const/16 v17, 0x0

    :goto_3
    xor-int v16, v16, v17

    if-nez v16, :cond_f

    .line 168
    invoke-interface {v2}, Ljavax2/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_10

    .line 171
    :cond_2
    invoke-interface {v2}, Ljavax2/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_11

    .line 174
    :cond_3
    invoke-interface {v2}, Ljavax2/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_12

    const/16 v16, 0x0

    :goto_4
    invoke-interface {v3}, Ljavax2/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_13

    const/16 v17, 0x0

    :goto_5
    xor-int v16, v16, v17

    if-nez v16, :cond_14

    .line 175
    invoke-interface {v2}, Ljavax2/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_15

    .line 176
    :cond_4
    invoke-interface {v2}, Ljavax2/sip/address/SipURI;->getPort()I

    move-result v16

    invoke-interface {v3}, Ljavax2/sip/address/SipURI;->getPort()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_16

    .line 179
    invoke-interface {v2}, Ljavax2/sip/address/SipURI;->getParameterNames()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_17

    .line 193
    invoke-interface {v2}, Ljavax2/sip/address/SipURI;->getTransportParam()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_18

    const/16 v16, 0x0

    :goto_6
    invoke-interface {v3}, Ljavax2/sip/address/SipURI;->getTransportParam()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_19

    const/16 v17, 0x0

    :goto_7
    xor-int v16, v16, v17

    if-nez v16, :cond_1a

    .line 194
    invoke-interface {v2}, Ljavax2/sip/address/SipURI;->getUserParam()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_1b

    const/16 v16, 0x0

    :goto_8
    invoke-interface {v3}, Ljavax2/sip/address/SipURI;->getUserParam()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_1c

    const/16 v17, 0x0

    :goto_9
    xor-int v16, v16, v17

    if-nez v16, :cond_1d

    .line 195
    invoke-interface {v2}, Ljavax2/sip/address/SipURI;->getTTLParam()I

    move-result v16

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1e

    const/16 v16, 0x0

    :goto_a
    invoke-interface {v3}, Ljavax2/sip/address/SipURI;->getTTLParam()I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1f

    const/16 v17, 0x0

    :goto_b
    xor-int v16, v16, v17

    if-nez v16, :cond_20

    .line 196
    invoke-interface {v2}, Ljavax2/sip/address/SipURI;->getMethodParam()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_21

    const/16 v16, 0x0

    :goto_c
    invoke-interface {v3}, Ljavax2/sip/address/SipURI;->getMethodParam()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_22

    const/16 v17, 0x0

    :goto_d
    xor-int v16, v16, v17

    if-nez v16, :cond_23

    .line 197
    invoke-interface {v2}, Ljavax2/sip/address/SipURI;->getMAddrParam()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_24

    const/16 v16, 0x0

    :goto_e
    invoke-interface {v3}, Ljavax2/sip/address/SipURI;->getMAddrParam()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_25

    const/16 v17, 0x0

    :goto_f
    xor-int v16, v16, v17

    if-nez v16, :cond_26

    .line 200
    invoke-interface {v2}, Ljavax2/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_27

    .line 201
    :cond_6
    invoke-interface {v2}, Ljavax2/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_28

    .line 203
    :cond_7
    invoke-interface {v2}, Ljavax2/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_29

    .line 241
    :cond_8
    const/16 v16, 0x1

    return v16

    .line 161
    .end local v12    # "i":Ljava/util/Iterator;
    :cond_9
    const/16 v16, 0x0

    return v16

    :cond_a
    const/16 v16, 0x1

    .line 165
    goto/16 :goto_0

    :cond_b
    const/16 v17, 0x1

    goto/16 :goto_1

    :cond_c
    const/16 v16, 0x0

    return v16

    :cond_d
    const/16 v16, 0x1

    .line 166
    goto/16 :goto_2

    :cond_e
    const/16 v17, 0x1

    goto/16 :goto_3

    :cond_f
    const/16 v16, 0x0

    return v16

    .line 168
    :cond_10
    invoke-interface {v2}, Ljavax2/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lgov2/nist/javax2/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-interface {v3}, Ljavax2/sip/address/SipURI;->getUser()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lgov2/nist/javax2/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 170
    const/16 v16, 0x0

    return v16

    .line 171
    :cond_11
    invoke-interface {v2}, Ljavax2/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lgov2/nist/javax2/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-interface {v3}, Ljavax2/sip/address/SipURI;->getUserPassword()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lgov2/nist/javax2/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_3

    .line 173
    const/16 v16, 0x0

    return v16

    :cond_12
    const/16 v16, 0x1

    .line 174
    goto/16 :goto_4

    :cond_13
    const/16 v17, 0x1

    goto/16 :goto_5

    :cond_14
    const/16 v16, 0x0

    return v16

    .line 175
    :cond_15
    invoke-interface {v2}, Ljavax2/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v16

    invoke-interface {v3}, Ljavax2/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_4

    const/16 v16, 0x0

    return v16

    .line 176
    :cond_16
    const/16 v16, 0x0

    return v16

    .line 180
    .restart local v12    # "i":Ljava/util/Iterator;
    :cond_17
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 182
    .local v15, "pname":Ljava/lang/String;
    invoke-interface {v2, v15}, Ljavax2/sip/address/SipURI;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 183
    .local v13, "p1":Ljava/lang/String;
    invoke-interface {v3, v15}, Ljavax2/sip/address/SipURI;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 186
    .local v14, "p2":Ljava/lang/String;
    if-eqz v13, :cond_5

    if-eqz v14, :cond_5

    invoke-static {v13}, Lgov2/nist/javax2/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-static {v14}, Lgov2/nist/javax2/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_5

    .line 189
    const/16 v16, 0x0

    return v16

    .end local v13    # "p1":Ljava/lang/String;
    .end local v14    # "p2":Ljava/lang/String;
    .end local v15    # "pname":Ljava/lang/String;
    :cond_18
    const/16 v16, 0x1

    .line 193
    goto/16 :goto_6

    :cond_19
    const/16 v17, 0x1

    goto/16 :goto_7

    :cond_1a
    const/16 v16, 0x0

    return v16

    :cond_1b
    const/16 v16, 0x1

    .line 194
    goto/16 :goto_8

    :cond_1c
    const/16 v17, 0x1

    goto/16 :goto_9

    :cond_1d
    const/16 v16, 0x0

    return v16

    :cond_1e
    const/16 v16, 0x1

    .line 195
    goto/16 :goto_a

    :cond_1f
    const/16 v17, 0x1

    goto/16 :goto_b

    :cond_20
    const/16 v16, 0x0

    return v16

    :cond_21
    const/16 v16, 0x1

    .line 196
    goto/16 :goto_c

    :cond_22
    const/16 v17, 0x1

    goto/16 :goto_d

    :cond_23
    const/16 v16, 0x0

    return v16

    :cond_24
    const/16 v16, 0x1

    .line 197
    goto/16 :goto_e

    :cond_25
    const/16 v17, 0x1

    goto/16 :goto_f

    :cond_26
    const/16 v16, 0x0

    return v16

    .line 200
    :cond_27
    invoke-interface {v3}, Ljavax2/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_6

    const/16 v16, 0x0

    return v16

    .line 201
    :cond_28
    invoke-interface {v3}, Ljavax2/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    const/16 v16, 0x0

    return v16

    .line 203
    :cond_29
    invoke-interface {v3}, Ljavax2/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    const/4 v10, 0x0

    .line 206
    .local v10, "headerFactory":Ljavax2/sip/header/HeaderFactory;
    :try_start_0
    invoke-static {}, Ljavax2/sip/SipFactory;->getInstance()Ljavax2/sip/SipFactory;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljavax2/sip/SipFactory;->createHeaderFactory()Ljavax2/sip/header/HeaderFactory;
    :try_end_0
    .catch Ljavax2/sip/PeerUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 213
    .local v10, "headerFactory":Ljavax2/sip/header/HeaderFactory;
    invoke-interface {v2}, Ljavax2/sip/address/SipURI;->getHeaderNames()Ljava/util/Iterator;

    move-result-object v12

    :cond_2a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_8

    .line 214
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 216
    .local v11, "hname":Ljava/lang/String;
    invoke-interface {v2, v11}, Ljavax2/sip/address/SipURI;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 217
    .local v6, "h1":Ljava/lang/String;
    invoke-interface {v3, v11}, Ljavax2/sip/address/SipURI;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 219
    .local v7, "h2":Ljava/lang/String;
    if-eqz v6, :cond_2d

    .line 220
    :cond_2b
    if-eqz v7, :cond_2e

    .line 223
    :cond_2c
    if-eqz v6, :cond_2f

    .line 225
    :goto_10
    :try_start_1
    invoke-static {v6}, Lgov2/nist/javax2/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v11, v0}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v8

    .line 227
    .local v8, "header1":Ljavax2/sip/header/Header;
    invoke-static {v7}, Lgov2/nist/javax2/sip/address/RFC2396UrlDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v11, v0}, Ljavax2/sip/header/HeaderFactory;->createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v9

    .line 231
    .local v9, "header2":Ljavax2/sip/header/Header;
    invoke-interface {v8, v9}, Ljavax2/sip/header/Header;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v16

    if-nez v16, :cond_2a

    const/16 v16, 0x0

    return v16

    .line 212
    .end local v6    # "h1":Ljava/lang/String;
    .end local v7    # "h2":Ljava/lang/String;
    .end local v8    # "header1":Ljavax2/sip/header/Header;
    .end local v9    # "header2":Ljavax2/sip/header/Header;
    .end local v11    # "hname":Ljava/lang/String;
    .local v10, "headerFactory":Ljavax2/sip/header/HeaderFactory;
    :catch_0
    move-exception v5

    .local v5, "e":Ljavax2/sip/PeerUnavailableException;
    const-string/jumbo v16, "Cannot get the header factory to parse the header of the sip uris to compare"

    .line 208
    move-object/from16 v0, v16

    invoke-static {v0, v5}, Lgov2/nist/core/Debug;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 211
    const/16 v16, 0x0

    return v16

    .line 219
    .end local v5    # "e":Ljavax2/sip/PeerUnavailableException;
    .restart local v6    # "h1":Ljava/lang/String;
    .restart local v7    # "h2":Ljava/lang/String;
    .local v10, "headerFactory":Ljavax2/sip/header/HeaderFactory;
    .restart local v11    # "hname":Ljava/lang/String;
    :cond_2d
    if-eqz v7, :cond_2b

    const/16 v16, 0x0

    return v16

    .line 220
    :cond_2e
    if-eqz v6, :cond_2c

    const/16 v16, 0x0

    return v16

    .line 223
    :cond_2f
    if-eqz v7, :cond_2a

    goto :goto_10

    .line 236
    :catch_1
    move-exception v4

    .line 233
    .local v4, "e":Ljava/text/ParseException;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Cannot parse one of the header of the sip uris to compare "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Lgov2/nist/core/Debug;->logError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 235
    const/16 v16, 0x0

    return v16
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 771
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/SipUri;->qheaders:Lgov2/nist/core/NameValueList;

    invoke-virtual {v1, p1}, Lgov2/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->qheaders:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov2/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeaderNames()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 783
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->qheaders:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov2/nist/core/NameValueList;->getNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 444
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->authority:Lgov2/nist/javax2/sip/address/Authority;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->authority:Lgov2/nist/javax2/sip/address/Authority;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/address/Authority;->getHost()Lgov2/nist/core/Host;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 449
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->authority:Lgov2/nist/javax2/sip/address/Authority;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/address/Authority;->getHost()Lgov2/nist/core/Host;

    move-result-object v0

    invoke-virtual {v0}, Lgov2/nist/core/Host;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 445
    :cond_0
    return-object v1

    .line 447
    :cond_1
    return-object v1
.end method

.method public getHostPort()Lgov2/nist/core/HostPort;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 420
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->authority:Lgov2/nist/javax2/sip/address/Authority;

    if-nez v0, :cond_1

    .line 421
    :cond_0
    return-object v1

    .line 420
    :cond_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->authority:Lgov2/nist/javax2/sip/address/Authority;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/address/Authority;->getHost()Lgov2/nist/core/Host;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->authority:Lgov2/nist/javax2/sip/address/Authority;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/address/Authority;->getHostPort()Lgov2/nist/core/HostPort;

    move-result-object v0

    return-object v0
.end method

.method public getMAddrParam()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 805
    iget-object v2, p0, Lgov2/nist/javax2/sip/address/SipUri;->uriParms:Lgov2/nist/core/NameValueList;

    const-string/jumbo v3, "maddr"

    invoke-virtual {v2, v3}, Lgov2/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov2/nist/core/NameValue;

    move-result-object v1

    .line 806
    .local v1, "maddr":Lgov2/nist/core/NameValue;
    if-eqz v1, :cond_0

    .line 807
    invoke-virtual {v1}, Lgov2/nist/core/NameValue;->getValueAsObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 808
    .local v0, "host":Ljava/lang/String;
    return-object v0

    .line 806
    .end local v0    # "host":Ljava/lang/String;
    :cond_0
    return-object v4
.end method

.method public getMethodParam()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "method"

    .line 818
    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/address/SipUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 829
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/SipUri;->uriParms:Lgov2/nist/core/NameValueList;

    invoke-virtual {v1, p1}, Lgov2/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 830
    .local v0, "val":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 831
    instance-of v1, v0, Lgov2/nist/core/GenericObject;

    if-nez v1, :cond_1

    .line 834
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 830
    :cond_0
    return-object v2

    .line 832
    :cond_1
    check-cast v0, Lgov2/nist/core/GenericObject;

    .end local v0    # "val":Ljava/lang/Object;
    invoke-virtual {v0}, Lgov2/nist/core/GenericObject;->encode()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getParameterNames()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 844
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->uriParms:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov2/nist/core/NameValueList;->getNames()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getPort()I
    .locals 2

    .prologue
    .line 433
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/address/SipUri;->getHostPort()Lgov2/nist/core/HostPort;

    move-result-object v0

    .line 434
    .local v0, "hp":Lgov2/nist/core/HostPort;
    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {v0}, Lgov2/nist/core/HostPort;->getPort()I

    move-result v1

    return v1

    :cond_0
    const/4 v1, -0x1

    .line 434
    return v1
.end method

.method public getScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->scheme:Ljava/lang/String;

    return-object v0
.end method

.method public getTTLParam()I
    .locals 3

    .prologue
    .line 854
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/SipUri;->uriParms:Lgov2/nist/core/NameValueList;

    const-string/jumbo v2, "ttl"

    invoke-virtual {v1, v2}, Lgov2/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 855
    .local v0, "ttl":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    .line 858
    return v1

    .line 856
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public getTransportParam()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 868
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->uriParms:Lgov2/nist/core/NameValueList;

    if-nez v0, :cond_0

    .line 871
    return-object v1

    .line 869
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->uriParms:Lgov2/nist/core/NameValueList;

    const-string/jumbo v1, "transport"

    invoke-virtual {v0, v1}, Lgov2/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->authority:Lgov2/nist/javax2/sip/address/Authority;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/address/Authority;->getUser()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserParam()Ljava/lang/String;
    .locals 1

    .prologue
    const-string/jumbo v0, "user"

    .line 1043
    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/address/SipUri;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserPassword()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 384
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->authority:Lgov2/nist/javax2/sip/address/Authority;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->authority:Lgov2/nist/javax2/sip/address/Authority;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/address/Authority;->getPassword()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 384
    :cond_0
    return-object v1
.end method

.method public hasLrParam()Z
    .locals 2

    .prologue
    .line 1055
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->uriParms:Lgov2/nist/core/NameValueList;

    const-string/jumbo v1, "lr"

    invoke-virtual {v0, v1}, Lgov2/nist/core/NameValueList;->getNameValue(Ljava/lang/String;)Lgov2/nist/core/NameValue;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasParameter(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 697
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->uriParms:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov2/nist/core/NameValueList;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 2

    .prologue
    .line 894
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/address/SipUri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sips"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSipURI()Z
    .locals 1

    .prologue
    .line 903
    const/4 v0, 0x1

    return v0
.end method

.method public removeParameter(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 733
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->uriParms:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov2/nist/core/NameValueList;->delete(Ljava/lang/String;)Z

    .line 734
    return-void
.end method

.method public setHost(Lgov2/nist/core/Host;)V
    .locals 1
    .param p1, "h"    # Lgov2/nist/core/Host;

    .prologue
    .line 589
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->authority:Lgov2/nist/javax2/sip/address/Authority;

    if-eqz v0, :cond_0

    .line 590
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->authority:Lgov2/nist/javax2/sip/address/Authority;

    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/address/Authority;->setHost(Lgov2/nist/core/Host;)V

    .line 591
    return-void

    .line 589
    :cond_0
    new-instance v0, Lgov2/nist/javax2/sip/address/Authority;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/address/Authority;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->authority:Lgov2/nist/javax2/sip/address/Authority;

    goto :goto_0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 926
    new-instance v0, Lgov2/nist/core/Host;

    invoke-direct {v0, p1}, Lgov2/nist/core/Host;-><init>(Ljava/lang/String;)V

    .line 927
    .local v0, "h":Lgov2/nist/core/Host;
    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/address/SipUri;->setHost(Lgov2/nist/core/Host;)V

    .line 928
    return-void
.end method

.method public setHostPort(Lgov2/nist/core/HostPort;)V
    .locals 1
    .param p1, "hostPort"    # Lgov2/nist/core/HostPort;

    .prologue
    .line 742
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->authority:Lgov2/nist/javax2/sip/address/Authority;

    if-eqz v0, :cond_0

    .line 745
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->authority:Lgov2/nist/javax2/sip/address/Authority;

    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/address/Authority;->setHostPort(Lgov2/nist/core/HostPort;)V

    .line 746
    return-void

    .line 743
    :cond_0
    new-instance v0, Lgov2/nist/javax2/sip/address/Authority;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/address/Authority;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->authority:Lgov2/nist/javax2/sip/address/Authority;

    goto :goto_0
.end method

.method public setParameter(Lgov2/nist/core/NameValue;)V
    .locals 0
    .param p1, "nameValue"    # Lgov2/nist/core/NameValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 1086
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const-string/jumbo v1, "ttl"

    .line 977
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 984
    :goto_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/SipUri;->uriParms:Lgov2/nist/core/NameValueList;

    invoke-virtual {v1, p1, p2}, Lgov2/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 985
    return-void

    .line 979
    :cond_0
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 982
    :catch_0
    move-exception v0

    .line 981
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bad parameter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public setPort(I)V
    .locals 1
    .param p1, "p"    # I

    .prologue
    .line 685
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->authority:Lgov2/nist/javax2/sip/address/Authority;

    if-eqz v0, :cond_0

    .line 686
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->authority:Lgov2/nist/javax2/sip/address/Authority;

    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/address/Authority;->setPort(I)V

    .line 687
    return-void

    .line 685
    :cond_0
    new-instance v0, Lgov2/nist/javax2/sip/address/Authority;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/address/Authority;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->authority:Lgov2/nist/javax2/sip/address/Authority;

    goto :goto_0
.end method

.method public setQHeader(Lgov2/nist/core/NameValue;)V
    .locals 1
    .param p1, "nameValue"    # Lgov2/nist/core/NameValue;

    .prologue
    .line 706
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->qheaders:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov2/nist/core/NameValueList;->set(Lgov2/nist/core/NameValue;)V

    .line 707
    return-void
.end method

.method public setScheme(Ljava/lang/String;)V
    .locals 3
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v0, "sip"

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 94
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->scheme:Ljava/lang/String;

    .line 95
    return-void

    :cond_1
    const-string/jumbo v0, "sips"

    .line 92
    invoke-virtual {p1, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "bad scheme "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSecure(Z)V
    .locals 1
    .param p1, "secure"    # Z

    .prologue
    .line 994
    if-nez p1, :cond_0

    const-string/jumbo v0, "sip"

    .line 997
    iput-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->scheme:Ljava/lang/String;

    .line 998
    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "sips"

    .line 995
    iput-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->scheme:Ljava/lang/String;

    goto :goto_0
.end method

.method public setTransportParam(Ljava/lang/String;)V
    .locals 5
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1027
    if-eqz p1, :cond_1

    const-string/jumbo v1, "UDP"

    .line 1028
    invoke-virtual {p1, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2

    .line 1031
    :cond_0
    new-instance v0, Lgov2/nist/core/NameValue;

    const-string/jumbo v1, "transport"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lgov2/nist/core/NameValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1032
    .local v0, "nv":Lgov2/nist/core/NameValue;
    iget-object v1, p0, Lgov2/nist/javax2/sip/address/SipUri;->uriParms:Lgov2/nist/core/NameValueList;

    invoke-virtual {v1, v0}, Lgov2/nist/core/NameValueList;->set(Lgov2/nist/core/NameValue;)V

    .line 1035
    return-void

    .line 1027
    .end local v0    # "nv":Lgov2/nist/core/NameValue;
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "null arg"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string/jumbo v1, "TLS"

    .line 1028
    invoke-virtual {p1, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "TCP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SCTP"

    invoke-virtual {p1, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1034
    new-instance v1, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "bad transport "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public setUriParameter(Lgov2/nist/core/NameValue;)V
    .locals 1
    .param p1, "nameValue"    # Lgov2/nist/core/NameValue;

    .prologue
    .line 715
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->uriParms:Lgov2/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov2/nist/core/NameValueList;->set(Lgov2/nist/core/NameValue;)V

    .line 716
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 1
    .param p1, "uname"    # Ljava/lang/String;

    .prologue
    .line 546
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->authority:Lgov2/nist/javax2/sip/address/Authority;

    if-eqz v0, :cond_0

    .line 550
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->authority:Lgov2/nist/javax2/sip/address/Authority;

    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/address/Authority;->setUser(Ljava/lang/String;)V

    .line 551
    return-void

    .line 547
    :cond_0
    new-instance v0, Lgov2/nist/javax2/sip/address/Authority;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/address/Authority;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->authority:Lgov2/nist/javax2/sip/address/Authority;

    goto :goto_0
.end method

.method public setUserPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 394
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->authority:Lgov2/nist/javax2/sip/address/Authority;

    if-eqz v0, :cond_0

    .line 395
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->authority:Lgov2/nist/javax2/sip/address/Authority;

    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/address/Authority;->setPassword(Ljava/lang/String;)V

    .line 396
    return-void

    .line 394
    :cond_0
    new-instance v0, Lgov2/nist/javax2/sip/address/Authority;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/address/Authority;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/address/SipUri;->authority:Lgov2/nist/javax2/sip/address/Authority;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/address/SipUri;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
