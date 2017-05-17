.class public Lgov2/nist/javax2/sip/stack/DefaultRouter;
.super Ljava/lang/Object;
.source "DefaultRouter.java"

# interfaces
.implements Ljavax2/sip/address/Router;


# instance fields
.field private defaultRoute:Ljavax2/sip/address/Hop;

.field private sipStack:Lgov2/nist/javax2/sip/SipStackImpl;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method private final createHop(Ljavax2/sip/address/SipURI;Ljavax2/sip/message/Request;)Ljavax2/sip/address/Hop;
    .locals 7
    .param p1, "sipUri"    # Ljavax2/sip/address/SipURI;
    .param p2, "request"    # Ljavax2/sip/message/Request;

    .prologue
    .line 272
    invoke-interface {p1}, Ljavax2/sip/address/SipURI;->isSecure()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {p1}, Ljavax2/sip/address/SipURI;->getTransportParam()Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, "transport":Ljava/lang/String;
    :goto_0
    if-eqz v3, :cond_1

    .line 282
    :goto_1
    invoke-interface {p1}, Ljavax2/sip/address/SipURI;->getPort()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    const-string/jumbo v5, "tls"

    .line 285
    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const/16 v2, 0x13c4

    .line 290
    .local v2, "port":I
    :goto_2
    invoke-interface {p1}, Ljavax2/sip/address/SipURI;->getMAddrParam()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_4

    invoke-interface {p1}, Ljavax2/sip/address/SipURI;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "host":Ljava/lang/String;
    :goto_3
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/DefaultRouter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/SipStackImpl;->getAddressResolver()Lgov2/nist/core/net/AddressResolver;

    move-result-object v0

    .line 292
    .local v0, "addressResolver":Lgov2/nist/core/net/AddressResolver;
    new-instance v5, Lgov2/nist/javax2/sip/stack/HopImpl;

    invoke-direct {v5, v1, v2, v3}, Lgov2/nist/javax2/sip/stack/HopImpl;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v5}, Lgov2/nist/core/net/AddressResolver;->resolveAddress(Ljavax2/sip/address/Hop;)Ljavax2/sip/address/Hop;

    move-result-object v5

    return-object v5

    .end local v0    # "addressResolver":Lgov2/nist/core/net/AddressResolver;
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "port":I
    .end local v3    # "transport":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "tls"

    goto :goto_0

    .restart local v3    # "transport":Ljava/lang/String;
    :cond_1
    const-string/jumbo v5, "Via"

    .line 275
    invoke-interface {p2, v5}, Ljavax2/sip/message/Request;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v4

    check-cast v4, Ljavax2/sip/header/ViaHeader;

    .line 276
    .local v4, "via":Ljavax2/sip/header/ViaHeader;
    invoke-interface {v4}, Ljavax2/sip/header/ViaHeader;->getTransport()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 283
    .end local v4    # "via":Ljavax2/sip/header/ViaHeader;
    :cond_2
    invoke-interface {p1}, Ljavax2/sip/address/SipURI;->getPort()I

    move-result v2

    .restart local v2    # "port":I
    goto :goto_2

    .end local v2    # "port":I
    :cond_3
    const/16 v2, 0x13c5

    .line 286
    .restart local v2    # "port":I
    goto :goto_2

    .line 290
    :cond_4
    invoke-interface {p1}, Ljavax2/sip/address/SipURI;->getMAddrParam()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method


