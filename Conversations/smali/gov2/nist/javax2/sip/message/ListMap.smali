.class Lgov2/nist/javax2/sip/message/ListMap;
.super Ljava/lang/Object;
.source "ListMap.java"


# static fields
.field private static headerListTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static initialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 54
    invoke-static {}, Lgov2/nist/javax2/sip/message/ListMap;->initializeListMap()V

    .line 55
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getList(Lgov2/nist/javax2/sip/header/SIPHeader;)Lgov2/nist/javax2/sip/header/SIPHeaderList;
    .locals 6
    .param p0, "sipHeader"    # Lgov2/nist/javax2/sip/header/SIPHeader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgov2/nist/javax2/sip/header/SIPHeader;",
            ")",
            "Lgov2/nist/javax2/sip/header/SIPHeaderList",
            "<",
            "Lgov2/nist/javax2/sip/header/SIPHeader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    sget-boolean v5, Lgov2/nist/javax2/sip/message/ListMap;->initialized:Z

    if-eqz v5, :cond_0

    .line 172
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 173
    .local v2, "headerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v5, Lgov2/nist/javax2/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    invoke-virtual {v5, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 174
    .local v3, "listClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov2/nist/javax2/sip/header/SIPHeaderList;

    .line 175
    .local v4, "shl":Lgov2/nist/javax2/sip/header/SIPHeaderList;, "Lgov2/nist/javax2/sip/header/SIPHeaderList<Lgov2/nist/javax2/sip/header/SIPHeader;>;"
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/SIPHeader;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgov2/nist/javax2/sip/header/SIPHeaderList;->setHeaderName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 176
    return-object v4

    .line 170
    .end local v2    # "headerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "listClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "shl":Lgov2/nist/javax2/sip/header/SIPHeaderList;, "Lgov2/nist/javax2/sip/header/SIPHeaderList<Lgov2/nist/javax2/sip/header/SIPHeader;>;"
    :cond_0
    invoke-static {}, Lgov2/nist/javax2/sip/message/ListMap;->initializeListMap()V

    goto :goto_0

    .line 176
    :catch_0
    move-exception v1

    .line 178
    .local v1, "ex":Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    .end local v1    # "ex":Ljava/lang/InstantiationException;
    :goto_1
    const/4 v5, 0x0

    .line 182
    return-object v5

    .line 181
    :catch_1
    move-exception v0

    .line 180
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method protected static hasList(Lgov2/nist/javax2/sip/header/SIPHeader;)Z
    .locals 3
    .param p0, "sipHeader"    # Lgov2/nist/javax2/sip/header/SIPHeader;

    .prologue
    const/4 v1, 0x0

    .line 141
    instance-of v2, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;

    if-nez v2, :cond_0

    .line 144
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 145
    .local v0, "headerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Lgov2/nist/javax2/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    :goto_0
    return v1

    .line 142
    .end local v0    # "headerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    return v1

    .restart local v0    # "headerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const/4 v1, 0x1

    .line 145
    goto :goto_0
.end method

