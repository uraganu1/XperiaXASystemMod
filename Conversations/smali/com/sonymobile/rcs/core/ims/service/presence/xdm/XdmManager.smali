.class public Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;
.super Ljava/lang/Object;
.source "XdmManager.java"


# instance fields
.field private documents:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;",
            ">;"
        }
    .end annotation
.end field

.field private logger:Lcom/sonymobile/rcs/utils/logger/Logger;

.field private xdmServerAddr:Ljava/lang/String;

.field private xdmServerLogin:Ljava/lang/String;

.field private xdmServerPwd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sonymobile/rcs/core/ims/ImsModule;)V
    .locals 1
    .param p1, "parent"    # Lcom/sonymobile/rcs/core/ims/ImsModule;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->documents:Ljava/util/Hashtable;

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->getLogger(Ljava/lang/String;)Lcom/sonymobile/rcs/utils/logger/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    .line 89
    sget-object v0, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getXdmServerAddr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->xdmServerAddr:Ljava/lang/String;

    .line 90
    sget-object v0, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getXdmServerLogin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->xdmServerLogin:Ljava/lang/String;

    .line 91
    sget-object v0, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getXdmServerPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->xdmServerPwd:Ljava/lang/String;

    .line 92
    return-void
.end method

.method private sendHttpRequest(Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .locals 33
    .param p1, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;
    .param p2, "authenticationAgent"    # Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->xdmServerAddr:Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x7

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v31, ":|/"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .local v22, "parts":[Ljava/lang/String;
    const/16 v30, 0x0

    .line 175
    aget-object v13, v22, v30

    .local v13, "host":Ljava/lang/String;
    const/16 v30, 0x1

    .line 176
    aget-object v30, v22, v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .local v23, "port":I
    const-string/jumbo v28, ""

    .line 178
    .local v28, "serviceRoot":Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v30, v0

    const/16 v31, 0x2

    move/from16 v0, v30

    move/from16 v1, v31

    if-gt v0, v1, :cond_4

    .line 183
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/platform/network/NetworkFactory;->getFactory()Lcom/sonymobile/rcs/platform/network/NetworkFactory;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/sonymobile/rcs/platform/network/NetworkFactory;->createSocketClientConnection()Lcom/sonymobile/rcs/platform/network/SocketConnection;

    move-result-object v7

    .line 184
    .local v7, "conn":Lcom/sonymobile/rcs/platform/network/SocketConnection;
    move/from16 v0, v23

    invoke-interface {v7, v13, v0}, Lcom/sonymobile/rcs/platform/network/SocketConnection;->open(Ljava/lang/String;I)V

    .line 185
    invoke-interface {v7}, Lcom/sonymobile/rcs/platform/network/SocketConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    .line 186
    .local v16, "is":Ljava/io/InputStream;
    invoke-interface {v7}, Lcom/sonymobile/rcs/platform/network/SocketConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v21

    .line 189
    .local v21, "os":Ljava/io/OutputStream;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;->getUrl()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 190
    .local v25, "requestUri":Ljava/lang/String;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, " HTTP/1.1"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "\r\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "Host: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, ":"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "\r\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "User-Agent: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static {}, Lcom/sonymobile/rcs/core/TerminalInfo;->getProductName()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-static {}, Lcom/sonymobile/rcs/core/TerminalInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "\r\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 195
    .local v14, "httpRequest":Ljava/lang/String;
    if-nez p2, :cond_5

    .line 203
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;->getCookie()Ljava/lang/String;

    move-result-object v9

    .line 204
    .local v9, "cookie":Ljava/lang/String;
    if-nez v9, :cond_6

    .line 209
    :goto_2
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "X-3GPP-Intended-Identity: \""

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    sget-object v31, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual/range {v31 .. v31}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getXdmServerLogin()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "\""

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "\r\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->documents:Ljava/util/Hashtable;

    move-object/from16 v30, v0

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;->getAUID()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;

    .line 214
    .local v12, "folder":Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;
    if-nez v12, :cond_7

    .line 219
    :cond_0
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;->getContent()Ljava/lang/String;

    move-result-object v30

    if-nez v30, :cond_8

    .line 225
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "Content-Length: 0\r\n\r\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 229
    :goto_4
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 230
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->flush()V

    .line 233
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;->getContent()Ljava/lang/String;

    move-result-object v30

    if-nez v30, :cond_9

    .line 238
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v30

    if-nez v30, :cond_a

    .line 247
    :goto_6
    new-instance v26, Ljava/lang/StringBuffer;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuffer;-><init>()V

    .line 249
    .local v26, "respTrace":Ljava/lang/StringBuffer;
    new-instance v27, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    invoke-direct/range {v27 .. v27}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;-><init>()V

    .local v27, "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    const/4 v6, -0x1

    .local v6, "ch":I
    const-string/jumbo v18, ""

    .line 252
    .local v18, "line":Ljava/lang/String;
    :cond_1
    :goto_7
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->read()I

    move-result v6

    const/16 v30, -0x1

    move/from16 v0, v30

    if-ne v6, v0, :cond_c

    :cond_2
    const/16 v17, -0x1

    .local v17, "length":I
    :try_start_0
    const-string/jumbo v30, "content-length"

    .line 286
    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 287
    .local v29, "value":Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    .line 293
    .end local v29    # "value":Ljava/lang/String;
    :goto_8
    if-gtz v17, :cond_f

    .line 313
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v30

    if-nez v30, :cond_13

    .line 318
    :goto_a
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 319
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V

    .line 320
    invoke-interface {v7}, Lcom/sonymobile/rcs/platform/network/SocketConnection;->close()V

    const-string/jumbo v30, "etag"

    .line 323
    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 324
    .local v11, "etag":Ljava/lang/String;
    if-nez v11, :cond_14

    .line 328
    :cond_3
    :goto_b
    return-object v27

    .line 179
    .end local v6    # "ch":I
    .end local v7    # "conn":Lcom/sonymobile/rcs/platform/network/SocketConnection;
    .end local v9    # "cookie":Ljava/lang/String;
    .end local v11    # "etag":Ljava/lang/String;
    .end local v12    # "folder":Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;
    .end local v14    # "httpRequest":Ljava/lang/String;
    .end local v16    # "is":Ljava/io/InputStream;
    .end local v17    # "length":I
    .end local v18    # "line":Ljava/lang/String;
    .end local v21    # "os":Ljava/io/OutputStream;
    .end local v25    # "requestUri":Ljava/lang/String;
    .end local v26    # "respTrace":Ljava/lang/StringBuffer;
    .end local v27    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    :cond_4
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "/"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const/16 v31, 0x2

    aget-object v31, v22, v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_0

    .line 197
    .restart local v7    # "conn":Lcom/sonymobile/rcs/platform/network/SocketConnection;
    .restart local v14    # "httpRequest":Ljava/lang/String;
    .restart local v16    # "is":Ljava/io/InputStream;
    .restart local v21    # "os":Ljava/io/OutputStream;
    .restart local v25    # "requestUri":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;->getMethod()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;->getContent()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p2

    move-object/from16 v1, v30

    move-object/from16 v2, v25

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->generateAuthorizationHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, "authorizationHeader":Ljava/lang/String;
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "\r\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    .line 206
    .end local v4    # "authorizationHeader":Ljava/lang/String;
    .restart local v9    # "cookie":Ljava/lang/String;
    :cond_6
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "Cookie: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "\r\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_2

    .line 214
    .restart local v12    # "folder":Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;
    :cond_7
    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;->getEntry()Lcom/sonymobile/rcs/core/ims/service/presence/directory/Entry;

    move-result-object v30

    if-eqz v30, :cond_0

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;->getEntry()Lcom/sonymobile/rcs/core/ims/service/presence/directory/Entry;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/sonymobile/rcs/core/ims/service/presence/directory/Entry;->getEtag()Ljava/lang/String;

    move-result-object v30

    if-eqz v30, :cond_0

    .line 216
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "If-match: \""

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;->getEntry()Lcom/sonymobile/rcs/core/ims/service/presence/directory/Entry;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/sonymobile/rcs/core/ims/service/presence/directory/Entry;->getEtag()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "\""

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "\r\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_3

    .line 221
    :cond_8
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "Content-type: "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;->getContentType()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "\r\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 222
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "Content-Length:"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;->getContentLength()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "\r\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string/jumbo v31, "\r\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_4

    .line 234
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;->getContent()Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v31, "UTF-8"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v30

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 235
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->flush()V

    goto/16 :goto_5

    .line 239
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;->getContent()Ljava/lang/String;

    move-result-object v30

    if-nez v30, :cond_b

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Send HTTP request:\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 240
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Send HTTP request:\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {p1 .. p1}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;->getContent()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 253
    .restart local v6    # "ch":I
    .restart local v18    # "line":Ljava/lang/String;
    .restart local v26    # "respTrace":Ljava/lang/StringBuffer;
    .restart local v27    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    :cond_c
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    int-to-char v0, v6

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v30, "\r\n"

    .line 255
    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_1

    const-string/jumbo v30, "\r\n"

    .line 256
    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_2

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v30

    if-nez v30, :cond_d

    :goto_c
    const/16 v30, 0x0

    .line 266
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v31

    add-int/lit8 v31, v31, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v30, "HTTP/"

    .line 268
    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_e

    const-string/jumbo v30, ":"

    .line 273
    move-object/from16 v0, v18

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    .local v15, "index":I
    const/16 v30, 0x0

    .line 274
    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    .line 275
    .local v19, "name":Ljava/lang/String;
    add-int/lit8 v30, v15, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    .line 276
    .restart local v29    # "value":Ljava/lang/String;
    move-object/from16 v0, v27

    move-object/from16 v1, v19

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .end local v15    # "index":I
    .end local v19    # "name":Ljava/lang/String;
    .end local v29    # "value":Ljava/lang/String;
    :goto_d
    const-string/jumbo v18, ""

    .line 279
    goto/16 :goto_7

    .line 262
    :cond_d
    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_c

    .line 270
    :cond_e
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->setStatusLine(Ljava/lang/String;)V

    goto :goto_d

    .line 290
    .restart local v17    # "length":I
    :catch_0
    move-exception v10

    .local v10, "e":Ljava/lang/Exception;
    const/16 v17, -0x1

    .line 289
    goto/16 :goto_8

    .line 294
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_f
    move/from16 v0, v17

    new-array v8, v0, [B

    .local v8, "content":[B
    const/16 v20, -0x1

    .local v20, "nb":I
    const/16 v24, 0x0

    .local v24, "pos":I
    const/16 v30, 0x400

    .line 297
    move/from16 v0, v30

    new-array v5, v0, [B

    .line 298
    .local v5, "buffer":[B
    :goto_e
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/io/InputStream;->read([B)I

    move-result v20

    const/16 v30, -0x1

    move/from16 v0, v20

    move/from16 v1, v30

    if-ne v0, v1, :cond_11

    .line 307
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v30

    if-nez v30, :cond_12

    .line 310
    :goto_f
    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->setContent([B)V

    goto/16 :goto_9

    :cond_11
    const/16 v30, 0x0

    .line 299
    move/from16 v0, v30

    move/from16 v1, v24

    move/from16 v2, v20

    invoke-static {v5, v0, v8, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    add-int v24, v24, v20

    .line 302
    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_10

    goto :goto_e

    .line 308
    :cond_12
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v31, "\r\n"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    new-instance v31, Ljava/lang/String;

    move-object/from16 v0, v31

    invoke-direct {v0, v8}, Ljava/lang/String;-><init>([B)V

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_f

    .line 314
    .end local v5    # "buffer":[B
    .end local v8    # "content":[B
    .end local v20    # "nb":I
    .end local v24    # "pos":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    move-object/from16 v30, v0

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v32, "Receive HTTP response:\n"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 324
    .restart local v11    # "etag":Ljava/lang/String;
    :cond_14
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;->getEntry()Lcom/sonymobile/rcs/core/ims/service/presence/directory/Entry;

    move-result-object v30

    if-eqz v30, :cond_3

    .line 325
    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;->getEntry()Lcom/sonymobile/rcs/core/ims/service/presence/directory/Entry;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v11}, Lcom/sonymobile/rcs/core/ims/service/presence/directory/Entry;->setEtag(Ljava/lang/String;)V

    goto/16 :goto_b
.end method

.method private sendRequestToXDMS(Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .locals 3
    .param p1, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->xdmServerLogin:Ljava/lang/String;

    iget-object v2, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->xdmServerPwd:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->sendRequestToXDMS(Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method private sendRequestToXDMS(Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .locals 7
    .param p1, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;
    .param p2, "authenticationAgent"    # Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sonymobile/rcs/core/CoreException;
        }
    .end annotation

    .prologue
    .line 117
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->sendHttpRequest(Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    move-result-object v3

    .line 120
    .local v3, "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->getResponseCode()I

    move-result v4

    const/16 v5, 0x191

    if-eq v4, v5, :cond_0

    .line 137
    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->getResponseCode()I

    move-result v4

    const/16 v5, 0x19c

    if-eq v4, v5, :cond_3

    .line 150
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_5

    .line 154
    :goto_0
    return-object v3

    .line 122
    :cond_0
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 126
    :goto_1
    if-nez p2, :cond_2

    :goto_2
    const-string/jumbo v4, "set-cookie"

    .line 132
    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "cookie":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;->setCookie(Ljava/lang/String;)V

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->sendRequestToXDMS(Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    move-result-object v3

    goto :goto_0

    .line 123
    .end local v0    # "cookie":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "401 Unauthorized response received"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonymobile/rcs/core/CoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 154
    .end local v3    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    :catch_0
    move-exception v1

    .line 156
    .local v1, "e":Lcom/sonymobile/rcs/core/CoreException;
    throw v1

    .end local v1    # "e":Lcom/sonymobile/rcs/core/CoreException;
    .restart local v3    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    :cond_2
    :try_start_1
    const-string/jumbo v4, "www-authenticate"

    .line 128
    invoke-virtual {v3, v4}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpAuthenticationAgent;->readWwwAuthenticateHeader(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sonymobile/rcs/core/CoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 156
    .end local v3    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    :catch_1
    move-exception v2

    .line 158
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/sonymobile/rcs/core/CoreException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t send HTTP request: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sonymobile/rcs/core/CoreException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 139
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    :cond_3
    :try_start_2
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_4

    .line 144
    :goto_3
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->documents:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;->getAUID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-direct {p0, p1}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->sendRequestToXDMS(Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    move-result-object v3

    goto :goto_0

    .line 140
    :cond_4
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "412 Precondition failed"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 151
    :cond_5
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->getResponseCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " response received"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/sonymobile/rcs/core/CoreException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method


# virtual methods
.method public addContactToBlockedList(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .locals 8
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    .line 926
    :try_start_0
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_1

    .line 931
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/resource-lists/users/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/rcs/utils/HttpUtils;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/index/~~/resource-lists/list%5B@name=%22rcs_blockedcontacts%22%5D/entry%5B@uri=%22"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/sonymobile/rcs/utils/HttpUtils;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "%22%5D"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 937
    .local v4, "url":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<entry uri=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'></entry>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 940
    .local v0, "content":Ljava/lang/String;
    new-instance v2, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;

    const-string/jumbo v5, "application/xcap-el+xml"

    invoke-direct {v2, v4, v0, v5}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    .local v2, "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;
    invoke-direct {p0, v2}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->sendRequestToXDMS(Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    move-result-object v3

    .line 944
    .local v3, "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->isSuccessfullResponse()Z

    move-result v5

    if-nez v5, :cond_2

    .line 949
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_3

    .line 954
    :cond_0
    :goto_1
    return-object v3

    .line 927
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;
    .end local v3    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .end local v4    # "url":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Add "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to blocked list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonymobile/rcs/core/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 954
    :catch_0
    move-exception v1

    .line 956
    .local v1, "e":Lcom/sonymobile/rcs/core/CoreException;
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_4

    :goto_2
    const/4 v5, 0x0

    .line 959
    return-object v5

    .line 945
    .end local v1    # "e":Lcom/sonymobile/rcs/core/CoreException;
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v2    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;
    .restart local v3    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .restart local v4    # "url":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 946
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " has been added with success to blocked list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 950
    :cond_3
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t add "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to granted list: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->getResponseCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sonymobile/rcs/core/CoreException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 957
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;
    .end local v3    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .end local v4    # "url":Ljava/lang/String;
    .restart local v1    # "e":Lcom/sonymobile/rcs/core/CoreException;
    :cond_4
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t add "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to blocked list: unexpected exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public addContactToGrantedList(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .locals 8
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    .line 793
    :try_start_0
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_1

    .line 798
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/resource-lists/users/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/rcs/utils/HttpUtils;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/index/~~/resource-lists/list%5B@name=%22rcs%22%5D/entry%5B@uri=%22"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/sonymobile/rcs/utils/HttpUtils;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "%22%5D"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 804
    .local v4, "url":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<entry uri=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'></entry>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 807
    .local v0, "content":Ljava/lang/String;
    new-instance v2, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;

    const-string/jumbo v5, "application/xcap-el+xml"

    invoke-direct {v2, v4, v0, v5}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    .local v2, "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;
    invoke-direct {p0, v2}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->sendRequestToXDMS(Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    move-result-object v3

    .line 811
    .local v3, "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->isSuccessfullResponse()Z

    move-result v5

    if-nez v5, :cond_2

    .line 816
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_3

    .line 821
    :cond_0
    :goto_1
    return-object v3

    .line 794
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;
    .end local v3    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .end local v4    # "url":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Add "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to granted list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonymobile/rcs/core/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 821
    :catch_0
    move-exception v1

    .line 823
    .local v1, "e":Lcom/sonymobile/rcs/core/CoreException;
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_4

    :goto_2
    const/4 v5, 0x0

    .line 826
    return-object v5

    .line 812
    .end local v1    # "e":Lcom/sonymobile/rcs/core/CoreException;
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v2    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;
    .restart local v3    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .restart local v4    # "url":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 813
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " has been added with success to granted list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 817
    :cond_3
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t add "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to granted list: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->getResponseCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sonymobile/rcs/core/CoreException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 824
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;
    .end local v3    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .end local v4    # "url":Ljava/lang/String;
    .restart local v1    # "e":Lcom/sonymobile/rcs/core/CoreException;
    :cond_4
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t add "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to granted list: unexpected exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public addContactToRevokedList(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .locals 8
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    .line 1059
    :try_start_0
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1064
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "/resource-lists/users/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/rcs/utils/HttpUtils;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "/index/~~/resource-lists/list%5B@name=%22rcs_revokedcontacts%22%5D/entry%5B@uri=%22"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/sonymobile/rcs/utils/HttpUtils;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "%22%5D"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1070
    .local v4, "url":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<entry uri=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\'></entry>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1073
    .local v0, "content":Ljava/lang/String;
    new-instance v2, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;

    const-string/jumbo v5, "application/xcap-el+xml"

    invoke-direct {v2, v4, v0, v5}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    .local v2, "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;
    invoke-direct {p0, v2}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->sendRequestToXDMS(Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    move-result-object v3

    .line 1077
    .local v3, "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->isSuccessfullResponse()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1082
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1087
    :cond_0
    :goto_1
    return-object v3

    .line 1060
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;
    .end local v3    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .end local v4    # "url":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Add "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to revoked list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonymobile/rcs/core/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1087
    :catch_0
    move-exception v1

    .line 1089
    .local v1, "e":Lcom/sonymobile/rcs/core/CoreException;
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_4

    :goto_2
    const/4 v5, 0x0

    .line 1092
    return-object v5

    .line 1078
    .end local v1    # "e":Lcom/sonymobile/rcs/core/CoreException;
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v2    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;
    .restart local v3    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .restart local v4    # "url":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1079
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " has been added with success to revoked list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 1083
    :cond_3
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t add "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to revoked list: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->getResponseCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sonymobile/rcs/core/CoreException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1090
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;
    .end local v3    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .end local v4    # "url":Ljava/lang/String;
    .restart local v1    # "e":Lcom/sonymobile/rcs/core/CoreException;
    :cond_4
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t add "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " to revoked list: unexpected exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public deleteEndUserPhoto()Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .locals 7

    .prologue
    .line 1252
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1257
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/org.openmobilealliance.pres-content/users/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/rcs/utils/HttpUtils;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/oma_status-icon/rcs_status_icon"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1262
    .local v3, "url":Ljava/lang/String;
    new-instance v1, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpDeleteRequest;

    invoke-direct {v1, v3}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpDeleteRequest;-><init>(Ljava/lang/String;)V

    .line 1265
    .local v1, "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpDeleteRequest;
    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->sendRequestToXDMS(Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    move-result-object v2

    .line 1266
    .local v2, "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->isSuccessfullResponse()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1271
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1275
    :cond_0
    :goto_1
    return-object v2

    .line 1253
    .end local v1    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpDeleteRequest;
    .end local v2    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .end local v3    # "url":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Delete the end user photo"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonymobile/rcs/core/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1275
    :catch_0
    move-exception v0

    .line 1277
    .local v0, "e":Lcom/sonymobile/rcs/core/CoreException;
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_4

    :goto_2
    const/4 v4, 0x0

    .line 1280
    return-object v4

    .line 1267
    .end local v0    # "e":Lcom/sonymobile/rcs/core/CoreException;
    .restart local v1    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpDeleteRequest;
    .restart local v2    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .restart local v3    # "url":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1268
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Photo has been deleted with success"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 1272
    :cond_3
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t delete the photo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->getResponseCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sonymobile/rcs/core/CoreException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1278
    .end local v1    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpDeleteRequest;
    .end local v2    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .end local v3    # "url":Ljava/lang/String;
    .restart local v0    # "e":Lcom/sonymobile/rcs/core/CoreException;
    :cond_4
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t delete the photo: unexpected exception"

    invoke-virtual {v4, v5, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public downloadContactPhoto(Ljava/lang/String;Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "etag"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 1293
    :try_start_0
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_0

    :goto_0
    const-string/jumbo v8, "/org.openmobilealliance.pres-content"

    .line 1298
    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1301
    new-instance v6, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpGetRequest;

    invoke-direct {v6, p1}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpGetRequest;-><init>(Ljava/lang/String;)V

    .line 1304
    .local v6, "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpGetRequest;
    invoke-direct {p0, v6}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->sendRequestToXDMS(Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    move-result-object v7

    .line 1305
    .local v7, "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->isSuccessfullResponse()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1342
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_8

    .line 1346
    :goto_1
    return-object v11

    .line 1294
    .end local v6    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpGetRequest;
    .end local v7    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    :cond_0
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Download the photo at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1346
    :catch_0
    move-exception v3

    .line 1349
    .local v3, "e":Ljava/lang/Exception;
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_9

    .line 1352
    :goto_2
    return-object v11

    .line 1306
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v6    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpGetRequest;
    .restart local v7    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    :cond_1
    :try_start_1
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_2

    .line 1311
    :goto_3
    new-instance v4, Lorg/xml/sax/InputSource;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->getContent()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v8}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 1312
    .local v4, "input":Lorg/xml/sax/InputSource;
    new-instance v5, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapPhotoIconResponseParser;

    invoke-direct {v5, v4}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapPhotoIconResponseParser;-><init>(Lorg/xml/sax/InputSource;)V

    .line 1315
    .local v5, "parser":Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapPhotoIconResponseParser;
    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapPhotoIconResponseParser;->getData()[B

    move-result-object v1

    .line 1316
    .local v1, "data":[B
    if-nez v1, :cond_3

    .line 1336
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_7

    .line 1339
    :goto_4
    return-object v11

    .line 1307
    .end local v1    # "data":[B
    .end local v4    # "input":Lorg/xml/sax/InputSource;
    .end local v5    # "parser":Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapPhotoIconResponseParser;
    :cond_2
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "Download photo with success"

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_3

    .line 1317
    .restart local v1    # "data":[B
    .restart local v4    # "input":Lorg/xml/sax/InputSource;
    .restart local v5    # "parser":Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapPhotoIconResponseParser;
    :cond_3
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_4

    .line 1321
    :goto_5
    invoke-static {v1}, Lcom/sonymobile/rcs/utils/Base64;->decodeBase64([B)[B

    move-result-object v2

    .local v2, "dataArray":[B
    const/4 v8, 0x0

    .line 1324
    array-length v9, v2

    invoke-static {v2, v8, v9}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1325
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_5

    .line 1333
    return-object v11

    .line 1318
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "dataArray":[B
    :cond_4
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Received photo: encoding="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapPhotoIconResponseParser;->getEncoding()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", mime="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapPhotoIconResponseParser;->getMime()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", encoded size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_5

    .line 1326
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "dataArray":[B
    :cond_5
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_6

    .line 1331
    :goto_6
    new-instance v8, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v8, v2, v9, v10, p2}, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;-><init>([BIILjava/lang/String;)V

    return-object v8

    .line 1327
    :cond_6
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Photo width="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " height="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_6

    .line 1337
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "dataArray":[B
    :cond_7
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "Can\'t download the photo: photo is null"

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->warn(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1343
    .end local v1    # "data":[B
    .end local v4    # "input":Lorg/xml/sax/InputSource;
    .end local v5    # "parser":Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapPhotoIconResponseParser;
    :cond_8
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Can\'t download the photo: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->getResponseCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " error"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->warn(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1350
    .end local v6    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpGetRequest;
    .end local v7    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .restart local v3    # "e":Ljava/lang/Exception;
    :cond_9
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "Can\'t download the photo: unexpected exception"

    invoke-virtual {v8, v9, v3}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2
.end method

.method public getBlockedContacts()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1012
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1014
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1019
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "/resource-lists/users/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/rcs/utils/HttpUtils;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/index/~~/resource-lists/list%5B@name=%22rcs_blockedcontacts%22%5D"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1024
    .local v6, "url":Ljava/lang/String;
    new-instance v3, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpGetRequest;

    invoke-direct {v3, v6}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpGetRequest;-><init>(Ljava/lang/String;)V

    .line 1027
    .local v3, "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpGetRequest;
    invoke-direct {p0, v3}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->sendRequestToXDMS(Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    move-result-object v4

    .line 1028
    .local v4, "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->isSuccessfullResponse()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1038
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1048
    .end local v3    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpGetRequest;
    .end local v4    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .end local v6    # "url":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v5

    .line 1015
    :cond_1
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Get blocked contacts list"

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1047
    :catch_0
    move-exception v0

    .line 1044
    .local v0, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1045
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Can\'t get blocked contacts list: unexpected exception"

    invoke-virtual {v7, v8, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1029
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpGetRequest;
    .restart local v4    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .restart local v6    # "url":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1034
    :goto_2
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->getContent()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v7}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 1035
    .local v1, "input":Lorg/xml/sax/InputSource;
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapResponseParser;

    invoke-direct {v2, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapResponseParser;-><init>(Lorg/xml/sax/InputSource;)V

    .line 1036
    .local v2, "parser":Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapResponseParser;
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapResponseParser;->getUris()Ljava/util/List;

    move-result-object v5

    goto :goto_1

    .line 1030
    .end local v1    # "input":Lorg/xml/sax/InputSource;
    .end local v2    # "parser":Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapResponseParser;
    :cond_3
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Blocked contacts list has been read with success"

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_2

    .line 1039
    :cond_4
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Can\'t get blocked contacts list: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->getResponseCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " error"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getEndUserPhotoIconUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->xdmServerAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/org.openmobilealliance.pres-content/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/rcs/utils/HttpUtils;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/oma_status-icon/rcs_status_icon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGrantedContacts()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 879
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 881
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_1

    .line 886
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "/resource-lists/users/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/rcs/utils/HttpUtils;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/index/~~/resource-lists/list%5B@name=%22rcs%22%5D"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 891
    .local v6, "url":Ljava/lang/String;
    new-instance v3, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpGetRequest;

    invoke-direct {v3, v6}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpGetRequest;-><init>(Ljava/lang/String;)V

    .line 894
    .local v3, "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpGetRequest;
    invoke-direct {p0, v3}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->sendRequestToXDMS(Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    move-result-object v4

    .line 895
    .local v4, "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->isSuccessfullResponse()Z

    move-result v7

    if-nez v7, :cond_2

    .line 905
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_4

    .line 915
    .end local v3    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpGetRequest;
    .end local v4    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .end local v6    # "url":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v5

    .line 882
    :cond_1
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Get granted contacts list"

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 914
    :catch_0
    move-exception v0

    .line 911
    .local v0, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 912
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Can\'t get granted contacts list: unexpected exception"

    invoke-virtual {v7, v8, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 896
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpGetRequest;
    .restart local v4    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .restart local v6    # "url":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_3

    .line 901
    :goto_2
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->getContent()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v7}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 902
    .local v1, "input":Lorg/xml/sax/InputSource;
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapResponseParser;

    invoke-direct {v2, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapResponseParser;-><init>(Lorg/xml/sax/InputSource;)V

    .line 903
    .local v2, "parser":Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapResponseParser;
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapResponseParser;->getUris()Ljava/util/List;

    move-result-object v5

    goto :goto_1

    .line 897
    .end local v1    # "input":Lorg/xml/sax/InputSource;
    .end local v2    # "parser":Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapResponseParser;
    :cond_3
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Granted contacts list has been read with success"

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_2

    .line 906
    :cond_4
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Can\'t get granted contacts list: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->getResponseCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " error"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getRevokedContacts()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1145
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1147
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1152
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "/resource-lists/users/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/rcs/utils/HttpUtils;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/index/~~/resource-lists/list%5B@name=%22rcs_revokedcontacts%22%5D"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1157
    .local v6, "url":Ljava/lang/String;
    new-instance v3, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpGetRequest;

    invoke-direct {v3, v6}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpGetRequest;-><init>(Ljava/lang/String;)V

    .line 1160
    .local v3, "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpGetRequest;
    invoke-direct {p0, v3}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->sendRequestToXDMS(Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    move-result-object v4

    .line 1161
    .local v4, "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->isSuccessfullResponse()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1171
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1181
    .end local v3    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpGetRequest;
    .end local v4    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .end local v6    # "url":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v5

    .line 1148
    :cond_1
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Get revoked contacts list"

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1180
    :catch_0
    move-exception v0

    .line 1177
    .local v0, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1178
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Can\'t get revoked contacts list: unexpected exception"

    invoke-virtual {v7, v8, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1162
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpGetRequest;
    .restart local v4    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .restart local v6    # "url":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_3

    .line 1167
    :goto_2
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->getContent()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v7}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 1168
    .local v1, "input":Lorg/xml/sax/InputSource;
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapResponseParser;

    invoke-direct {v2, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapResponseParser;-><init>(Lorg/xml/sax/InputSource;)V

    .line 1169
    .local v2, "parser":Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapResponseParser;
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapResponseParser;->getUris()Ljava/util/List;

    move-result-object v5

    goto :goto_1

    .line 1163
    .end local v1    # "input":Lorg/xml/sax/InputSource;
    .end local v2    # "parser":Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XcapResponseParser;
    :cond_3
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Revoked contacts list has been read with success"

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_2

    .line 1172
    :cond_4
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Can\'t get revoked contacts list: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->getResponseCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " error"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public getXcapDocuments()Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .locals 7

    .prologue
    .line 403
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 408
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/org.openmobilealliance.xcap-directory/users/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/rcs/utils/HttpUtils;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/directory.xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 413
    .local v3, "url":Ljava/lang/String;
    new-instance v1, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpGetRequest;

    invoke-direct {v1, v3}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpGetRequest;-><init>(Ljava/lang/String;)V

    .line 416
    .local v1, "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpGetRequest;
    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->sendRequestToXDMS(Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    move-result-object v2

    .line 417
    .local v2, "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->isSuccessfullResponse()Z

    move-result v4

    if-nez v4, :cond_2

    .line 422
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_3

    .line 427
    :cond_0
    :goto_1
    return-object v2

    .line 404
    .end local v1    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpGetRequest;
    .end local v2    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .end local v3    # "url":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Get XCAP documents"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonymobile/rcs/core/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 427
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Lcom/sonymobile/rcs/core/CoreException;
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_4

    :goto_2
    const/4 v4, 0x0

    .line 432
    return-object v4

    .line 418
    .end local v0    # "e":Lcom/sonymobile/rcs/core/CoreException;
    .restart local v1    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpGetRequest;
    .restart local v2    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .restart local v3    # "url":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 419
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "XCAP documents has been read with success"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 423
    :cond_3
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t read XCAP documents: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->getResponseCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sonymobile/rcs/core/CoreException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 430
    .end local v1    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpGetRequest;
    .end local v2    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .end local v3    # "url":Ljava/lang/String;
    .restart local v0    # "e":Lcom/sonymobile/rcs/core/CoreException;
    :cond_4
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t read XCAP documents: unexpected exception"

    invoke-virtual {v4, v5, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public initialize()V
    .locals 7

    .prologue
    .line 337
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->getXcapDocuments()Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    move-result-object v4

    .line 338
    .local v4, "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    if-nez v4, :cond_1

    .line 394
    .end local v4    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    :cond_0
    :goto_0
    return-void

    .line 338
    .restart local v4    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    :cond_1
    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->isSuccessfullResponse()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 340
    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->getContent()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 341
    .local v2, "input":Lorg/xml/sax/InputSource;
    new-instance v3, Lcom/sonymobile/rcs/core/ims/service/presence/directory/XcapDirectoryParser;

    invoke-direct {v3, v2}, Lcom/sonymobile/rcs/core/ims/service/presence/directory/XcapDirectoryParser;-><init>(Lorg/xml/sax/InputSource;)V

    .line 342
    .local v3, "parser":Lcom/sonymobile/rcs/core/ims/service/presence/directory/XcapDirectoryParser;
    invoke-virtual {v3}, Lcom/sonymobile/rcs/core/ims/service/presence/directory/XcapDirectoryParser;->getDocuments()Ljava/util/Hashtable;

    move-result-object v5

    iput-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->documents:Ljava/util/Hashtable;

    .line 345
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->documents:Ljava/util/Hashtable;

    const-string/jumbo v6, "rls-services"

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;

    .line 346
    .local v1, "folder":Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;
    if-nez v1, :cond_7

    .line 347
    :cond_2
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_8

    .line 352
    :goto_1
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->setRcsList()Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    .line 360
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->documents:Ljava/util/Hashtable;

    const-string/jumbo v6, "resource-lists"

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "folder":Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;
    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;

    .line 361
    .restart local v1    # "folder":Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;
    if-nez v1, :cond_9

    .line 362
    :cond_4
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_a

    .line 367
    :goto_3
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->setResourcesList()Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    .line 375
    :cond_5
    :goto_4
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->documents:Ljava/util/Hashtable;

    const-string/jumbo v6, "org.openmobilealliance.pres-rules"

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "folder":Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;
    check-cast v1, Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;

    .line 376
    .restart local v1    # "folder":Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;
    if-nez v1, :cond_b

    .line 377
    :cond_6
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-nez v5, :cond_c

    .line 382
    :goto_5
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->setPresenceRules()Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 393
    .end local v1    # "folder":Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;
    .end local v2    # "input":Lorg/xml/sax/InputSource;
    .end local v3    # "parser":Lcom/sonymobile/rcs/core/ims/service/presence/directory/XcapDirectoryParser;
    .end local v4    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 391
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "Can\'t parse the XCAP directory document"

    invoke-virtual {v5, v6, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 346
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "folder":Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;
    .restart local v2    # "input":Lorg/xml/sax/InputSource;
    .restart local v3    # "parser":Lcom/sonymobile/rcs/core/ims/service/presence/directory/XcapDirectoryParser;
    .restart local v4    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    :cond_7
    :try_start_1
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;->getEntry()Lcom/sonymobile/rcs/core/ims/service/presence/directory/Entry;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 354
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 355
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "The rls-services document already exists"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_2

    .line 348
    :cond_8
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "The rls-services document does not exist"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 361
    :cond_9
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;->getEntry()Lcom/sonymobile/rcs/core/ims/service/presence/directory/Entry;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 369
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 370
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "The resource-lists document already exists"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_4

    .line 363
    :cond_a
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "The resource-lists document does not exist"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto :goto_3

    .line 376
    :cond_b
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/presence/directory/Folder;->getEntry()Lcom/sonymobile/rcs/core/ims/service/presence/directory/Entry;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 384
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 385
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "The org.openmobilealliance.pres-rules document already exists"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 378
    :cond_c
    iget-object v5, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v6, "The org.openmobilealliance.pres-rules document does not exist"

    invoke-virtual {v5, v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->debug(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method

.method public removeContactFromBlockedList(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .locals 7
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    .line 971
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 976
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/resource-lists/users/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/rcs/utils/HttpUtils;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/index/~~/resource-lists/list%5B@name=%22rcs_blockedcontacts%22%5D/entry%5B@uri=%22"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/sonymobile/rcs/utils/HttpUtils;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "%22%5D"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 982
    .local v3, "url":Ljava/lang/String;
    new-instance v1, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpDeleteRequest;

    invoke-direct {v1, v3}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpDeleteRequest;-><init>(Ljava/lang/String;)V

    .line 985
    .local v1, "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpDeleteRequest;
    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->sendRequestToXDMS(Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    move-result-object v2

    .line 986
    .local v2, "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->isSuccessfullResponse()Z

    move-result v4

    if-nez v4, :cond_2

    .line 991
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_3

    .line 996
    :cond_0
    :goto_1
    return-object v2

    .line 972
    .end local v1    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpDeleteRequest;
    .end local v2    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .end local v3    # "url":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Remove "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " from blocked list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonymobile/rcs/core/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 996
    :catch_0
    move-exception v0

    .line 998
    .local v0, "e":Lcom/sonymobile/rcs/core/CoreException;
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_4

    :goto_2
    const/4 v4, 0x0

    .line 1002
    return-object v4

    .line 987
    .end local v0    # "e":Lcom/sonymobile/rcs/core/CoreException;
    .restart local v1    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpDeleteRequest;
    .restart local v2    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .restart local v3    # "url":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 988
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " has been removed with success from blocked list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 992
    :cond_3
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t remove "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " from blocked list: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->getResponseCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sonymobile/rcs/core/CoreException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 999
    .end local v1    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpDeleteRequest;
    .end local v2    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .end local v3    # "url":Ljava/lang/String;
    .restart local v0    # "e":Lcom/sonymobile/rcs/core/CoreException;
    :cond_4
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t remove "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " from blocked list: unexpected exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public removeContactFromGrantedList(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .locals 7
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    .line 838
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 843
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/resource-lists/users/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/rcs/utils/HttpUtils;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/index/~~/resource-lists/list%5B@name=%22rcs%22%5D/entry%5B@uri=%22"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/sonymobile/rcs/utils/HttpUtils;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "%22%5D"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 849
    .local v3, "url":Ljava/lang/String;
    new-instance v1, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpDeleteRequest;

    invoke-direct {v1, v3}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpDeleteRequest;-><init>(Ljava/lang/String;)V

    .line 852
    .local v1, "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpDeleteRequest;
    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->sendRequestToXDMS(Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    move-result-object v2

    .line 853
    .local v2, "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->isSuccessfullResponse()Z

    move-result v4

    if-nez v4, :cond_2

    .line 858
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_3

    .line 863
    :cond_0
    :goto_1
    return-object v2

    .line 839
    .end local v1    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpDeleteRequest;
    .end local v2    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .end local v3    # "url":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Remove "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " from granted list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonymobile/rcs/core/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 863
    :catch_0
    move-exception v0

    .line 865
    .local v0, "e":Lcom/sonymobile/rcs/core/CoreException;
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_4

    :goto_2
    const/4 v4, 0x0

    .line 869
    return-object v4

    .line 854
    .end local v0    # "e":Lcom/sonymobile/rcs/core/CoreException;
    .restart local v1    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpDeleteRequest;
    .restart local v2    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .restart local v3    # "url":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 855
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " has been removed with success from granted list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 859
    :cond_3
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t remove "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " from granted list: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->getResponseCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sonymobile/rcs/core/CoreException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 866
    .end local v1    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpDeleteRequest;
    .end local v2    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .end local v3    # "url":Ljava/lang/String;
    .restart local v0    # "e":Lcom/sonymobile/rcs/core/CoreException;
    :cond_4
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t remove "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " from granted list: unexpected exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public removeContactFromRevokedList(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .locals 7
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    .line 1104
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1109
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/resource-lists/users/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/rcs/utils/HttpUtils;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/index/~~/resource-lists/list%5B@name=%22rcs_revokedcontacts%22%5D/entry%5B@uri=%22"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/sonymobile/rcs/utils/HttpUtils;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "%22%5D"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1115
    .local v3, "url":Ljava/lang/String;
    new-instance v1, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpDeleteRequest;

    invoke-direct {v1, v3}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpDeleteRequest;-><init>(Ljava/lang/String;)V

    .line 1118
    .local v1, "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpDeleteRequest;
    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->sendRequestToXDMS(Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    move-result-object v2

    .line 1119
    .local v2, "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->isSuccessfullResponse()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1124
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1129
    :cond_0
    :goto_1
    return-object v2

    .line 1105
    .end local v1    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpDeleteRequest;
    .end local v2    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .end local v3    # "url":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Remove "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " from revoked list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonymobile/rcs/core/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1129
    :catch_0
    move-exception v0

    .line 1131
    .local v0, "e":Lcom/sonymobile/rcs/core/CoreException;
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_4

    :goto_2
    const/4 v4, 0x0

    .line 1135
    return-object v4

    .line 1120
    .end local v0    # "e":Lcom/sonymobile/rcs/core/CoreException;
    .restart local v1    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpDeleteRequest;
    .restart local v2    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .restart local v3    # "url":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1121
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " has been removed with success from revoked list"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 1125
    :cond_3
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t remove "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " from revoked list: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->getResponseCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sonymobile/rcs/core/CoreException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1132
    .end local v1    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpDeleteRequest;
    .end local v2    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .end local v3    # "url":Ljava/lang/String;
    .restart local v0    # "e":Lcom/sonymobile/rcs/core/CoreException;
    :cond_4
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t remove "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " from revoked list: unexpected exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public setPresenceInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .locals 7
    .param p1, "info"    # Ljava/lang/String;

    .prologue
    .line 1364
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1369
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "/pidf-manipulation/users/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/rcs/utils/HttpUtils;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "/perm-presence"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1374
    .local v3, "url":Ljava/lang/String;
    new-instance v1, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;

    const-string/jumbo v4, "application/pidf+xml"

    invoke-direct {v1, v3, p1, v4}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    .local v1, "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;
    invoke-direct {p0, v1}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->sendRequestToXDMS(Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    move-result-object v2

    .line 1378
    .local v2, "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->isSuccessfullResponse()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1383
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1388
    :cond_0
    :goto_1
    return-object v2

    .line 1365
    .end local v1    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;
    .end local v2    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .end local v3    # "url":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Update presence info"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonymobile/rcs/core/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1388
    :catch_0
    move-exception v0

    .line 1390
    .local v0, "e":Lcom/sonymobile/rcs/core/CoreException;
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-nez v4, :cond_4

    :goto_2
    const/4 v4, 0x0

    .line 1393
    return-object v4

    .line 1379
    .end local v0    # "e":Lcom/sonymobile/rcs/core/CoreException;
    .restart local v1    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;
    .restart local v2    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .restart local v3    # "url":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v4}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1380
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Presence info has been updated with succes"

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 1384
    :cond_3
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Can\'t update the presence info: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->getResponseCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sonymobile/rcs/core/CoreException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1391
    .end local v1    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;
    .end local v2    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .end local v3    # "url":Ljava/lang/String;
    .restart local v0    # "e":Lcom/sonymobile/rcs/core/CoreException;
    :cond_4
    iget-object v4, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v5, "Can\'t update the presence info: unexpected exception"

    invoke-virtual {v4, v5, v0}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public setPresenceRules()Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .locals 11

    .prologue
    .line 691
    :try_start_0
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_1

    .line 696
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "/org.openmobilealliance.pres-rules/users/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/sonymobile/rcs/utils/HttpUtils;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/pres-rules"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 701
    .local v6, "url":Ljava/lang/String;
    sget-object v8, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v7

    .line 702
    .local v7, "user":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->xdmServerAddr:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/resource-lists/users/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/index/~~/resource-lists/list%5B@name=%22oma_blockedcontacts%22%5D"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "blockedList":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->xdmServerAddr:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/resource-lists/users/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "/index/~~/resource-lists/list%5B@name=%22oma_grantedcontacts%22%5D"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 706
    .local v3, "grantedList":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<cr:ruleset xmlns:ocp=\"urn:oma:xml:xdm:common-policy\" xmlns:pr=\"urn:ietf:params:xml:ns:pres-rules\" xmlns:cr=\"urn:ietf:params:xml:ns:common-policy\">\r\n<cr:rule id=\"wp_prs_allow_own\">\r\n <cr:conditions>\r\n  <cr:identity><cr:one id=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v9}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\"/></cr:identity>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " </cr:conditions>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " <cr:actions><pr:sub-handling>allow</pr:sub-handling></cr:actions>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " <cr:transformations>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "  <pr:provide-services><pr:all-services/></pr:provide-services>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "  <pr:provide-persons><pr:all-persons/></pr:provide-persons>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "  <pr:provide-devices><pr:all-devices/></pr:provide-devices>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "  <pr:provide-all-attributes/>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " </cr:transformations>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "</cr:rule>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "<cr:rule id=\"rcs_allow_services_anonymous\">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " <cr:conditions><ocp:anonymous-request/></cr:conditions>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " <cr:actions><pr:sub-handling>allow</pr:sub-handling></cr:actions>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " <cr:transformations>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "  <pr:provide-services><pr:all-services/></pr:provide-services>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "  <pr:provide-all-attributes/>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " </cr:transformations>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "</cr:rule>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "<cr:rule id=\"wp_prs_unlisted\">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " <cr:conditions><ocp:other-identity/></cr:conditions>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " <cr:actions><pr:sub-handling>confirm</pr:sub-handling></cr:actions>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "</cr:rule>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "<cr:rule id=\"wp_prs_grantedcontacts\">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " <cr:conditions>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " <ocp:external-list>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "  <ocp:entry anc=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\"/>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " </ocp:external-list>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " </cr:conditions>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " <cr:actions><pr:sub-handling>allow</pr:sub-handling></cr:actions>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " <cr:transformations>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "   <pr:provide-services><pr:all-services/></pr:provide-services>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "   <pr:provide-persons><pr:all-persons/></pr:provide-persons>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "   <pr:provide-devices><pr:all-devices/></pr:provide-devices>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "   <pr:provide-all-attributes/>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " </cr:transformations>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "</cr:rule>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "<cr:rule id=\"wp_prs_blockedcontacts\">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " <cr:conditions>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "  <ocp:external-list>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "  <ocp:entry anc=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\"/>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " </ocp:external-list>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " </cr:conditions>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " <cr:actions><pr:sub-handling>block</pr:sub-handling></cr:actions>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "</cr:rule>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "\r\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "</cr:ruleset>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 762
    .local v1, "content":Ljava/lang/String;
    new-instance v4, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;

    const-string/jumbo v8, "application/auth-policy+xml"

    invoke-direct {v4, v6, v1, v8}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    .local v4, "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;
    invoke-direct {p0, v4}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->sendRequestToXDMS(Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    move-result-object v5

    .line 766
    .local v5, "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->isSuccessfullResponse()Z

    move-result v8

    if-nez v8, :cond_2

    .line 771
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_3

    .line 776
    :cond_0
    :goto_1
    return-object v5

    .line 692
    .end local v0    # "blockedList":Ljava/lang/String;
    .end local v1    # "content":Ljava/lang/String;
    .end local v3    # "grantedList":Ljava/lang/String;
    .end local v4    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;
    .end local v5    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .end local v6    # "url":Ljava/lang/String;
    .end local v7    # "user":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "Set presence rules"

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonymobile/rcs/core/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 776
    :catch_0
    move-exception v2

    .line 778
    .local v2, "e":Lcom/sonymobile/rcs/core/CoreException;
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-nez v8, :cond_4

    :goto_2
    const/4 v8, 0x0

    .line 781
    return-object v8

    .line 767
    .end local v2    # "e":Lcom/sonymobile/rcs/core/CoreException;
    .restart local v0    # "blockedList":Ljava/lang/String;
    .restart local v1    # "content":Ljava/lang/String;
    .restart local v3    # "grantedList":Ljava/lang/String;
    .restart local v4    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;
    .restart local v5    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .restart local v6    # "url":Ljava/lang/String;
    .restart local v7    # "user":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 768
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "Presence rules has been set with success"

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 772
    :cond_3
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Can\'t set presence rules: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->getResponseCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " error"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sonymobile/rcs/core/CoreException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 779
    .end local v0    # "blockedList":Ljava/lang/String;
    .end local v1    # "content":Ljava/lang/String;
    .end local v3    # "grantedList":Ljava/lang/String;
    .end local v4    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;
    .end local v5    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .end local v6    # "url":Ljava/lang/String;
    .end local v7    # "user":Ljava/lang/String;
    .restart local v2    # "e":Lcom/sonymobile/rcs/core/CoreException;
    :cond_4
    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v9, "Can\'t set presence rules: unexpected exception"

    invoke-virtual {v8, v9, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public setRcsList()Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .locals 10

    .prologue
    .line 481
    :try_start_0
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_1

    .line 486
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "/rls-services/users/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/rcs/utils/HttpUtils;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/index"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 490
    .local v5, "url":Ljava/lang/String;
    sget-object v7, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v6

    .line 491
    .local v6, "user":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->xdmServerAddr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/resource-lists/users/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Lcom/sonymobile/rcs/utils/HttpUtils;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/index/~~/resource-lists/list%5B@name=%22rcs%22%5D"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 493
    .local v3, "resList":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<rls-services xmlns=\"urn:ietf:params:xml:ns:rls-services\" xmlns:rl=\"urn:ietf:params:xml:ns:resource-lists\">\r\n<service uri=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ";pres-list=rcs\">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "<resource-list>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</resource-list>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "<packages>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " <package>presence</package>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</packages>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</service></rls-services>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "content":Ljava/lang/String;
    new-instance v2, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;

    const-string/jumbo v7, "application/rls-services+xml"

    invoke-direct {v2, v5, v0, v7}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    .local v2, "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;
    invoke-direct {p0, v2}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->sendRequestToXDMS(Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    move-result-object v4

    .line 512
    .local v4, "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->isSuccessfullResponse()Z

    move-result v7

    if-nez v7, :cond_2

    .line 517
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_3

    .line 521
    :cond_0
    :goto_1
    return-object v4

    .line 482
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;
    .end local v3    # "resList":Ljava/lang/String;
    .end local v4    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .end local v5    # "url":Ljava/lang/String;
    .end local v6    # "user":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Set RCS list"

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonymobile/rcs/core/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 521
    :catch_0
    move-exception v1

    .line 523
    .local v1, "e":Lcom/sonymobile/rcs/core/CoreException;
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_4

    :goto_2
    const/4 v7, 0x0

    .line 526
    return-object v7

    .line 513
    .end local v1    # "e":Lcom/sonymobile/rcs/core/CoreException;
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v2    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;
    .restart local v3    # "resList":Ljava/lang/String;
    .restart local v4    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .restart local v5    # "url":Ljava/lang/String;
    .restart local v6    # "user":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 514
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "RCS list has been set with success"

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 518
    :cond_3
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Can\'t set RCS list: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->getResponseCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " error"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sonymobile/rcs/core/CoreException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 524
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;
    .end local v3    # "resList":Ljava/lang/String;
    .end local v4    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .end local v5    # "url":Ljava/lang/String;
    .end local v6    # "user":Ljava/lang/String;
    .restart local v1    # "e":Lcom/sonymobile/rcs/core/CoreException;
    :cond_4
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Can\'t set RCS list: unexpected exception"

    invoke-virtual {v7, v8, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public setResourcesList()Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .locals 10

    .prologue
    .line 576
    :try_start_0
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_1

    .line 581
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "/resource-lists/users/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/rcs/utils/HttpUtils;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/index"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 585
    .local v5, "url":Ljava/lang/String;
    sget-object v7, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v6

    .line 586
    .local v6, "user":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->xdmServerAddr:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/resource-lists/users/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Lcom/sonymobile/rcs/utils/HttpUtils;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "/index/~~/resource-lists/list%5B"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 588
    .local v3, "resList":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<resource-lists xmlns=\"urn:ietf:params:xml:ns:resource-lists\">\r\n<list name=\"oma_buddylist\">\r\n <external anchor=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "@name=%22rcs%22%5D\"/>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</list>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "<list name=\"oma_grantedcontacts\">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " <external anchor=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "@name=%22rcs%22%5D\"/>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</list>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "<list name=\"oma_blockedcontacts\">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " <external anchor=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "@name=%22rcs_blockedcontacts%22%5D\"/>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " <external anchor=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "@name=%22rcs_revokedcontacts%22%5D\"/>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</list>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "<list name=\"rcs\">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " <display-name>My presence buddies</display-name>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</list>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "<list name=\"rcs_blockedcontacts\">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " <display-name>My blocked contacts</display-name>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</list>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "<list name=\"rcs_revokedcontacts\">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " <display-name>My revoked contacts</display-name>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</list>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</resource-lists>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, "content":Ljava/lang/String;
    new-instance v2, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;

    const-string/jumbo v7, "application/resource-lists+xml"

    invoke-direct {v2, v5, v0, v7}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    .local v2, "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;
    invoke-direct {p0, v2}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->sendRequestToXDMS(Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    move-result-object v4

    .line 625
    .local v4, "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->isSuccessfullResponse()Z

    move-result v7

    if-nez v7, :cond_2

    .line 630
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_3

    .line 635
    :cond_0
    :goto_1
    return-object v4

    .line 577
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;
    .end local v3    # "resList":Ljava/lang/String;
    .end local v4    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .end local v5    # "url":Ljava/lang/String;
    .end local v6    # "user":Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Set resources list"

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonymobile/rcs/core/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 635
    :catch_0
    move-exception v1

    .line 637
    .local v1, "e":Lcom/sonymobile/rcs/core/CoreException;
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-nez v7, :cond_4

    :goto_2
    const/4 v7, 0x0

    .line 640
    return-object v7

    .line 626
    .end local v1    # "e":Lcom/sonymobile/rcs/core/CoreException;
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v2    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;
    .restart local v3    # "resList":Ljava/lang/String;
    .restart local v4    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .restart local v5    # "url":Ljava/lang/String;
    .restart local v6    # "user":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 627
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Resources list has been set with success"

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 631
    :cond_3
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Can\'t set resources list: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->getResponseCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " error"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sonymobile/rcs/core/CoreException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 638
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;
    .end local v3    # "resList":Ljava/lang/String;
    .end local v4    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .end local v5    # "url":Ljava/lang/String;
    .end local v6    # "user":Ljava/lang/String;
    .restart local v1    # "e":Lcom/sonymobile/rcs/core/CoreException;
    :cond_4
    iget-object v7, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v8, "Can\'t set resources list: unexpected exception"

    invoke-virtual {v7, v8, v1}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public uploadEndUserPhoto(Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .locals 9
    .param p1, "photo"    # Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;

    .prologue
    .line 1203
    :try_start_0
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1208
    :goto_0
    invoke-virtual {p1}, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->getContent()[B

    move-result-object v6

    invoke-static {v6}, Lcom/sonymobile/rcs/utils/Base64;->encodeBase64ToString([B)Ljava/lang/String;

    move-result-object v1

    .line 1209
    .local v1, "data":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<content xmlns=\"urn:oma:xml:prs:pres-content\">\r\n<mime-type>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/sonymobile/rcs/service/api/client/presence/PhotoIcon;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "</mime-type>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "<encoding>base64</encoding>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "<data>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "</data>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "</content>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1216
    .local v0, "content":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "/org.openmobilealliance.pres-content/users/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v7}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/sonymobile/rcs/utils/HttpUtils;->encodeURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/oma_status-icon/rcs_status_icon"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1221
    .local v5, "url":Ljava/lang/String;
    new-instance v3, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;

    const-string/jumbo v6, "application/vnd.oma.pres-content+xml"

    invoke-direct {v3, v5, v0, v6}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    .local v3, "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;
    invoke-direct {p0, v3}, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->sendRequestToXDMS(Lcom/sonymobile/rcs/core/ims/protocol/http/HttpRequest;)Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;

    move-result-object v4

    .line 1226
    .local v4, "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->isSuccessfullResponse()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1231
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1235
    :cond_0
    :goto_1
    return-object v4

    .line 1204
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "data":Ljava/lang/String;
    .end local v3    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;
    .end local v4    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .end local v5    # "url":Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Upload the end user photo"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sonymobile/rcs/core/CoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1235
    :catch_0
    move-exception v2

    .line 1237
    .local v2, "e":Lcom/sonymobile/rcs/core/CoreException;
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-nez v6, :cond_4

    :goto_2
    const/4 v6, 0x0

    .line 1240
    return-object v6

    .line 1227
    .end local v2    # "e":Lcom/sonymobile/rcs/core/CoreException;
    .restart local v0    # "content":Ljava/lang/String;
    .restart local v1    # "data":Ljava/lang/String;
    .restart local v3    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;
    .restart local v4    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .restart local v5    # "url":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    invoke-virtual {v6}, Lcom/sonymobile/rcs/utils/logger/Logger;->isActivated()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1228
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Photo has been uploaded with success"

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 1232
    :cond_3
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Can\'t upload the photo: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;->getResponseCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " error"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/utils/logger/Logger;->info(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/sonymobile/rcs/core/CoreException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1238
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "data":Ljava/lang/String;
    .end local v3    # "request":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpPutRequest;
    .end local v4    # "response":Lcom/sonymobile/rcs/core/ims/protocol/http/HttpResponse;
    .end local v5    # "url":Ljava/lang/String;
    .restart local v2    # "e":Lcom/sonymobile/rcs/core/CoreException;
    :cond_4
    iget-object v6, p0, Lcom/sonymobile/rcs/core/ims/service/presence/xdm/XdmManager;->logger:Lcom/sonymobile/rcs/utils/logger/Logger;

    const-string/jumbo v7, "Can\'t upload the photo: unexpected exception"

    invoke-virtual {v6, v7, v2}, Lcom/sonymobile/rcs/utils/logger/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method