# virtual methods
.method public fixStrictRouting(Lgov2/nist/javax2/sip/message/SIPRequest;)V
    .locals 8
    .param p1, "req"    # Lgov2/nist/javax2/sip/message/SIPRequest;

    .prologue
    .line 246
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getRouteHeaders()Lgov2/nist/javax2/sip/header/RouteList;

    move-result-object v4

    .line 247
    .local v4, "routes":Lgov2/nist/javax2/sip/header/RouteList;
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/header/RouteList;->getFirst()Ljavax2/sip/header/Header;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/header/Route;

    .line 248
    .local v1, "first":Lgov2/nist/javax2/sip/header/Route;
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/Route;->getAddress()Ljavax2/sip/address/Address;

    move-result-object v5

    invoke-interface {v5}, Ljavax2/sip/address/Address;->getURI()Ljavax2/sip/address/URI;

    move-result-object v2

    check-cast v2, Lgov2/nist/javax2/sip/address/SipUri;

    .line 249
    .local v2, "firstUri":Lgov2/nist/javax2/sip/address/SipUri;
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/header/RouteList;->removeFirst()V

    .line 252
    new-instance v0, Lgov2/nist/javax2/sip/address/AddressImpl;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/address/AddressImpl;-><init>()V

    .line 253
    .local v0, "addr":Lgov2/nist/javax2/sip/address/AddressImpl;
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getRequestURI()Ljavax2/sip/address/URI;

    move-result-object v5

    invoke-virtual {v0, v5}, Lgov2/nist/javax2/sip/address/AddressImpl;->setAddess(Ljavax2/sip/address/URI;)V

    .line 254
    new-instance v3, Lgov2/nist/javax2/sip/header/Route;

    invoke-direct {v3, v0}, Lgov2/nist/javax2/sip/header/Route;-><init>(Lgov2/nist/javax2/sip/address/AddressImpl;)V

    .line 256
    .local v3, "route":Lgov2/nist/javax2/sip/header/Route;
    invoke-virtual {v4, v3}, Lgov2/nist/javax2/sip/header/RouteList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    .line 257
    invoke-virtual {p1, v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->setRequestURI(Ljavax2/sip/address/URI;)V

    .line 258
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/DefaultRouter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 261
    :goto_0
    return-void

    .line 259
    :cond_0
    iget-object v5, p0, Lgov2/nist/javax2/sip/stack/DefaultRouter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "post: fixStrictRouting"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getNextHop(Ljavax2/sip/message/Request;)Ljavax2/sip/address/Hop;
    .locals 11
    .param p1, "request"    # Ljavax2/sip/message/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/SipException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    move-object v5, p1

    .line 156
    check-cast v5, Lgov2/nist/javax2/sip/message/SIPRequest;

    .line 158
    .local v5, "sipRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    invoke-virtual {v5}, Lgov2/nist/javax2/sip/message/SIPRequest;->getRequestLine()Lgov2/nist/javax2/sip/header/RequestLine;

    move-result-object v1

    .line 159
    .local v1, "requestLine":Lgov2/nist/javax2/sip/header/RequestLine;
    if-eqz v1, :cond_1

    .line 162
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/RequestLine;->getUri()Lgov2/nist/javax2/sip/address/GenericURI;

    move-result-object v2

    .line 163
    .local v2, "requestURI":Ljavax2/sip/address/URI;
    if-eqz v2, :cond_2

    .line 165
    invoke-virtual {v5}, Lgov2/nist/javax2/sip/message/SIPRequest;->getRouteHeaders()Lgov2/nist/javax2/sip/header/RouteList;

    move-result-object v4

    .line 180
    .local v4, "routes":Lgov2/nist/javax2/sip/header/RouteList;
    if-nez v4, :cond_3

    .line 204
    invoke-interface {v2}, Ljavax2/sip/address/URI;->isSipURI()Z

    move-result v8

    if-nez v8, :cond_8

    .line 215
    :cond_0
    iget-object v8, p0, Lgov2/nist/javax2/sip/stack/DefaultRouter;->defaultRoute:Ljavax2/sip/address/Hop;

    if-nez v8, :cond_a

    .line 220
    invoke-interface {v2}, Ljavax2/sip/address/URI;->isSipURI()Z

    move-result v8

    if-nez v8, :cond_c

    const-string/jumbo v8, "Unexpected non-sip URI"

    .line 232
    iget-object v9, p0, Lgov2/nist/javax2/sip/stack/DefaultRouter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v9}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v9

    invoke-static {v8, v9}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/String;Lgov2/nist/core/StackLogger;)V

    .line 234
    return-object v10

    .line 160
    .end local v2    # "requestURI":Ljavax2/sip/address/URI;
    .end local v4    # "routes":Lgov2/nist/javax2/sip/header/RouteList;
    :cond_1
    iget-object v8, p0, Lgov2/nist/javax2/sip/stack/DefaultRouter;->defaultRoute:Ljavax2/sip/address/Hop;

    return-object v8

    .line 163
    .restart local v2    # "requestURI":Ljavax2/sip/address/URI;
    :cond_2
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Bad message: Null requestURI"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 184
    .restart local v4    # "routes":Lgov2/nist/javax2/sip/header/RouteList;
    :cond_3
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/header/RouteList;->getFirst()Ljavax2/sip/header/Header;

    move-result-object v3

    check-cast v3, Lgov2/nist/javax2/sip/header/Route;

    .line 185
    .local v3, "route":Lgov2/nist/javax2/sip/header/Route;
    invoke-virtual {v3}, Lgov2/nist/javax2/sip/header/Route;->getAddress()Ljavax2/sip/address/Address;

    move-result-object v8

    invoke-interface {v8}, Ljavax2/sip/address/Address;->getURI()Ljavax2/sip/address/URI;

    move-result-object v7

    .line 186
    .local v7, "uri":Ljavax2/sip/address/URI;
    invoke-interface {v7}, Ljavax2/sip/address/URI;->isSipURI()Z

    move-result v8

    if-nez v8, :cond_4

    .line 201
    new-instance v8, Ljavax2/sip/SipException;

    const-string/jumbo v9, "First Route not a SIP URI"

    invoke-direct {v8, v9}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_4
    move-object v6, v7

    .line 187
    check-cast v6, Ljavax2/sip/address/SipURI;

    .line 188
    .local v6, "sipUri":Ljavax2/sip/address/SipURI;
    invoke-interface {v6}, Ljavax2/sip/address/SipURI;->hasLrParam()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 196
    :cond_5
    :goto_0
    invoke-direct {p0, v6, p1}, Lgov2/nist/javax2/sip/stack/DefaultRouter;->createHop(Ljavax2/sip/address/SipURI;Ljavax2/sip/message/Request;)Ljavax2/sip/address/Hop;

    move-result-object v0

    .line 197
    .local v0, "hop":Ljavax2/sip/address/Hop;
    iget-object v8, p0, Lgov2/nist/javax2/sip/stack/DefaultRouter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-nez v8, :cond_7

    .line 199
    :goto_1
    return-object v0

    .line 190
    .end local v0    # "hop":Ljavax2/sip/address/Hop;
    :cond_6
    invoke-virtual {p0, v5}, Lgov2/nist/javax2/sip/stack/DefaultRouter;->fixStrictRouting(Lgov2/nist/javax2/sip/message/SIPRequest;)V

    .line 191
    iget-object v8, p0, Lgov2/nist/javax2/sip/stack/DefaultRouter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 192
    iget-object v8, p0, Lgov2/nist/javax2/sip/stack/DefaultRouter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v8

    const-string/jumbo v9, "Route post processing fixed strict routing"

    invoke-interface {v8, v9}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_0

    .line 198
    .restart local v0    # "hop":Ljavax2/sip/address/Hop;
    :cond_7
    iget-object v8, p0, Lgov2/nist/javax2/sip/stack/DefaultRouter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "NextHop based on Route:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_1

    .end local v0    # "hop":Ljavax2/sip/address/Hop;
    .end local v3    # "route":Lgov2/nist/javax2/sip/header/Route;
    .end local v6    # "sipUri":Ljavax2/sip/address/SipURI;
    .end local v7    # "uri":Ljavax2/sip/address/URI;
    :cond_8
    move-object v8, v2

    .line 204
    check-cast v8, Ljavax2/sip/address/SipURI;

    invoke-interface {v8}, Ljavax2/sip/address/SipURI;->getMAddrParam()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 205
    check-cast v2, Ljavax2/sip/address/SipURI;

    .end local v2    # "requestURI":Ljavax2/sip/address/URI;
    invoke-direct {p0, v2, p1}, Lgov2/nist/javax2/sip/stack/DefaultRouter;->createHop(Ljavax2/sip/address/SipURI;Ljavax2/sip/message/Request;)Ljavax2/sip/address/Hop;

    move-result-object v0

    .line 206
    .restart local v0    # "hop":Ljavax2/sip/address/Hop;
    iget-object v8, p0, Lgov2/nist/javax2/sip/stack/DefaultRouter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-nez v8, :cond_9

    .line 213
    :goto_2
    return-object v0

    .line 207
    :cond_9
    iget-object v8, p0, Lgov2/nist/javax2/sip/stack/DefaultRouter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Using request URI maddr to route the request = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v0}, Ljavax2/sip/address/Hop;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_2

    .line 216
    .end local v0    # "hop":Ljavax2/sip/address/Hop;
    .restart local v2    # "requestURI":Ljavax2/sip/address/URI;
    :cond_a
    iget-object v8, p0, Lgov2/nist/javax2/sip/stack/DefaultRouter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-nez v8, :cond_b

    .line 219
    :goto_3
    iget-object v8, p0, Lgov2/nist/javax2/sip/stack/DefaultRouter;->defaultRoute:Ljavax2/sip/address/Hop;

    return-object v8

    .line 217
    :cond_b
    iget-object v8, p0, Lgov2/nist/javax2/sip/stack/DefaultRouter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Using outbound proxy to route the request = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lgov2/nist/javax2/sip/stack/DefaultRouter;->defaultRoute:Ljavax2/sip/address/Hop;

    invoke-interface {v10}, Ljavax2/sip/address/Hop;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_3

    .line 221
    :cond_c
    check-cast v2, Ljavax2/sip/address/SipURI;

    .end local v2    # "requestURI":Ljavax2/sip/address/URI;
    invoke-direct {p0, v2, p1}, Lgov2/nist/javax2/sip/stack/DefaultRouter;->createHop(Ljavax2/sip/address/SipURI;Ljavax2/sip/message/Request;)Ljavax2/sip/address/Hop;

    move-result-object v0

    .line 222
    .restart local v0    # "hop":Ljavax2/sip/address/Hop;
    if-nez v0, :cond_e

    .line 225
    :cond_d
    iget-object v8, p0, Lgov2/nist/javax2/sip/stack/DefaultRouter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-nez v8, :cond_f

    .line 228
    :goto_4
    return-object v0

    .line 222
    :cond_e
    iget-object v8, p0, Lgov2/nist/javax2/sip/stack/DefaultRouter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/SipStackImpl;->isLoggingEnabled()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 223
    iget-object v8, p0, Lgov2/nist/javax2/sip/stack/DefaultRouter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Used request-URI for nextHop = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v0}, Ljavax2/sip/address/Hop;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_4

    .line 226
    :cond_f
    iget-object v8, p0, Lgov2/nist/javax2/sip/stack/DefaultRouter;->sipStack:Lgov2/nist/javax2/sip/SipStackImpl;

    invoke-virtual {v8}, Lgov2/nist/javax2/sip/SipStackImpl;->getStackLogger()Lgov2/nist/core/StackLogger;

    move-result-object v8

    const-string/jumbo v9, "returning null hop -- loop detected"

    invoke-interface {v8, v9}, Lgov2/nist/core/StackLogger;->logDebug(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public getOutboundProxy()Ljavax2/sip/address/Hop;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lgov2/nist/javax2/sip/stack/DefaultRouter;->defaultRoute:Ljavax2/sip/address/Hop;

    return-object v0
.end method