.method private static initializeListMap()V
    .locals 3

    .prologue
    .line 62
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lgov2/nist/javax2/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    .line 63
    sget-object v0, Lgov2/nist/javax2/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov2/nist/javax2/sip/header/ExtensionHeaderImpl;

    const-class v2, Lgov2/nist/javax2/sip/header/ExtensionHeaderList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lgov2/nist/javax2/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov2/nist/javax2/sip/header/Contact;

    const-class v2, Lgov2/nist/javax2/sip/header/ContactList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lgov2/nist/javax2/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov2/nist/javax2/sip/header/ContentEncoding;

    const-class v2, Lgov2/nist/javax2/sip/header/ContentEncodingList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lgov2/nist/javax2/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov2/nist/javax2/sip/header/Via;

    const-class v2, Lgov2/nist/javax2/sip/header/ViaList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lgov2/nist/javax2/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov2/nist/javax2/sip/header/WWWAuthenticate;

    const-class v2, Lgov2/nist/javax2/sip/header/WWWAuthenticateList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lgov2/nist/javax2/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov2/nist/javax2/sip/header/Accept;

    const-class v2, Lgov2/nist/javax2/sip/header/AcceptList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lgov2/nist/javax2/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov2/nist/javax2/sip/header/AcceptEncoding;

    const-class v2, Lgov2/nist/javax2/sip/header/AcceptEncodingList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lgov2/nist/javax2/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov2/nist/javax2/sip/header/AcceptLanguage;

    const-class v2, Lgov2/nist/javax2/sip/header/AcceptLanguageList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lgov2/nist/javax2/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov2/nist/javax2/sip/header/ProxyRequire;

    const-class v2, Lgov2/nist/javax2/sip/header/ProxyRequireList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lgov2/nist/javax2/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov2/nist/javax2/sip/header/Route;

    const-class v2, Lgov2/nist/javax2/sip/header/RouteList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lgov2/nist/javax2/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov2/nist/javax2/sip/header/Require;

    const-class v2, Lgov2/nist/javax2/sip/header/RequireList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lgov2/nist/javax2/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov2/nist/javax2/sip/header/Warning;

    const-class v2, Lgov2/nist/javax2/sip/header/WarningList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lgov2/nist/javax2/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov2/nist/javax2/sip/header/Unsupported;

    const-class v2, Lgov2/nist/javax2/sip/header/UnsupportedList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lgov2/nist/javax2/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov2/nist/javax2/sip/header/AlertInfo;

    const-class v2, Lgov2/nist/javax2/sip/header/AlertInfoList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lgov2/nist/javax2/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov2/nist/javax2/sip/header/CallInfo;

    const-class v2, Lgov2/nist/javax2/sip/header/CallInfoList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lgov2/nist/javax2/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov2/nist/javax2/sip/header/ProxyAuthenticate;

    const-class v2, Lgov2/nist/javax2/sip/header/ProxyAuthenticateList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lgov2/nist/javax2/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov2/nist/javax2/sip/header/ProxyAuthorization;

    const-class v2, Lgov2/nist/javax2/sip/header/ProxyAuthorizationList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lgov2/nist/javax2/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov2/nist/javax2/sip/header/Authorization;

    const-class v2, Lgov2/nist/javax2/sip/header/AuthorizationList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lgov2/nist/javax2/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov2/nist/javax2/sip/header/Allow;

    const-class v2, Lgov2/nist/javax2/sip/header/AllowList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lgov2/nist/javax2/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov2/nist/javax2/sip/header/RecordRoute;

    const-class v2, Lgov2/nist/javax2/sip/header/RecordRouteList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lgov2/nist/javax2/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov2/nist/javax2/sip/header/ContentLanguage;

    const-class v2, Lgov2/nist/javax2/sip/header/ContentLanguageList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lgov2/nist/javax2/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov2/nist/javax2/sip/header/ErrorInfo;

    const-class v2, Lgov2/nist/javax2/sip/header/ErrorInfoList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lgov2/nist/javax2/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov2/nist/javax2/sip/header/Supported;

    const-class v2, Lgov2/nist/javax2/sip/header/SupportedList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lgov2/nist/javax2/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov2/nist/javax2/sip/header/InReplyTo;

    const-class v2, Lgov2/nist/javax2/sip/header/InReplyToList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lgov2/nist/javax2/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov2/nist/javax2/sip/header/ims/PAssociatedURI;

    const-class v2, Lgov2/nist/javax2/sip/header/ims/PAssociatedURIList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lgov2/nist/javax2/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov2/nist/javax2/sip/header/ims/PMediaAuthorization;

    const-class v2, Lgov2/nist/javax2/sip/header/ims/PMediaAuthorizationList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lgov2/nist/javax2/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov2/nist/javax2/sip/header/ims/Path;

    const-class v2, Lgov2/nist/javax2/sip/header/ims/PathList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lgov2/nist/javax2/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov2/nist/javax2/sip/header/ims/Privacy;

    const-class v2, Lgov2/nist/javax2/sip/header/ims/PrivacyList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lgov2/nist/javax2/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov2/nist/javax2/sip/header/ims/ServiceRoute;

    const-class v2, Lgov2/nist/javax2/sip/header/ims/ServiceRouteList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lgov2/nist/javax2/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;

    const-class v2, Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkIDList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lgov2/nist/javax2/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov2/nist/javax2/sip/header/ims/SecurityClient;

    const-class v2, Lgov2/nist/javax2/sip/header/ims/SecurityClientList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lgov2/nist/javax2/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov2/nist/javax2/sip/header/ims/SecurityServer;

    const-class v2, Lgov2/nist/javax2/sip/header/ims/SecurityServerList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lgov2/nist/javax2/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov2/nist/javax2/sip/header/ims/SecurityVerify;

    const-class v2, Lgov2/nist/javax2/sip/header/ims/SecurityVerifyList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lgov2/nist/javax2/sip/message/ListMap;->headerListTable:Ljava/util/Hashtable;

    const-class v1, Lgov2/nist/javax2/sip/header/ims/PAssertedIdentity;

    const-class v2, Lgov2/nist/javax2/sip/header/ims/PAssertedIdentityList;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const/4 v0, 0x1

    sput-boolean v0, Lgov2/nist/javax2/sip/message/ListMap;->initialized:Z

    .line 135
    return-void
.end method
