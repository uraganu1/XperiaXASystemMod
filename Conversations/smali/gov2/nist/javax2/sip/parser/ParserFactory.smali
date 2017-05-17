.class public Lgov2/nist/javax2/sip/parser/ParserFactory;
.super Ljava/lang/Object;
.source "ParserFactory.java"


# static fields
.field private static constructorArgs:[Ljava/lang/Class;

.field private static parserConstructorCache:Ljava/util/Hashtable;

.field private static parserTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lgov2/nist/javax2/sip/parser/HeaderParser;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 59
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    .line 60
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserConstructorCache:Ljava/util/Hashtable;

    const/4 v0, 0x1

    .line 61
    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->constructorArgs:[Ljava/lang/Class;

    .line 62
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->constructorArgs:[Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 63
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Reply-To"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/ReplyToParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "In-Reply-To"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/InReplyToParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Accept-Encoding"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/AcceptEncodingParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Accept-Language"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/AcceptLanguageParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "t"

    const-class v2, Lgov2/nist/javax2/sip/parser/ToParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "To"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/ToParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "From"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/FromParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "f"

    const-class v2, Lgov2/nist/javax2/sip/parser/FromParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "CSeq"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/CSeqParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Via"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/ViaParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "v"

    const-class v2, Lgov2/nist/javax2/sip/parser/ViaParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Contact"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/ContactParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "m"

    const-class v2, Lgov2/nist/javax2/sip/parser/ContactParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Content-Type"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/ContentTypeParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "c"

    const-class v2, Lgov2/nist/javax2/sip/parser/ContentTypeParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Content-Length"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/ContentLengthParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "l"

    const-class v2, Lgov2/nist/javax2/sip/parser/ContentLengthParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Authorization"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/AuthorizationParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "WWW-Authenticate"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/WWWAuthenticateParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Call-ID"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/CallIDParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "i"

    const-class v2, Lgov2/nist/javax2/sip/parser/CallIDParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Route"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/RouteParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Record-Route"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/RecordRouteParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Date"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/DateParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Proxy-Authorization"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/ProxyAuthorizationParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Proxy-Authenticate"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/ProxyAuthenticateParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Retry-After"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/RetryAfterParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Require"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/RequireParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Proxy-Require"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/ProxyRequireParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Timestamp"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/TimeStampParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Unsupported"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/UnsupportedParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "User-Agent"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/UserAgentParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Supported"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/SupportedParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "k"

    const-class v2, Lgov2/nist/javax2/sip/parser/SupportedParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Server"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/ServerParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Subject"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/SubjectParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "s"

    const-class v2, Lgov2/nist/javax2/sip/parser/SubjectParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Subscription-State"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/SubscriptionStateParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Max-Forwards"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/MaxForwardsParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "MIME-Version"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/MimeVersionParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Min-Expires"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/MinExpiresParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Organization"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/OrganizationParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Priority"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/PriorityParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "RAck"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/RAckParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "RSeq"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/RSeqParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Reason"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/ReasonParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Warning"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/WarningParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Expires"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/ExpiresParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Event"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/EventParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "o"

    const-class v2, Lgov2/nist/javax2/sip/parser/EventParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Error-Info"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/ErrorInfoParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Content-Language"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/ContentLanguageParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Content-Encoding"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/ContentEncodingParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "e"

    const-class v2, Lgov2/nist/javax2/sip/parser/ContentEncodingParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Content-Disposition"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/ContentDispositionParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Call-Info"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/CallInfoParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Authentication-Info"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/AuthenticationInfoParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Allow"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/AllowParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Allow-Events"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/AllowEventsParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "u"

    const-class v2, Lgov2/nist/javax2/sip/parser/AllowEventsParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Alert-Info"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/AlertInfoParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Accept"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/AcceptParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Refer-To"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/ReferToParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "r"

    const-class v2, Lgov2/nist/javax2/sip/parser/ReferToParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "SIP-ETag"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/SIPETagParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "SIP-If-Match"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/SIPIfMatchParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "P-Access-Network-Info"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/ims/PAccessNetworkInfoParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "P-Asserted-Identity"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/ims/PAssertedIdentityParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "P-Preferred-Identity"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/ims/PPreferredIdentityParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "P-Charging-Vector"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/ims/PChargingVectorParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "P-Charging-Function-Addresses"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/ims/PChargingFunctionAddressesParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "P-Media-Authorization"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/ims/PMediaAuthorizationParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Path"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/ims/PathParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Privacy"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/ims/PrivacyParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Service-Route"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/ims/ServiceRouteParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "P-Visited-Network-ID"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/ims/PVisitedNetworkIDParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "P-Associated-URI"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/ims/PAssociatedURIParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "P-Called-Party-ID"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/ims/PCalledPartyIDParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Security-Server"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/ims/SecurityServerParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Security-Client"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/ims/SecurityClientParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Security-Verify"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/ims/SecurityVerifyParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Referred-By"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/extensions/ReferredByParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "b"

    const-class v2, Lgov2/nist/javax2/sip/parser/extensions/ReferredByParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Session-Expires"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/extensions/SessionExpiresParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "x"

    const-class v2, Lgov2/nist/javax2/sip/parser/extensions/SessionExpiresParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Min-SE"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/extensions/MinSEParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Replaces"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/extensions/ReplacesParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "Join"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/extensions/JoinParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    const-string/jumbo v1, "References"

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lgov2/nist/javax2/sip/parser/extensions/ReferencesParser;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createParser(Ljava/lang/String;)Lgov2/nist/javax2/sip/parser/HeaderParser;
    .locals 11
    .param p0, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 235
    invoke-static {p0}, Lgov2/nist/javax2/sip/parser/Lexer;->getHeaderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 236
    .local v3, "headerName":Ljava/lang/String;
    invoke-static {p0}, Lgov2/nist/javax2/sip/parser/Lexer;->getHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 237
    .local v4, "headerValue":Ljava/lang/String;
    if-nez v3, :cond_1

    .line 238
    :cond_0
    new-instance v7, Ljava/text/ParseException;

    const-string/jumbo v8, "The header name or value is null"

    invoke-direct {v7, v8, v10}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v7

    .line 237
    :cond_1
    if-eqz v4, :cond_0

    .line 240
    sget-object v7, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserTable:Ljava/util/Hashtable;

    invoke-static {v3}, Lgov2/nist/javax2/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    .line 241
    .local v5, "parserClass":Ljava/lang/Class;
    if-nez v5, :cond_2

    .line 261
    new-instance v7, Lgov2/nist/javax2/sip/parser/HeaderParser;

    invoke-direct {v7, p0}, Lgov2/nist/javax2/sip/parser/HeaderParser;-><init>(Ljava/lang/String;)V

    return-object v7

    .line 243
    :cond_2
    :try_start_0
    sget-object v7, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserConstructorCache:Ljava/util/Hashtable;

    invoke-virtual {v7, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 244
    .local v1, "cons":Ljava/lang/reflect/Constructor;
    if-eqz v1, :cond_3

    :goto_0
    const/4 v7, 0x1

    .line 248
    new-array v0, v7, [Ljava/lang/Object;

    .local v0, "args":[Ljava/lang/Object;
    const/4 v7, 0x0

    .line 249
    aput-object p0, v0, v7

    .line 250
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgov2/nist/javax2/sip/parser/HeaderParser;

    .line 251
    .local v6, "retval":Lgov2/nist/javax2/sip/parser/HeaderParser;
    return-object v6

    .line 245
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v6    # "retval":Lgov2/nist/javax2/sip/parser/HeaderParser;
    :cond_3
    sget-object v7, Lgov2/nist/javax2/sip/parser/ParserFactory;->constructorArgs:[Ljava/lang/Class;

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 246
    sget-object v7, Lgov2/nist/javax2/sip/parser/ParserFactory;->parserConstructorCache:Ljava/util/Hashtable;

    invoke-virtual {v7, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 251
    .end local v1    # "cons":Ljava/lang/reflect/Constructor;
    :catch_0
    move-exception v2

    .line 254
    .local v2, "ex":Ljava/lang/Exception;
    invoke-static {v2}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 255
    return-object v9
.end method
