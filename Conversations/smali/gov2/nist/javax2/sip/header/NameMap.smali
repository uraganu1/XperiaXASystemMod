.class public Lgov2/nist/javax2/sip/header/NameMap;
.super Ljava/lang/Object;
.source "NameMap.java"

# interfaces
.implements Lgov2/nist/javax2/sip/header/SIPHeaderNames;


# static fields
.field static nameMap:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 45
    invoke-static {}, Lgov2/nist/javax2/sip/header/NameMap;->initializeNameMap()V

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClassFromName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .param p0, "headerName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 53
    sget-object v2, Lgov2/nist/javax2/sip/header/NameMap;->nameMap:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    .local v0, "className":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 58
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 55
    :cond_0
    return-object v4

    .line 58
    :catch_0
    move-exception v1

    .line 60
    .local v1, "ex":Ljava/lang/ClassNotFoundException;
    return-object v4
.end method

.method private static initializeNameMap()V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lgov2/nist/javax2/sip/header/NameMap;->nameMap:Ljava/util/Hashtable;

    const-string/jumbo v0, "Min-Expires"

    const-class v1, Lgov2/nist/javax2/sip/header/MinExpires;

    .line 80
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Error-Info"

    const-class v1, Lgov2/nist/javax2/sip/header/ErrorInfo;

    .line 82
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "MIME-Version"

    const-class v1, Lgov2/nist/javax2/sip/header/MimeVersion;

    .line 84
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "In-Reply-To"

    const-class v1, Lgov2/nist/javax2/sip/header/InReplyTo;

    .line 86
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Allow"

    const-class v1, Lgov2/nist/javax2/sip/header/Allow;

    .line 88
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Content-Language"

    const-class v1, Lgov2/nist/javax2/sip/header/ContentLanguage;

    .line 90
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Call-Info"

    const-class v1, Lgov2/nist/javax2/sip/header/CallInfo;

    .line 92
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "CSeq"

    const-class v1, Lgov2/nist/javax2/sip/header/CSeq;

    .line 94
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Alert-Info"

    const-class v1, Lgov2/nist/javax2/sip/header/AlertInfo;

    .line 96
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Accept-Encoding"

    const-class v1, Lgov2/nist/javax2/sip/header/AcceptEncoding;

    .line 98
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Accept"

    const-class v1, Lgov2/nist/javax2/sip/header/Accept;

    .line 100
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Accept-Language"

    const-class v1, Lgov2/nist/javax2/sip/header/AcceptLanguage;

    .line 102
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Record-Route"

    const-class v1, Lgov2/nist/javax2/sip/header/RecordRoute;

    .line 104
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Timestamp"

    const-class v1, Lgov2/nist/javax2/sip/header/TimeStamp;

    .line 106
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "To"

    const-class v1, Lgov2/nist/javax2/sip/header/To;

    .line 108
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Via"

    const-class v1, Lgov2/nist/javax2/sip/header/Via;

    .line 110
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "From"

    const-class v1, Lgov2/nist/javax2/sip/header/From;

    .line 112
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Call-ID"

    const-class v1, Lgov2/nist/javax2/sip/header/CallID;

    .line 114
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Authorization"

    const-class v1, Lgov2/nist/javax2/sip/header/Authorization;

    .line 116
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Proxy-Authenticate"

    const-class v1, Lgov2/nist/javax2/sip/header/ProxyAuthenticate;

    .line 118
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Server"

    const-class v1, Lgov2/nist/javax2/sip/header/Server;

    .line 120
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Unsupported"

    const-class v1, Lgov2/nist/javax2/sip/header/Unsupported;

    .line 122
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Retry-After"

    const-class v1, Lgov2/nist/javax2/sip/header/RetryAfter;

    .line 124
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Content-Type"

    const-class v1, Lgov2/nist/javax2/sip/header/ContentType;

    .line 126
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Content-Encoding"

    const-class v1, Lgov2/nist/javax2/sip/header/ContentEncoding;

    .line 128
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Content-Length"

    const-class v1, Lgov2/nist/javax2/sip/header/ContentLength;

    .line 130
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Route"

    const-class v1, Lgov2/nist/javax2/sip/header/Route;

    .line 132
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Contact"

    const-class v1, Lgov2/nist/javax2/sip/header/Contact;

    .line 134
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "WWW-Authenticate"

    const-class v1, Lgov2/nist/javax2/sip/header/WWWAuthenticate;

    .line 136
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Max-Forwards"

    const-class v1, Lgov2/nist/javax2/sip/header/MaxForwards;

    .line 138
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Organization"

    const-class v1, Lgov2/nist/javax2/sip/header/Organization;

    .line 140
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Proxy-Authorization"

    const-class v1, Lgov2/nist/javax2/sip/header/ProxyAuthorization;

    .line 142
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Proxy-Require"

    const-class v1, Lgov2/nist/javax2/sip/header/ProxyRequire;

    .line 144
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Require"

    const-class v1, Lgov2/nist/javax2/sip/header/Require;

    .line 146
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Content-Disposition"

    const-class v1, Lgov2/nist/javax2/sip/header/ContentDisposition;

    .line 148
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Subject"

    const-class v1, Lgov2/nist/javax2/sip/header/Subject;

    .line 150
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "User-Agent"

    const-class v1, Lgov2/nist/javax2/sip/header/UserAgent;

    .line 152
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Warning"

    const-class v1, Lgov2/nist/javax2/sip/header/Warning;

    .line 154
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Priority"

    const-class v1, Lgov2/nist/javax2/sip/header/Priority;

    .line 156
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Date"

    const-class v1, Lgov2/nist/javax2/sip/header/SIPDateHeader;

    .line 158
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Expires"

    const-class v1, Lgov2/nist/javax2/sip/header/Expires;

    .line 160
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Supported"

    const-class v1, Lgov2/nist/javax2/sip/header/Supported;

    .line 162
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Reply-To"

    const-class v1, Lgov2/nist/javax2/sip/header/ReplyTo;

    .line 164
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Subscription-State"

    const-class v1, Lgov2/nist/javax2/sip/header/SubscriptionState;

    .line 166
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Event"

    const-class v1, Lgov2/nist/javax2/sip/header/Event;

    .line 168
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Allow-Events"

    const-class v1, Lgov2/nist/javax2/sip/header/AllowEvents;

    .line 170
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Referred-By"

    const-string/jumbo v1, "ReferredBy"

    .line 173
    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Session-Expires"

    const-string/jumbo v1, "SessionExpires"

    .line 174
    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Min-SE"

    const-string/jumbo v1, "MinSE"

    .line 175
    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Replaces"

    const-string/jumbo v1, "Replaces"

    .line 176
    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Join"

    const-string/jumbo v1, "Join"

    .line 178
    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "P-Access-Network-Info"

    const-class v1, Lgov2/nist/javax2/sip/header/ims/PAccessNetworkInfo;

    .line 182
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "P-Asserted-Identity"

    const-class v1, Lgov2/nist/javax2/sip/header/ims/PAssertedIdentity;

    .line 184
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "P-Associated-URI"

    const-class v1, Lgov2/nist/javax2/sip/header/ims/PAssociatedURI;

    .line 186
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "P-Called-Party-ID"

    const-class v1, Lgov2/nist/javax2/sip/header/ims/PCalledPartyID;

    .line 188
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "P-Charging-Function-Addresses"

    const-class v1, Lgov2/nist/javax2/sip/header/ims/PChargingFunctionAddresses;

    .line 190
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "P-Charging-Vector"

    const-class v1, Lgov2/nist/javax2/sip/header/ims/PChargingVector;

    .line 193
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "P-Media-Authorization"

    const-class v1, Lgov2/nist/javax2/sip/header/ims/PMediaAuthorization;

    .line 195
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Path"

    const-class v1, Lgov2/nist/javax2/sip/header/ims/Path;

    .line 197
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "P-Preferred-Identity"

    const-class v1, Lgov2/nist/javax2/sip/header/ims/PPreferredIdentity;

    .line 199
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Privacy"

    const-class v1, Lgov2/nist/javax2/sip/header/ims/Privacy;

    .line 201
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "Service-Route"

    const-class v1, Lgov2/nist/javax2/sip/header/ims/ServiceRoute;

    .line 203
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "P-Visited-Network-ID"

    const-class v1, Lgov2/nist/javax2/sip/header/ims/PVisitedNetworkID;

    .line 205
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lgov2/nist/javax2/sip/header/NameMap;->putNameMap(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method protected static putNameMap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "headerName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 49
    sget-object v0, Lgov2/nist/javax2/sip/header/NameMap;->nameMap:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    return-void
.end method
