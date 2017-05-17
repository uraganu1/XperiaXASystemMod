.class public final Lgov2/nist/javax2/sip/message/SIPRequest;
.super Lgov2/nist/javax2/sip/message/SIPMessage;
.source "SIPRequest.java"

# interfaces
.implements Ljavax2/sip/message/Request;
.implements Ljavax2/sip/message/Message;


# static fields
.field private static final nameTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x2ea3ad0be6d281afL

.field private static final targetRefreshMethods:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient inviteTransaction:Ljava/lang/Object;

.field private transient messageChannel:Ljava/lang/Object;

.field private requestLine:Lgov2/nist/javax2/sip/header/RequestLine;

.field private transient transactionPointer:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 94
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lgov2/nist/javax2/sip/message/SIPRequest;->targetRefreshMethods:Ljava/util/Set;

    .line 101
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lgov2/nist/javax2/sip/message/SIPRequest;->nameTable:Ljava/util/Hashtable;

    .line 108
    sget-object v0, Lgov2/nist/javax2/sip/message/SIPRequest;->targetRefreshMethods:Ljava/util/Set;

    const-string/jumbo v1, "INVITE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lgov2/nist/javax2/sip/message/SIPRequest;->targetRefreshMethods:Ljava/util/Set;

    const-string/jumbo v1, "UPDATE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lgov2/nist/javax2/sip/message/SIPRequest;->targetRefreshMethods:Ljava/util/Set;

    const-string/jumbo v1, "SUBSCRIBE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lgov2/nist/javax2/sip/message/SIPRequest;->targetRefreshMethods:Ljava/util/Set;

    const-string/jumbo v1, "NOTIFY"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lgov2/nist/javax2/sip/message/SIPRequest;->targetRefreshMethods:Ljava/util/Set;

    const-string/jumbo v1, "REFER"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "INVITE"

    .line 114
    invoke-static {v0}, Lgov2/nist/javax2/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    const-string/jumbo v0, "BYE"

    .line 115
    invoke-static {v0}, Lgov2/nist/javax2/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    const-string/jumbo v0, "CANCEL"

    .line 116
    invoke-static {v0}, Lgov2/nist/javax2/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    const-string/jumbo v0, "ACK"

    .line 117
    invoke-static {v0}, Lgov2/nist/javax2/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    const-string/jumbo v0, "PRACK"

    .line 118
    invoke-static {v0}, Lgov2/nist/javax2/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    const-string/jumbo v0, "INFO"

    .line 119
    invoke-static {v0}, Lgov2/nist/javax2/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    const-string/jumbo v0, "MESSAGE"

    .line 120
    invoke-static {v0}, Lgov2/nist/javax2/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    const-string/jumbo v0, "NOTIFY"

    .line 121
    invoke-static {v0}, Lgov2/nist/javax2/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    const-string/jumbo v0, "OPTIONS"

    .line 122
    invoke-static {v0}, Lgov2/nist/javax2/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    const-string/jumbo v0, "PRACK"

    .line 123
    invoke-static {v0}, Lgov2/nist/javax2/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    const-string/jumbo v0, "PUBLISH"

    .line 124
    invoke-static {v0}, Lgov2/nist/javax2/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    const-string/jumbo v0, "REFER"

    .line 125
    invoke-static {v0}, Lgov2/nist/javax2/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    const-string/jumbo v0, "REGISTER"

    .line 126
    invoke-static {v0}, Lgov2/nist/javax2/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    const-string/jumbo v0, "SUBSCRIBE"

    .line 127
    invoke-static {v0}, Lgov2/nist/javax2/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    const-string/jumbo v0, "UPDATE"

    .line 128
    invoke-static {v0}, Lgov2/nist/javax2/sip/message/SIPRequest;->putName(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Lgov2/nist/javax2/sip/message/SIPMessage;-><init>()V

    .line 185
    return-void
.end method

.method public static getCannonicalName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "method"    # Ljava/lang/String;

    .prologue
    .line 154
    sget-object v0, Lgov2/nist/javax2/sip/message/SIPRequest;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    return-object p0

    .line 155
    :cond_0
    sget-object v0, Lgov2/nist/javax2/sip/message/SIPRequest;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static isDialogCreating(Ljava/lang/String;)Z
    .locals 1
    .param p0, "ucaseMethod"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-static {p0}, Lgov2/nist/javax2/sip/stack/SIPTransactionStack;->isDialogCreated(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isTargetRefresh(Ljava/lang/String;)Z
    .locals 1
    .param p0, "ucaseMethod"    # Ljava/lang/String;

    .prologue
    .line 136
    sget-object v0, Lgov2/nist/javax2/sip/message/SIPRequest;->targetRefreshMethods:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final mustCopyRR(I)Z
    .locals 2
    .param p1, "code"    # I

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x64

    .line 728
    if-gt p1, v1, :cond_1

    .line 731
    :cond_0
    return v0

    :cond_1
    const/16 v1, 0x12c

    .line 728
    if-ge p1, v1, :cond_0

    .line 729
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->isDialogCreating(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    :goto_0
    return v0

    :cond_3
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getToTag()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static putName(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 104
    sget-object v0, Lgov2/nist/javax2/sip/message/SIPRequest;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method


# virtual methods
.method public checkHeaders()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const-string/jumbo v0, "Missing a required header : "

    .line 217
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 220
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTo()Ljavax2/sip/header/ToHeader;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 224
    iget-object v3, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->callIdHeader:Lgov2/nist/javax2/sip/header/CallID;

    if-nez v3, :cond_3

    .line 226
    :cond_0
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "Call-ID"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 218
    :cond_1
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "CSeq"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 221
    :cond_2
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "To"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 224
    :cond_3
    iget-object v3, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->callIdHeader:Lgov2/nist/javax2/sip/header/CallID;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->callIdHeader:Lgov2/nist/javax2/sip/header/CallID;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 228
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getFrom()Ljavax2/sip/header/FromHeader;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 231
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getViaHeaders()Lgov2/nist/javax2/sip/header/ViaList;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 234
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMaxForwards()Ljavax2/sip/header/MaxForwardsHeader;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 238
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTopmostVia()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 240
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "NOTIFY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 247
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "PUBLISH"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 270
    :cond_4
    iget-object v3, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->requestLine:Lgov2/nist/javax2/sip/header/RequestLine;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "INVITE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 273
    :cond_5
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getContactHeader()Lgov2/nist/javax2/sip/header/Contact;

    move-result-object v3

    if-eqz v3, :cond_11

    .line 281
    :cond_6
    iget-object v3, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->requestLine:Lgov2/nist/javax2/sip/header/RequestLine;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/header/RequestLine;->getUri()Lgov2/nist/javax2/sip/address/GenericURI;

    move-result-object v3

    instance-of v3, v3, Lgov2/nist/javax2/sip/address/SipUri;

    if-nez v3, :cond_12

    .line 295
    :cond_7
    :goto_0
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getContactHeader()Lgov2/nist/javax2/sip/header/Contact;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 302
    :goto_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->requestLine:Lgov2/nist/javax2/sip/header/RequestLine;

    if-nez v3, :cond_16

    .line 308
    :cond_8
    return-void

    .line 229
    :cond_9
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "From"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 232
    :cond_a
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "Via"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 235
    :cond_b
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "Max-Forwards"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 238
    :cond_c
    new-instance v3, Ljava/text/ParseException;

    const-string/jumbo v4, "No via header in request! "

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    :cond_d
    const-string/jumbo v3, "Subscription-State"

    .line 241
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v3

    if-eqz v3, :cond_e

    const-string/jumbo v3, "Event"

    .line 244
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v3

    if-nez v3, :cond_4

    .line 245
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "Event"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 242
    :cond_e
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "Subscription-State"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    :cond_f
    const-string/jumbo v3, "Event"

    .line 254
    invoke-virtual {p0, v3}, Lgov2/nist/javax2/sip/message/SIPRequest;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v3

    if-nez v3, :cond_4

    .line 255
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "Event"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 270
    :cond_10
    iget-object v3, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->requestLine:Lgov2/nist/javax2/sip/header/RequestLine;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SUBSCRIBE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->requestLine:Lgov2/nist/javax2/sip/header/RequestLine;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "REFER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_0

    .line 277
    :cond_11
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getToTag()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6

    .line 278
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "Contact"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 282
    :cond_12
    iget-object v3, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->requestLine:Lgov2/nist/javax2/sip/header/RequestLine;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/header/RequestLine;->getUri()Lgov2/nist/javax2/sip/address/GenericURI;

    move-result-object v3

    check-cast v3, Lgov2/nist/javax2/sip/address/SipUri;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/address/SipUri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .local v1, "scheme":Ljava/lang/String;
    const-string/jumbo v3, "sips"

    .line 283
    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 284
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getContactHeader()Lgov2/nist/javax2/sip/header/Contact;

    move-result-object v3

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/header/Contact;->getAddress()Ljavax2/sip/address/Address;

    move-result-object v3

    invoke-interface {v3}, Ljavax2/sip/address/Address;->getURI()Ljavax2/sip/address/URI;

    move-result-object v2

    check-cast v2, Lgov2/nist/javax2/sip/address/SipUri;

    .line 285
    .local v2, "sipUri":Lgov2/nist/javax2/sip/address/SipUri;
    invoke-virtual {v2}, Lgov2/nist/javax2/sip/address/SipUri;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "sips"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 286
    new-instance v3, Ljava/text/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Scheme for contact should be sips:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 295
    .end local v1    # "scheme":Ljava/lang/String;
    .end local v2    # "sipUri":Lgov2/nist/javax2/sip/address/SipUri;
    :cond_13
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "INVITE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 299
    :cond_14
    new-instance v3, Ljava/text/ParseException;

    const-string/jumbo v4, "Contact Header is Mandatory for a SIP INVITE"

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 295
    :cond_15
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "REFER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SUBSCRIBE"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto/16 :goto_1

    .line 302
    :cond_16
    iget-object v3, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->requestLine:Lgov2/nist/javax2/sip/header/RequestLine;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax2/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->requestLine:Lgov2/nist/javax2/sip/header/RequestLine;

    invoke-virtual {v3}, Lgov2/nist/javax2/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v4

    invoke-interface {v4}, Ljavax2/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_8

    .line 304
    new-instance v3, Ljava/text/ParseException;

    const-string/jumbo v4, "CSEQ method mismatch with  Request-Line "

    invoke-direct {v3, v4, v6}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3
.end method

.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 471
    invoke-super {p0}, Lgov2/nist/javax2/sip/message/SIPMessage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/message/SIPRequest;

    .line 474
    .local v0, "retval":Lgov2/nist/javax2/sip/message/SIPRequest;
    iput-object v1, v0, Lgov2/nist/javax2/sip/message/SIPRequest;->transactionPointer:Ljava/lang/Object;

    .line 475
    iget-object v1, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->requestLine:Lgov2/nist/javax2/sip/header/RequestLine;

    if-nez v1, :cond_0

    .line 477
    :goto_0
    return-object v0

    .line 475
    :cond_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->requestLine:Lgov2/nist/javax2/sip/header/RequestLine;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/RequestLine;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/header/RequestLine;

    iput-object v1, v0, Lgov2/nist/javax2/sip/message/SIPRequest;->requestLine:Lgov2/nist/javax2/sip/header/RequestLine;

    goto :goto_0
.end method

.method public createCancelRequest()Lgov2/nist/javax2/sip/message/SIPRequest;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/SipException;
        }
    .end annotation

    .prologue
    .line 750
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "INVITE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 766
    new-instance v0, Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/message/SIPRequest;-><init>()V

    .line 767
    .local v0, "cancel":Lgov2/nist/javax2/sip/message/SIPRequest;
    iget-object v2, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->requestLine:Lgov2/nist/javax2/sip/header/RequestLine;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/header/RequestLine;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov2/nist/javax2/sip/header/RequestLine;

    invoke-virtual {v0, v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->setRequestLine(Lgov2/nist/javax2/sip/header/RequestLine;)V

    const-string/jumbo v2, "CANCEL"

    .line 768
    invoke-virtual {v0, v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    .line 769
    iget-object v2, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->callIdHeader:Lgov2/nist/javax2/sip/header/CallID;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/header/CallID;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax2/sip/header/Header;

    invoke-virtual {v0, v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->setHeader(Ljavax2/sip/header/Header;)V

    .line 770
    iget-object v2, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->toHeader:Lgov2/nist/javax2/sip/header/To;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/header/To;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax2/sip/header/Header;

    invoke-virtual {v0, v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->setHeader(Ljavax2/sip/header/Header;)V

    .line 771
    iget-object v2, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->cSeqHeader:Lgov2/nist/javax2/sip/header/CSeq;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/header/CSeq;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax2/sip/header/Header;

    invoke-virtual {v0, v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->setHeader(Ljavax2/sip/header/Header;)V

    .line 773
    :try_start_0
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v2

    const-string/jumbo v3, "CANCEL"

    invoke-interface {v2, v3}, Ljavax2/sip/header/CSeqHeader;->setMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    :goto_0
    iget-object v2, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->fromHeader:Lgov2/nist/javax2/sip/header/From;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/header/From;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax2/sip/header/Header;

    invoke-virtual {v0, v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->setHeader(Ljavax2/sip/header/Header;)V

    .line 779
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTopmostVia()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v2

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/header/Via;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax2/sip/header/Header;

    invoke-virtual {v0, v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->addFirst(Ljavax2/sip/header/Header;)V

    .line 780
    iget-object v2, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->maxForwardsHeader:Lgov2/nist/javax2/sip/header/MaxForwards;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/header/MaxForwards;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax2/sip/header/Header;

    invoke-virtual {v0, v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->setHeader(Ljavax2/sip/header/Header;)V

    .line 786
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getRouteHeaders()Lgov2/nist/javax2/sip/header/RouteList;

    move-result-object v2

    if-nez v2, :cond_1

    .line 789
    :goto_1
    invoke-static {}, Lgov2/nist/javax2/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax2/sip/header/UserAgentHeader;

    move-result-object v2

    if-nez v2, :cond_2

    .line 793
    :goto_2
    return-object v0

    .line 751
    .end local v0    # "cancel":Lgov2/nist/javax2/sip/message/SIPRequest;
    :cond_0
    new-instance v2, Ljavax2/sip/SipException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Attempt to create CANCEL for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 776
    .restart local v0    # "cancel":Lgov2/nist/javax2/sip/message/SIPRequest;
    :catch_0
    move-exception v1

    .line 775
    .local v1, "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .line 787
    .end local v1    # "e":Ljava/text/ParseException;
    :cond_1
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getRouteHeaders()Lgov2/nist/javax2/sip/header/RouteList;

    move-result-object v2

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/header/RouteList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov2/nist/javax2/sip/header/SIPHeaderList;

    invoke-virtual {v0, v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->setHeader(Ljavax2/sip/header/Header;)V

    goto :goto_1

    .line 790
    :cond_2
    invoke-static {}, Lgov2/nist/javax2/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax2/sip/header/UserAgentHeader;

    move-result-object v2

    invoke-virtual {v0, v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->setHeader(Ljavax2/sip/header/Header;)V

    goto :goto_2
.end method

.method public final createErrorAck(Lgov2/nist/javax2/sip/header/To;)Lgov2/nist/javax2/sip/message/SIPRequest;
    .locals 3
    .param p1, "responseToHeader"    # Lgov2/nist/javax2/sip/header/To;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/SipException;,
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 908
    new-instance v0, Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/message/SIPRequest;-><init>()V

    .line 909
    .local v0, "newRequest":Lgov2/nist/javax2/sip/message/SIPRequest;
    iget-object v1, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->requestLine:Lgov2/nist/javax2/sip/header/RequestLine;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/RequestLine;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/header/RequestLine;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->setRequestLine(Lgov2/nist/javax2/sip/header/RequestLine;)V

    const-string/jumbo v1, "ACK"

    .line 910
    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->setMethod(Ljava/lang/String;)V

    .line 911
    iget-object v1, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->callIdHeader:Lgov2/nist/javax2/sip/header/CallID;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/CallID;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax2/sip/header/Header;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->setHeader(Ljavax2/sip/header/Header;)V

    .line 912
    iget-object v1, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->maxForwardsHeader:Lgov2/nist/javax2/sip/header/MaxForwards;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/MaxForwards;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax2/sip/header/Header;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->setHeader(Ljavax2/sip/header/Header;)V

    .line 915
    iget-object v1, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->fromHeader:Lgov2/nist/javax2/sip/header/From;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/From;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax2/sip/header/Header;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->setHeader(Ljavax2/sip/header/Header;)V

    .line 916
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/header/To;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax2/sip/header/Header;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->setHeader(Ljavax2/sip/header/Header;)V

    .line 917
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTopmostVia()Lgov2/nist/javax2/sip/header/Via;

    move-result-object v1

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/Via;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax2/sip/header/Header;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->addFirst(Ljavax2/sip/header/Header;)V

    .line 918
    iget-object v1, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->cSeqHeader:Lgov2/nist/javax2/sip/header/CSeq;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/CSeq;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax2/sip/header/Header;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->setHeader(Ljavax2/sip/header/Header;)V

    .line 919
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v1

    const-string/jumbo v2, "ACK"

    invoke-interface {v1, v2}, Ljavax2/sip/header/CSeqHeader;->setMethod(Ljava/lang/String;)V

    .line 927
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getRouteHeaders()Lgov2/nist/javax2/sip/header/RouteList;

    move-result-object v1

    if-nez v1, :cond_0

    .line 930
    :goto_0
    invoke-static {}, Lgov2/nist/javax2/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax2/sip/header/UserAgentHeader;

    move-result-object v1

    if-nez v1, :cond_1

    .line 934
    :goto_1
    return-object v0

    .line 928
    :cond_0
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getRouteHeaders()Lgov2/nist/javax2/sip/header/RouteList;

    move-result-object v1

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/RouteList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/header/SIPHeaderList;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->setHeader(Lgov2/nist/javax2/sip/header/SIPHeaderList;)V

    goto :goto_0

    .line 931
    :cond_1
    invoke-static {}, Lgov2/nist/javax2/sip/message/MessageFactoryImpl;->getDefaultUserAgentHeader()Ljavax2/sip/header/UserAgentHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/message/SIPRequest;->setHeader(Ljavax2/sip/header/Header;)V

    goto :goto_1
.end method

.method public createResponse(I)Lgov2/nist/javax2/sip/message/SIPResponse;
    .locals 2
    .param p1, "statusCode"    # I

    .prologue
    .line 652
    invoke-static {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getReasonPhrase(I)Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, "reasonPhrase":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lgov2/nist/javax2/sip/message/SIPRequest;->createResponse(ILjava/lang/String;)Lgov2/nist/javax2/sip/message/SIPResponse;

    move-result-object v1

    return-object v1
.end method

.method public createResponse(ILjava/lang/String;)Lgov2/nist/javax2/sip/message/SIPResponse;
    .locals 9
    .param p1, "statusCode"    # I
    .param p2, "reasonPhrase"    # Ljava/lang/String;

    .prologue
    .line 680
    new-instance v3, Lgov2/nist/javax2/sip/message/SIPResponse;

    invoke-direct {v3}, Lgov2/nist/javax2/sip/message/SIPResponse;-><init>()V

    .line 682
    .local v3, "newResponse":Lgov2/nist/javax2/sip/message/SIPResponse;
    :try_start_0
    invoke-virtual {v3, p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->setStatusCode(I)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    if-nez p2, :cond_0

    .line 689
    invoke-static {p1}, Lgov2/nist/javax2/sip/message/SIPResponse;->getReasonPhrase(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lgov2/nist/javax2/sip/message/SIPResponse;->setReasonPhrase(Ljava/lang/String;)V

    .line 690
    :goto_0
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getHeaders()Ljava/util/Iterator;

    move-result-object v2

    .line 691
    .local v2, "headerIterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 708
    invoke-static {}, Lgov2/nist/javax2/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax2/sip/header/ServerHeader;

    move-result-object v6

    if-nez v6, :cond_6

    .line 712
    :goto_2
    invoke-virtual {v3}, Lgov2/nist/javax2/sip/message/SIPResponse;->getStatusCode()I

    move-result v6

    const/16 v7, 0x64

    if-eq v6, v7, :cond_7

    .line 717
    :goto_3
    invoke-static {}, Lgov2/nist/javax2/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax2/sip/header/ServerHeader;

    move-result-object v5

    .line 718
    .local v5, "server":Ljavax2/sip/header/ServerHeader;
    if-nez v5, :cond_8

    .line 721
    :goto_4
    return-object v3

    .line 685
    .end local v2    # "headerIterator":Ljava/util/Iterator;
    .end local v5    # "server":Ljavax2/sip/header/ServerHeader;
    :catch_0
    move-exception v1

    .line 684
    .local v1, "ex":Ljava/text/ParseException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Bad code "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 687
    .end local v1    # "ex":Ljava/text/ParseException;
    :cond_0
    invoke-virtual {v3, p2}, Lgov2/nist/javax2/sip/message/SIPResponse;->setReasonPhrase(Ljava/lang/String;)V

    goto :goto_0

    .line 692
    .restart local v2    # "headerIterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov2/nist/javax2/sip/header/SIPHeader;

    .line 693
    .local v4, "nextHeader":Lgov2/nist/javax2/sip/header/SIPHeader;
    instance-of v6, v4, Lgov2/nist/javax2/sip/header/From;

    if-eqz v6, :cond_3

    .line 702
    :cond_2
    :goto_5
    :try_start_1
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgov2/nist/javax2/sip/header/SIPHeader;

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lgov2/nist/javax2/sip/message/SIPResponse;->attachHeader(Lgov2/nist/javax2/sip/header/SIPHeader;Z)V
    :try_end_1
    .catch Lgov2/nist/javax2/sip/message/SIPDuplicateHeaderException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 705
    :catch_1
    move-exception v0

    .line 704
    .local v0, "e":Lgov2/nist/javax2/sip/message/SIPDuplicateHeaderException;
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/message/SIPDuplicateHeaderException;->printStackTrace()V

    goto :goto_1

    .line 693
    .end local v0    # "e":Lgov2/nist/javax2/sip/message/SIPDuplicateHeaderException;
    :cond_3
    instance-of v6, v4, Lgov2/nist/javax2/sip/header/To;

    if-nez v6, :cond_2

    instance-of v6, v4, Lgov2/nist/javax2/sip/header/ViaList;

    if-nez v6, :cond_2

    instance-of v6, v4, Lgov2/nist/javax2/sip/header/CallID;

    if-nez v6, :cond_2

    instance-of v6, v4, Lgov2/nist/javax2/sip/header/RecordRouteList;

    if-nez v6, :cond_5

    :cond_4
    instance-of v6, v4, Lgov2/nist/javax2/sip/header/CSeq;

    if-nez v6, :cond_2

    instance-of v6, v4, Lgov2/nist/javax2/sip/header/TimeStamp;

    if-nez v6, :cond_2

    goto :goto_1

    :cond_5
    invoke-direct {p0, p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->mustCopyRR(I)Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_5

    .line 709
    .end local v4    # "nextHeader":Lgov2/nist/javax2/sip/header/SIPHeader;
    :cond_6
    invoke-static {}, Lgov2/nist/javax2/sip/message/MessageFactoryImpl;->getDefaultServerHeader()Ljavax2/sip/header/ServerHeader;

    move-result-object v6

    invoke-virtual {v3, v6}, Lgov2/nist/javax2/sip/message/SIPResponse;->setHeader(Ljavax2/sip/header/Header;)V

    goto :goto_2

    .line 714
    :cond_7
    invoke-virtual {v3}, Lgov2/nist/javax2/sip/message/SIPResponse;->getTo()Ljavax2/sip/header/ToHeader;

    move-result-object v6

    const-string/jumbo v7, "tag"

    invoke-interface {v6, v7}, Ljavax2/sip/header/ToHeader;->removeParameter(Ljava/lang/String;)V

    goto :goto_3

    .line 719
    .restart local v5    # "server":Ljavax2/sip/header/ServerHeader;
    :cond_8
    invoke-virtual {v3, v5}, Lgov2/nist/javax2/sip/message/SIPResponse;->setHeader(Ljavax2/sip/header/Header;)V

    goto :goto_4
.end method

.method public encode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 429
    iget-object v1, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->requestLine:Lgov2/nist/javax2/sip/header/RequestLine;

    if-nez v1, :cond_0

    .line 432
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->isNullRequest()Z

    move-result v1

    if-nez v1, :cond_1

    .line 435
    invoke-super {p0}, Lgov2/nist/javax2/sip/message/SIPMessage;->encode()Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "retval":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 430
    .end local v0    # "retval":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->setRequestLineDefaults()V

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->requestLine:Lgov2/nist/javax2/sip/header/RequestLine;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/header/RequestLine;->encode()Ljava/lang/String;

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

    .end local v0    # "retval":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "\r\n\r\n"

    .line 433
    .restart local v0    # "retval":Ljava/lang/String;
    goto :goto_0
.end method

.method public encodeAsBytes(Ljava/lang/String;)[B
    .locals 7
    .param p1, "transport"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 612
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->isNullRequest()Z

    move-result v4

    if-nez v4, :cond_0

    .line 615
    iget-object v4, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->requestLine:Lgov2/nist/javax2/sip/header/RequestLine;

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    .line 620
    .local v2, "rlbytes":[B
    iget-object v4, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->requestLine:Lgov2/nist/javax2/sip/header/RequestLine;

    if-nez v4, :cond_2

    .line 627
    .end local v2    # "rlbytes":[B
    :goto_0
    invoke-super {p0, p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->encodeAsBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 628
    .local v3, "superbytes":[B
    array-length v4, v2

    array-length v5, v3

    add-int/2addr v4, v5

    new-array v1, v4, [B

    .line 629
    .local v1, "retval":[B
    array-length v4, v2

    invoke-static {v2, v6, v1, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 630
    array-length v4, v2

    array-length v5, v3

    invoke-static {v3, v6, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 631
    return-object v1

    .end local v1    # "retval":[B
    .end local v3    # "superbytes":[B
    :cond_0
    const-string/jumbo v4, "\r\n\r\n"

    .line 614
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    return-object v4

    .line 616
    :cond_1
    new-array v4, v6, [B

    return-object v4

    .line 622
    .restart local v2    # "rlbytes":[B
    :cond_2
    :try_start_0
    iget-object v4, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->requestLine:Lgov2/nist/javax2/sip/header/RequestLine;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/header/RequestLine;->encode()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .local v2, "rlbytes":[B
    goto :goto_0

    .line 625
    .local v2, "rlbytes":[B
    :catch_0
    move-exception v0

    .line 624
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v0}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 486
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 487
    check-cast v0, Lgov2/nist/javax2/sip/message/SIPRequest;

    .line 489
    .local v0, "that":Lgov2/nist/javax2/sip/message/SIPRequest;
    iget-object v2, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->requestLine:Lgov2/nist/javax2/sip/header/RequestLine;

    iget-object v3, v0, Lgov2/nist/javax2/sip/message/SIPRequest;->requestLine:Lgov2/nist/javax2/sip/header/RequestLine;

    invoke-virtual {v2, v3}, Lgov2/nist/javax2/sip/header/RequestLine;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    :goto_0
    return v1

    .line 486
    .end local v0    # "that":Lgov2/nist/javax2/sip/message/SIPRequest;
    :cond_1
    return v1

    .line 489
    .restart local v0    # "that":Lgov2/nist/javax2/sip/message/SIPRequest;
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
    .line 539
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCallId()Ljavax2/sip/header/CallIdHeader;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/CallID;

    .line 540
    .local v0, "cid":Lgov2/nist/javax2/sip/header/CallID;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 541
    .local v2, "retval":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getFrom()Ljavax2/sip/header/FromHeader;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/header/From;

    .line 542
    .local v1, "from":Lgov2/nist/javax2/sip/header/From;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getTo()Ljavax2/sip/header/ToHeader;

    move-result-object v3

    check-cast v3, Lgov2/nist/javax2/sip/header/To;

    .line 543
    .local v3, "to":Lgov2/nist/javax2/sip/header/To;
    if-eqz p1, :cond_1

    .line 556
    invoke-virtual {v3}, Lgov2/nist/javax2/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 561
    :goto_0
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    .line 566
    :cond_0
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 545
    :cond_1
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    .line 550
    :goto_2
    invoke-virtual {v3}, Lgov2/nist/javax2/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, ":"

    .line 551
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 552
    invoke-virtual {v3}, Lgov2/nist/javax2/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const-string/jumbo v4, ":"

    .line 546
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 547
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_3
    const-string/jumbo v4, ":"

    .line 557
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 558
    invoke-virtual {v3}, Lgov2/nist/javax2/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    const-string/jumbo v4, ":"

    .line 562
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 563
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public getFirstLine()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1095
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->requestLine:Lgov2/nist/javax2/sip/header/RequestLine;

    if-eqz v0, :cond_0

    .line 1098
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->requestLine:Lgov2/nist/javax2/sip/header/RequestLine;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/RequestLine;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1096
    :cond_0
    return-object v1
.end method

.method public getInviteTransaction()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->inviteTransaction:Ljava/lang/Object;

    return-object v0
.end method

.method public getMergeId()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1174
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getFromTag()Ljava/lang/String;

    move-result-object v2

    .line 1175
    .local v2, "fromTag":Ljava/lang/String;
    iget-object v4, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->cSeqHeader:Lgov2/nist/javax2/sip/header/CSeq;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/header/CSeq;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1176
    .local v1, "cseq":Ljava/lang/String;
    iget-object v4, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->callIdHeader:Lgov2/nist/javax2/sip/header/CallID;

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 1181
    .local v0, "callId":Ljava/lang/String;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getRequestURI()Ljavax2/sip/address/URI;

    move-result-object v4

    invoke-interface {v4}, Ljavax2/sip/address/URI;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1183
    .local v3, "requestUri":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1187
    return-object v5

    .line 1184
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public getMessageChannel()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1152
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->messageChannel:Ljava/lang/Object;

    return-object v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 415
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->requestLine:Lgov2/nist/javax2/sip/header/RequestLine;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->requestLine:Lgov2/nist/javax2/sip/header/RequestLine;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 416
    :cond_0
    return-object v1
.end method

.method public getRequestLine()Lgov2/nist/javax2/sip/header/RequestLine;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->requestLine:Lgov2/nist/javax2/sip/header/RequestLine;

    return-object v0
.end method

.method public getRequestURI()Ljavax2/sip/address/URI;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 354
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->requestLine:Lgov2/nist/javax2/sip/header/RequestLine;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->requestLine:Lgov2/nist/javax2/sip/header/RequestLine;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/RequestLine;->getUri()Lgov2/nist/javax2/sip/address/GenericURI;

    move-result-object v0

    return-object v0

    .line 355
    :cond_0
    return-object v1
.end method

.method public getTransaction()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1130
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->transactionPointer:Ljava/lang/Object;

    return-object v0
.end method

.method public setInviteTransaction(Ljava/lang/Object;)V
    .locals 0
    .param p1, "inviteTransaction"    # Ljava/lang/Object;

    .prologue
    .line 1195
    iput-object p1, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->inviteTransaction:Ljava/lang/Object;

    .line 1196
    return-void
.end method

.method public setMessageChannel(Ljava/lang/Object;)V
    .locals 0
    .param p1, "messageChannel"    # Ljava/lang/Object;

    .prologue
    .line 1162
    iput-object p1, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->messageChannel:Ljava/lang/Object;

    .line 1163
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 388
    if-eqz p1, :cond_0

    .line 389
    iget-object v1, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->requestLine:Lgov2/nist/javax2/sip/header/RequestLine;

    if-eqz v1, :cond_1

    .line 397
    :goto_0
    invoke-static {p1}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCannonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "meth":Ljava/lang/String;
    iget-object v1, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->requestLine:Lgov2/nist/javax2/sip/header/RequestLine;

    invoke-virtual {v1, v0}, Lgov2/nist/javax2/sip/header/RequestLine;->setMethod(Ljava/lang/String;)V

    .line 400
    iget-object v1, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->cSeqHeader:Lgov2/nist/javax2/sip/header/CSeq;

    if-nez v1, :cond_2

    .line 406
    :goto_1
    return-void

    .line 388
    .end local v0    # "meth":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "null method"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 390
    :cond_1
    new-instance v1, Lgov2/nist/javax2/sip/header/RequestLine;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/RequestLine;-><init>()V

    iput-object v1, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->requestLine:Lgov2/nist/javax2/sip/header/RequestLine;

    goto :goto_0

    .line 402
    .restart local v0    # "meth":Ljava/lang/String;
    :cond_2
    :try_start_0
    iget-object v1, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->cSeqHeader:Lgov2/nist/javax2/sip/header/CSeq;

    invoke-virtual {v1, v0}, Lgov2/nist/javax2/sip/header/CSeq;->setMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 404
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public setRequestLine(Lgov2/nist/javax2/sip/header/RequestLine;)V
    .locals 0
    .param p1, "requestLine"    # Lgov2/nist/javax2/sip/header/RequestLine;

    .prologue
    .line 177
    iput-object p1, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->requestLine:Lgov2/nist/javax2/sip/header/RequestLine;

    .line 178
    return-void
.end method

.method protected setRequestLineDefaults()V
    .locals 3

    .prologue
    .line 338
    iget-object v2, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->requestLine:Lgov2/nist/javax2/sip/header/RequestLine;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/header/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    .line 339
    .local v1, "method":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/CSeq;

    .line 341
    .local v0, "cseq":Lgov2/nist/javax2/sip/header/CSeq;
    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/CSeq;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lgov2/nist/javax2/sip/message/SIPRequest;->getCannonicalName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 343
    iget-object v2, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->requestLine:Lgov2/nist/javax2/sip/header/RequestLine;

    invoke-virtual {v2, v1}, Lgov2/nist/javax2/sip/header/RequestLine;->setMethod(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRequestURI(Ljavax2/sip/address/URI;)V
    .locals 2
    .param p1, "uri"    # Ljavax2/sip/address/URI;

    .prologue
    .line 371
    if-eqz p1, :cond_0

    .line 374
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->requestLine:Lgov2/nist/javax2/sip/header/RequestLine;

    if-eqz v0, :cond_1

    .line 377
    :goto_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->requestLine:Lgov2/nist/javax2/sip/header/RequestLine;

    check-cast p1, Lgov2/nist/javax2/sip/address/GenericURI;

    .end local p1    # "uri":Ljavax2/sip/address/URI;
    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/header/RequestLine;->setUri(Ljavax2/sip/address/URI;)V

    .line 378
    const/4 v0, 0x0

    iput-boolean v0, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->nullRequest:Z

    .line 379
    return-void

    .line 372
    .restart local p1    # "uri":Ljavax2/sip/address/URI;
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Null request URI"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 375
    :cond_1
    new-instance v0, Lgov2/nist/javax2/sip/header/RequestLine;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/RequestLine;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->requestLine:Lgov2/nist/javax2/sip/header/RequestLine;

    goto :goto_0
.end method

.method public setTransaction(Ljava/lang/Object;)V
    .locals 0
    .param p1, "transaction"    # Ljava/lang/Object;

    .prologue
    .line 1139
    iput-object p1, p0, Lgov2/nist/javax2/sip/message/SIPRequest;->transactionPointer:Ljava/lang/Object;

    .line 1140
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 460
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPRequest;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
