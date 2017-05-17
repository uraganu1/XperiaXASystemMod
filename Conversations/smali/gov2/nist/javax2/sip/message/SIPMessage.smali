.class public abstract Lgov2/nist/javax2/sip/message/SIPMessage;
.super Lgov2/nist/javax2/sip/message/MessageObject;
.source "SIPMessage.java"

# interfaces
.implements Ljavax2/sip/message/Message;


# static fields
.field private static final AUTHORIZATION_LOWERCASE:Ljava/lang/String;

.field private static final CONTACT_LOWERCASE:Ljava/lang/String;

.field private static final CONTENT_DISPOSITION_LOWERCASE:Ljava/lang/String;

.field private static final CONTENT_ENCODING_LOWERCASE:Ljava/lang/String;

.field private static final CONTENT_LANGUAGE_LOWERCASE:Ljava/lang/String;

.field private static final CONTENT_TYPE_LOWERCASE:Ljava/lang/String;

.field private static final ERROR_LOWERCASE:Ljava/lang/String;

.field private static final EXPIRES_LOWERCASE:Ljava/lang/String;

.field private static final RECORDROUTE_LOWERCASE:Ljava/lang/String;

.field private static final ROUTE_LOWERCASE:Ljava/lang/String;

.field private static final VIA_LOWERCASE:Ljava/lang/String;


# instance fields
.field protected applicationData:Ljava/lang/Object;

.field protected cSeqHeader:Lgov2/nist/javax2/sip/header/CSeq;

.field protected callIdHeader:Lgov2/nist/javax2/sip/header/CallID;

.field private contentEncodingCharset:Ljava/lang/String;

.field protected contentLengthHeader:Lgov2/nist/javax2/sip/header/ContentLength;

.field protected fromHeader:Lgov2/nist/javax2/sip/header/From;

.field protected headers:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lgov2/nist/javax2/sip/header/SIPHeader;",
            ">;"
        }
    .end annotation
.end field

.field protected maxForwardsHeader:Lgov2/nist/javax2/sip/header/MaxForwards;

.field private messageContent:Ljava/lang/String;

.field private messageContentBytes:[B

.field private messageContentObject:Ljava/lang/Object;

.field private nameTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lgov2/nist/javax2/sip/header/SIPHeader;",
            ">;"
        }
    .end annotation
.end field

.field protected nullRequest:Z

.field protected size:I

.field protected toHeader:Lgov2/nist/javax2/sip/header/To;

.field protected unrecognizedHeaders:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Content-Type"

    .line 923
    invoke-static {v0}, Lgov2/nist/javax2/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov2/nist/javax2/sip/message/SIPMessage;->CONTENT_TYPE_LOWERCASE:Ljava/lang/String;

    const-string/jumbo v0, "Error-Info"

    .line 951
    invoke-static {v0}, Lgov2/nist/javax2/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov2/nist/javax2/sip/message/SIPMessage;->ERROR_LOWERCASE:Ljava/lang/String;

    const-string/jumbo v0, "Contact"

    .line 962
    invoke-static {v0}, Lgov2/nist/javax2/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov2/nist/javax2/sip/message/SIPMessage;->CONTACT_LOWERCASE:Ljava/lang/String;

    const-string/jumbo v0, "Via"

    .line 988
    invoke-static {v0}, Lgov2/nist/javax2/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov2/nist/javax2/sip/message/SIPMessage;->VIA_LOWERCASE:Ljava/lang/String;

    const-string/jumbo v0, "Authorization"

    .line 1045
    invoke-static {v0}, Lgov2/nist/javax2/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov2/nist/javax2/sip/message/SIPMessage;->AUTHORIZATION_LOWERCASE:Ljava/lang/String;

    const-string/jumbo v0, "Route"

    .line 1076
    invoke-static {v0}, Lgov2/nist/javax2/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov2/nist/javax2/sip/message/SIPMessage;->ROUTE_LOWERCASE:Ljava/lang/String;

    const-string/jumbo v0, "Record-Route"

    .line 1117
    invoke-static {v0}, Lgov2/nist/javax2/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov2/nist/javax2/sip/message/SIPMessage;->RECORDROUTE_LOWERCASE:Ljava/lang/String;

    const-string/jumbo v0, "Content-Disposition"

    .line 1612
    invoke-static {v0}, Lgov2/nist/javax2/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov2/nist/javax2/sip/message/SIPMessage;->CONTENT_DISPOSITION_LOWERCASE:Ljava/lang/String;

    const-string/jumbo v0, "Content-Encoding"

    .line 1624
    invoke-static {v0}, Lgov2/nist/javax2/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov2/nist/javax2/sip/message/SIPMessage;->CONTENT_ENCODING_LOWERCASE:Ljava/lang/String;

    const-string/jumbo v0, "Content-Language"

    .line 1636
    invoke-static {v0}, Lgov2/nist/javax2/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov2/nist/javax2/sip/message/SIPMessage;->CONTENT_LANGUAGE_LOWERCASE:Ljava/lang/String;

    const-string/jumbo v0, "Expires"

    .line 1648
    invoke-static {v0}, Lgov2/nist/javax2/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgov2/nist/javax2/sip/message/SIPMessage;->EXPIRES_LOWERCASE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 536
    invoke-direct {p0}, Lgov2/nist/javax2/sip/message/MessageObject;-><init>()V

    .line 127
    invoke-static {}, Lgov2/nist/javax2/sip/message/MessageFactoryImpl;->getDefaultContentEncodingCharset()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->contentEncodingCharset:Ljava/lang/String;

    .line 537
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->unrecognizedHeaders:Ljava/util/LinkedList;

    .line 538
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 539
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    .line 541
    :try_start_0
    new-instance v0, Lgov2/nist/javax2/sip/header/ContentLength;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgov2/nist/javax2/sip/header/ContentLength;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lgov2/nist/javax2/sip/message/SIPMessage;->attachHeader(Lgov2/nist/javax2/sip/header/SIPHeader;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 544
    :goto_0
    return-void

    .line 543
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private attachHeader(Lgov2/nist/javax2/sip/header/SIPHeader;)V
    .locals 4
    .param p1, "h"    # Lgov2/nist/javax2/sip/header/SIPHeader;

    .prologue
    .line 552
    if-eqz p1, :cond_1

    .line 554
    :try_start_0
    instance-of v2, p1, Lgov2/nist/javax2/sip/header/SIPHeaderList;

    if-nez v2, :cond_2

    .line 560
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lgov2/nist/javax2/sip/message/SIPMessage;->attachHeader(Lgov2/nist/javax2/sip/header/SIPHeader;ZZ)V
    :try_end_0
    .catch Lgov2/nist/javax2/sip/message/SIPDuplicateHeaderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    :goto_0
    return-void

    .line 552
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "null header!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 555
    :cond_2
    :try_start_1
    move-object v0, p1

    check-cast v0, Lgov2/nist/javax2/sip/header/SIPHeaderList;

    move-object v1, v0

    .line 556
    .local v1, "hl":Lgov2/nist/javax2/sip/header/SIPHeaderList;, "Lgov2/nist/javax2/sip/header/SIPHeaderList<*>;"
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/SIPHeaderList;->isEmpty()Z
    :try_end_1
    .catch Lgov2/nist/javax2/sip/message/SIPDuplicateHeaderException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 557
    return-void

    .line 563
    .end local v1    # "hl":Lgov2/nist/javax2/sip/header/SIPHeaderList;, "Lgov2/nist/javax2/sip/header/SIPHeaderList<*>;"
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private computeContentLength(Ljava/lang/Object;)V
    .locals 3
    .param p1, "content"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 1329
    .local v1, "length":I
    if-nez p1, :cond_0

    .line 1344
    .end local p1    # "content":Ljava/lang/Object;
    :goto_0
    :try_start_0
    iget-object v2, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->contentLengthHeader:Lgov2/nist/javax2/sip/header/ContentLength;

    invoke-virtual {v2, v1}, Lgov2/nist/javax2/sip/header/ContentLength;->setContentLength(I)V
    :try_end_0
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1348
    :goto_1
    return-void

    .line 1330
    .restart local p1    # "content":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Ljava/lang/String;

    if-nez v2, :cond_1

    .line 1336
    instance-of v2, p1, [B

    if-nez v2, :cond_2

    .line 1339
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_0

    .line 1332
    :cond_1
    :try_start_1
    check-cast p1, Ljava/lang/String;

    .end local p1    # "content":Ljava/lang/Object;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v1, v2
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1335
    :catch_0
    move-exception v0

    .line 1334
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v0}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 1337
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    .restart local p1    # "content":Ljava/lang/Object;
    :cond_2
    check-cast p1, [B

    .end local p1    # "content":Ljava/lang/Object;
    check-cast p1, [B

    array-length v1, p1

    goto :goto_0

    .line 1347
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method private getHeaderLowerCase(Ljava/lang/String;)Ljavax2/sip/header/Header;
    .locals 3
    .param p1, "lowerCaseHeaderName"    # Ljava/lang/String;

    .prologue
    .line 905
    if-eqz p1, :cond_0

    .line 906
    iget-object v1, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/SIPHeader;

    .line 907
    .local v0, "sipHeader":Lgov2/nist/javax2/sip/header/SIPHeader;
    instance-of v1, v0, Lgov2/nist/javax2/sip/header/SIPHeaderList;

    if-nez v1, :cond_1

    .line 910
    return-object v0

    .line 905
    .end local v0    # "sipHeader":Lgov2/nist/javax2/sip/header/SIPHeader;
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "bad name"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 908
    .restart local v0    # "sipHeader":Lgov2/nist/javax2/sip/header/SIPHeader;
    :cond_1
    check-cast v0, Lgov2/nist/javax2/sip/header/SIPHeaderList;

    .end local v0    # "sipHeader":Lgov2/nist/javax2/sip/header/SIPHeader;
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/SIPHeaderList;->getFirst()Ljavax2/sip/header/Header;

    move-result-object v1

    return-object v1
.end method

.method private getSIPHeaderListLowerCase(Ljava/lang/String;)Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 1
    .param p1, "lowerCaseHeaderName"    # Ljava/lang/String;

    .prologue
    .line 1400
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/SIPHeader;

    return-object v0
.end method

.method public static isResponseHeader(Lgov2/nist/javax2/sip/header/SIPHeader;)Z
    .locals 2
    .param p0, "sipHeader"    # Lgov2/nist/javax2/sip/header/SIPHeader;

    .prologue
    const/4 v0, 0x0

    .line 200
    instance-of v1, p0, Lgov2/nist/javax2/sip/header/ErrorInfo;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    instance-of v1, p0, Lgov2/nist/javax2/sip/header/ProxyAuthenticate;

    if-nez v1, :cond_0

    instance-of v1, p0, Lgov2/nist/javax2/sip/header/Server;

    if-nez v1, :cond_0

    instance-of v1, p0, Lgov2/nist/javax2/sip/header/Unsupported;

    if-nez v1, :cond_0

    instance-of v1, p0, Lgov2/nist/javax2/sip/header/RetryAfter;

    if-nez v1, :cond_0

    instance-of v1, p0, Lgov2/nist/javax2/sip/header/Warning;

    if-nez v1, :cond_0

    instance-of v1, p0, Lgov2/nist/javax2/sip/header/WWWAuthenticate;

    if-nez v1, :cond_0

    instance-of v1, p0, Lgov2/nist/javax2/sip/header/SIPETag;

    if-nez v1, :cond_0

    instance-of v1, p0, Lgov2/nist/javax2/sip/header/RSeq;

    if-nez v1, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public addFirst(Ljavax2/sip/header/Header;)V
    .locals 3
    .param p1, "header"    # Ljavax2/sip/header/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/SipException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .prologue
    .line 1729
    if-eqz p1, :cond_0

    .line 1732
    :try_start_0
    check-cast p1, Lgov2/nist/javax2/sip/header/SIPHeader;

    .end local p1    # "header":Ljavax2/sip/header/Header;
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, Lgov2/nist/javax2/sip/message/SIPMessage;->attachHeader(Lgov2/nist/javax2/sip/header/SIPHeader;ZZ)V
    :try_end_0
    .catch Lgov2/nist/javax2/sip/message/SIPDuplicateHeaderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1737
    return-void

    .line 1729
    .restart local p1    # "header":Ljavax2/sip/header/Header;
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "null arg!"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1735
    .end local p1    # "header":Ljavax2/sip/header/Header;
    :catch_0
    move-exception v0

    .line 1734
    .local v0, "ex":Lgov2/nist/javax2/sip/message/SIPDuplicateHeaderException;
    new-instance v1, Ljavax2/sip/SipException;

    const-string/jumbo v2, "Cannot add header - header already exists"

    invoke-direct {v1, v2}, Ljavax2/sip/SipException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addHeader(Ljavax2/sip/header/Header;)V
    .locals 6
    .param p1, "sipHeader"    # Ljavax2/sip/header/Header;

    .prologue
    move-object v3, p1

    .line 1504
    check-cast v3, Lgov2/nist/javax2/sip/header/SIPHeader;

    .line 1506
    .local v3, "sh":Lgov2/nist/javax2/sip/header/SIPHeader;
    :try_start_0
    instance-of v4, p1, Ljavax2/sip/header/ViaHeader;

    if-eqz v4, :cond_2

    .line 1507
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lgov2/nist/javax2/sip/message/SIPMessage;->attachHeader(Lgov2/nist/javax2/sip/header/SIPHeader;ZZ)V

    .line 1520
    :cond_1
    :goto_0
    return-void

    .line 1506
    :cond_2
    instance-of v4, p1, Ljavax2/sip/header/RecordRouteHeader;

    if-nez v4, :cond_0

    .line 1509
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lgov2/nist/javax2/sip/message/SIPMessage;->attachHeader(Lgov2/nist/javax2/sip/header/SIPHeader;ZZ)V
    :try_end_0
    .catch Lgov2/nist/javax2/sip/message/SIPDuplicateHeaderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1519
    :catch_0
    move-exception v2

    .line 1513
    .local v2, "ex":Lgov2/nist/javax2/sip/message/SIPDuplicateHeaderException;
    :try_start_1
    instance-of v4, p1, Lgov2/nist/javax2/sip/header/ContentLength;

    if-eqz v4, :cond_1

    .line 1514
    move-object v0, p1

    check-cast v0, Lgov2/nist/javax2/sip/header/ContentLength;

    move-object v1, v0

    .line 1515
    .local v1, "cl":Lgov2/nist/javax2/sip/header/ContentLength;
    iget-object v4, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->contentLengthHeader:Lgov2/nist/javax2/sip/header/ContentLength;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/ContentLength;->getContentLength()I

    move-result v5

    invoke-virtual {v4, v5}, Lgov2/nist/javax2/sip/header/ContentLength;->setContentLength(I)V
    :try_end_1
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1518
    .end local v1    # "cl":Lgov2/nist/javax2/sip/header/ContentLength;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public addUnparsed(Ljava/lang/String;)V
    .locals 1
    .param p1, "unparsed"    # Ljava/lang/String;

    .prologue
    .line 1528
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->unrecognizedHeaders:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1529
    return-void
.end method

.method public attachHeader(Lgov2/nist/javax2/sip/header/SIPHeader;Z)V
    .locals 1
    .param p1, "h"    # Lgov2/nist/javax2/sip/header/SIPHeader;
    .param p2, "replaceflag"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgov2/nist/javax2/sip/message/SIPDuplicateHeaderException;
        }
    .end annotation

    .prologue
    .line 615
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lgov2/nist/javax2/sip/message/SIPMessage;->attachHeader(Lgov2/nist/javax2/sip/header/SIPHeader;ZZ)V

    .line 616
    return-void
.end method

.method public attachHeader(Lgov2/nist/javax2/sip/header/SIPHeader;ZZ)V
    .locals 11
    .param p1, "header"    # Lgov2/nist/javax2/sip/header/SIPHeader;
    .param p2, "replaceFlag"    # Z
    .param p3, "top"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lgov2/nist/javax2/sip/message/SIPDuplicateHeaderException;
        }
    .end annotation

    .prologue
    .line 634
    if-eqz p1, :cond_3

    .line 640
    invoke-static {p1}, Lgov2/nist/javax2/sip/message/ListMap;->hasList(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 645
    :cond_0
    move-object v2, p1

    .line 648
    .local v2, "h":Lgov2/nist/javax2/sip/header/SIPHeader;
    :goto_0
    invoke-virtual {v2}, Lgov2/nist/javax2/sip/header/SIPHeader;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lgov2/nist/javax2/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 649
    .local v5, "headerNameLowerCase":Ljava/lang/String;
    if-nez p2, :cond_5

    .line 651
    iget-object v9, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v9, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 663
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lgov2/nist/javax2/sip/header/SIPHeader;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lgov2/nist/javax2/sip/message/SIPMessage;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v8

    check-cast v8, Lgov2/nist/javax2/sip/header/SIPHeader;

    .line 666
    .local v8, "originalHeader":Lgov2/nist/javax2/sip/header/SIPHeader;
    if-nez v8, :cond_8

    .line 676
    :cond_2
    iget-object v9, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v9, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 680
    instance-of v9, v2, Lgov2/nist/javax2/sip/header/SIPHeaderList;

    if-nez v9, :cond_b

    .line 687
    iget-object v9, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v9, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    :goto_2
    instance-of v9, v2, Lgov2/nist/javax2/sip/header/From;

    if-nez v9, :cond_d

    .line 694
    instance-of v9, v2, Lgov2/nist/javax2/sip/header/ContentLength;

    if-nez v9, :cond_e

    .line 696
    instance-of v9, v2, Lgov2/nist/javax2/sip/header/To;

    if-nez v9, :cond_f

    .line 698
    instance-of v9, v2, Lgov2/nist/javax2/sip/header/CSeq;

    if-nez v9, :cond_10

    .line 700
    instance-of v9, v2, Lgov2/nist/javax2/sip/header/CallID;

    if-nez v9, :cond_11

    .line 702
    instance-of v9, v2, Lgov2/nist/javax2/sip/header/MaxForwards;

    if-nez v9, :cond_12

    .line 706
    .end local v2    # "h":Lgov2/nist/javax2/sip/header/SIPHeader;
    :goto_3
    return-void

    .line 635
    .end local v5    # "headerNameLowerCase":Ljava/lang/String;
    .end local v8    # "originalHeader":Lgov2/nist/javax2/sip/header/SIPHeader;
    :cond_3
    new-instance v9, Ljava/lang/NullPointerException;

    const-string/jumbo v10, "null header"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v9

    :cond_4
    const-class v9, Lgov2/nist/javax2/sip/header/SIPHeaderList;

    .line 640
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 641
    invoke-static {p1}, Lgov2/nist/javax2/sip/message/ListMap;->getList(Lgov2/nist/javax2/sip/header/SIPHeader;)Lgov2/nist/javax2/sip/header/SIPHeaderList;

    move-result-object v3

    .line 642
    .local v3, "hdrList":Lgov2/nist/javax2/sip/header/SIPHeaderList;, "Lgov2/nist/javax2/sip/header/SIPHeaderList<Lgov2/nist/javax2/sip/header/SIPHeader;>;"
    invoke-virtual {v3, p1}, Lgov2/nist/javax2/sip/header/SIPHeaderList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    .line 643
    move-object v2, v3

    .restart local v2    # "h":Lgov2/nist/javax2/sip/header/SIPHeader;
    goto :goto_0

    .line 650
    .end local v3    # "hdrList":Lgov2/nist/javax2/sip/header/SIPHeaderList;, "Lgov2/nist/javax2/sip/header/SIPHeaderList<Lgov2/nist/javax2/sip/header/SIPHeader;>;"
    .restart local v5    # "headerNameLowerCase":Ljava/lang/String;
    :cond_5
    iget-object v9, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v9, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 651
    :cond_6
    instance-of v9, v2, Lgov2/nist/javax2/sip/header/SIPHeaderList;

    if-nez v9, :cond_1

    .line 652
    instance-of v9, v2, Lgov2/nist/javax2/sip/header/ContentLength;

    if-nez v9, :cond_7

    .line 660
    :goto_4
    return-void

    .line 654
    :cond_7
    :try_start_0
    move-object v0, v2

    check-cast v0, Lgov2/nist/javax2/sip/header/ContentLength;

    move-object v1, v0

    .line 655
    .local v1, "cl":Lgov2/nist/javax2/sip/header/ContentLength;
    iget-object v9, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->contentLengthHeader:Lgov2/nist/javax2/sip/header/ContentLength;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/ContentLength;->getContentLength()I

    move-result v10

    invoke-virtual {v9, v10}, Lgov2/nist/javax2/sip/header/ContentLength;->setContentLength(I)V
    :try_end_0
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 657
    .end local v1    # "cl":Lgov2/nist/javax2/sip/header/ContentLength;
    :catch_0
    move-exception v9

    goto :goto_4

    .line 667
    .restart local v8    # "originalHeader":Lgov2/nist/javax2/sip/header/SIPHeader;
    :cond_8
    iget-object v9, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 668
    .local v6, "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/header/SIPHeader;>;"
    :cond_9
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 669
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov2/nist/javax2/sip/header/SIPHeader;

    .line 670
    .local v7, "next":Lgov2/nist/javax2/sip/header/SIPHeader;
    invoke-virtual {v7, v8}, Lgov2/nist/javax2/sip/header/SIPHeader;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 671
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 677
    .end local v6    # "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/header/SIPHeader;>;"
    .end local v7    # "next":Lgov2/nist/javax2/sip/header/SIPHeader;
    :cond_a
    iget-object v9, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v9, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    iget-object v9, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v9, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 681
    :cond_b
    iget-object v9, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v9, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgov2/nist/javax2/sip/header/SIPHeaderList;

    .line 682
    .local v4, "hdrlist":Lgov2/nist/javax2/sip/header/SIPHeaderList;, "Lgov2/nist/javax2/sip/header/SIPHeaderList<*>;"
    if-nez v4, :cond_c

    .line 685
    iget-object v9, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v9, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :cond_c
    move-object v9, v2

    .line 683
    check-cast v9, Lgov2/nist/javax2/sip/header/SIPHeaderList;

    invoke-virtual {v4, v9, p3}, Lgov2/nist/javax2/sip/header/SIPHeaderList;->concatenate(Lgov2/nist/javax2/sip/header/SIPHeaderList;Z)V

    goto/16 :goto_2

    .line 693
    .end local v4    # "hdrlist":Lgov2/nist/javax2/sip/header/SIPHeaderList;, "Lgov2/nist/javax2/sip/header/SIPHeaderList<*>;"
    :cond_d
    check-cast v2, Lgov2/nist/javax2/sip/header/From;

    .end local v2    # "h":Lgov2/nist/javax2/sip/header/SIPHeader;
    iput-object v2, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->fromHeader:Lgov2/nist/javax2/sip/header/From;

    goto/16 :goto_3

    .line 695
    .restart local v2    # "h":Lgov2/nist/javax2/sip/header/SIPHeader;
    :cond_e
    check-cast v2, Lgov2/nist/javax2/sip/header/ContentLength;

    .end local v2    # "h":Lgov2/nist/javax2/sip/header/SIPHeader;
    iput-object v2, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->contentLengthHeader:Lgov2/nist/javax2/sip/header/ContentLength;

    goto/16 :goto_3

    .line 697
    .restart local v2    # "h":Lgov2/nist/javax2/sip/header/SIPHeader;
    :cond_f
    check-cast v2, Lgov2/nist/javax2/sip/header/To;

    .end local v2    # "h":Lgov2/nist/javax2/sip/header/SIPHeader;
    iput-object v2, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->toHeader:Lgov2/nist/javax2/sip/header/To;

    goto/16 :goto_3

    .line 699
    .restart local v2    # "h":Lgov2/nist/javax2/sip/header/SIPHeader;
    :cond_10
    check-cast v2, Lgov2/nist/javax2/sip/header/CSeq;

    .end local v2    # "h":Lgov2/nist/javax2/sip/header/SIPHeader;
    iput-object v2, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->cSeqHeader:Lgov2/nist/javax2/sip/header/CSeq;

    goto/16 :goto_3

    .line 701
    .restart local v2    # "h":Lgov2/nist/javax2/sip/header/SIPHeader;
    :cond_11
    check-cast v2, Lgov2/nist/javax2/sip/header/CallID;

    .end local v2    # "h":Lgov2/nist/javax2/sip/header/SIPHeader;
    iput-object v2, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->callIdHeader:Lgov2/nist/javax2/sip/header/CallID;

    goto/16 :goto_3

    .line 703
    .restart local v2    # "h":Lgov2/nist/javax2/sip/header/SIPHeader;
    :cond_12
    check-cast v2, Lgov2/nist/javax2/sip/header/MaxForwards;

    .end local v2    # "h":Lgov2/nist/javax2/sip/header/SIPHeader;
    iput-object v2, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->maxForwardsHeader:Lgov2/nist/javax2/sip/header/MaxForwards;

    goto/16 :goto_3
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 464
    invoke-super {p0}, Lgov2/nist/javax2/sip/message/MessageObject;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov2/nist/javax2/sip/message/SIPMessage;

    .line 465
    .local v2, "retval":Lgov2/nist/javax2/sip/message/SIPMessage;
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, v2, Lgov2/nist/javax2/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    .line 466
    iput-object v4, v2, Lgov2/nist/javax2/sip/message/SIPMessage;->fromHeader:Lgov2/nist/javax2/sip/header/From;

    .line 467
    iput-object v4, v2, Lgov2/nist/javax2/sip/message/SIPMessage;->toHeader:Lgov2/nist/javax2/sip/header/To;

    .line 468
    iput-object v4, v2, Lgov2/nist/javax2/sip/message/SIPMessage;->cSeqHeader:Lgov2/nist/javax2/sip/header/CSeq;

    .line 469
    iput-object v4, v2, Lgov2/nist/javax2/sip/message/SIPMessage;->callIdHeader:Lgov2/nist/javax2/sip/header/CallID;

    .line 470
    iput-object v4, v2, Lgov2/nist/javax2/sip/message/SIPMessage;->contentLengthHeader:Lgov2/nist/javax2/sip/header/ContentLength;

    .line 471
    iput-object v4, v2, Lgov2/nist/javax2/sip/message/SIPMessage;->maxForwardsHeader:Lgov2/nist/javax2/sip/header/MaxForwards;

    .line 472
    iget-object v3, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    if-nez v3, :cond_1

    .line 480
    :cond_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContentBytes:[B

    if-nez v3, :cond_2

    .line 482
    :goto_0
    iget-object v3, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    if-nez v3, :cond_3

    .line 484
    :goto_1
    iget-object v3, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->unrecognizedHeaders:Ljava/util/LinkedList;

    iput-object v3, v2, Lgov2/nist/javax2/sip/message/SIPMessage;->unrecognizedHeaders:Ljava/util/LinkedList;

    .line 485
    return-object v2

    .line 473
    :cond_1
    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v3, v2, Lgov2/nist/javax2/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 474
    iget-object v3, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/header/SIPHeader;>;"
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 475
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/SIPHeader;

    .line 476
    .local v0, "hdr":Lgov2/nist/javax2/sip/header/SIPHeader;
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov2/nist/javax2/sip/header/SIPHeader;

    invoke-direct {v2, v3}, Lgov2/nist/javax2/sip/message/SIPMessage;->attachHeader(Lgov2/nist/javax2/sip/header/SIPHeader;)V

    goto :goto_2

    .line 481
    .end local v0    # "hdr":Lgov2/nist/javax2/sip/header/SIPHeader;
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/header/SIPHeader;>;"
    :cond_2
    iget-object v3, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContentBytes:[B

    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    check-cast v3, [B

    iput-object v3, v2, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContentBytes:[B

    goto :goto_0

    .line 483
    :cond_3
    iget-object v3, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    invoke-static {v3}, Lgov2/nist/javax2/sip/message/SIPMessage;->makeClone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v2, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    goto :goto_1
.end method

.method public encode()Ljava/lang/String;
    .locals 11

    .prologue
    .line 352
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 353
    .local v2, "encoding":Ljava/lang/StringBuffer;
    iget-object v9, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 355
    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/header/SIPHeader;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 361
    iget-object v9, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->unrecognizedHeaders:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 365
    iget-object v9, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->contentLengthHeader:Lgov2/nist/javax2/sip/header/ContentLength;

    invoke-virtual {v9}, Lgov2/nist/javax2/sip/header/ContentLength;->encode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string/jumbo v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    iget-object v9, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    if-nez v9, :cond_4

    .line 371
    iget-object v9, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    if-eqz v9, :cond_5

    :cond_1
    const/4 v0, 0x0

    .line 375
    .local v0, "content":Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    if-nez v9, :cond_6

    .line 380
    new-instance v1, Ljava/lang/String;

    iget-object v9, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContentBytes:[B

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v9, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, "content":Ljava/lang/String;
    move-object v0, v1

    .line 386
    .end local v0    # "content":Ljava/lang/String;
    .end local v1    # "content":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 388
    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 356
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov2/nist/javax2/sip/header/SIPHeader;

    .line 357
    .local v7, "siphdr":Lgov2/nist/javax2/sip/header/SIPHeader;
    instance-of v9, v7, Lgov2/nist/javax2/sip/header/ContentLength;

    if-nez v9, :cond_0

    invoke-virtual {v7}, Lgov2/nist/javax2/sip/header/SIPHeader;->encode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 361
    .end local v7    # "siphdr":Lgov2/nist/javax2/sip/header/SIPHeader;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 362
    .local v8, "unrecognized":Ljava/lang/String;
    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string/jumbo v10, "\r\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 368
    .end local v8    # "unrecognized":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPMessage;->getContent()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 370
    .local v6, "mbody":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 371
    .end local v6    # "mbody":Ljava/lang/String;
    :cond_5
    iget-object v9, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContentBytes:[B

    if-nez v9, :cond_1

    goto :goto_3

    .line 376
    .restart local v0    # "content":Ljava/lang/String;
    :cond_6
    :try_start_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContent:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    .local v0, "content":Ljava/lang/String;
    goto :goto_2

    .line 384
    .local v0, "content":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 383
    .local v3, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v3}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method public encodeAsBytes(Ljava/lang/String;)[B
    .locals 12
    .param p1, "transport"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    .line 400
    instance-of v9, p0, Lgov2/nist/javax2/sip/message/SIPRequest;

    if-nez v9, :cond_2

    :cond_0
    const-string/jumbo v9, "Via"

    .line 405
    invoke-virtual {p0, v9}, Lgov2/nist/javax2/sip/message/SIPMessage;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v8

    check-cast v8, Ljavax2/sip/header/ViaHeader;

    .line 407
    .local v8, "topVia":Ljavax2/sip/header/ViaHeader;
    :try_start_0
    invoke-interface {v8, p1}, Ljavax2/sip/header/ViaHeader;->setTransport(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 413
    .local v2, "encoding":Ljava/lang/StringBuffer;
    iget-object v10, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v10

    .line 414
    :try_start_1
    iget-object v9, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v9}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 416
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/header/SIPHeader;>;"
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 421
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 422
    iget-object v9, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->contentLengthHeader:Lgov2/nist/javax2/sip/header/ContentLength;

    invoke-virtual {v9, v2}, Lgov2/nist/javax2/sip/header/ContentLength;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string/jumbo v9, "\r\n"

    .line 423
    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v6, 0x0

    .line 426
    .local v6, "retval":[B
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPMessage;->getRawContent()[B

    move-result-object v0

    .line 427
    .local v0, "content":[B
    if-nez v0, :cond_4

    .line 444
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    .line 449
    .end local v6    # "retval":[B
    :goto_2
    return-object v6

    .end local v0    # "content":[B
    .end local v2    # "encoding":Ljava/lang/StringBuffer;
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/header/SIPHeader;>;"
    .end local v8    # "topVia":Ljavax2/sip/header/ViaHeader;
    :cond_2
    move-object v9, p0

    .line 400
    check-cast v9, Lgov2/nist/javax2/sip/message/SIPRequest;

    invoke-virtual {v9}, Lgov2/nist/javax2/sip/message/SIPRequest;->isNullRequest()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string/jumbo v9, "\r\n\r\n"

    .line 401
    invoke-virtual {v9}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    return-object v9

    .line 410
    .restart local v8    # "topVia":Ljavax2/sip/header/ViaHeader;
    :catch_0
    move-exception v1

    .line 409
    .local v1, "e":Ljava/text/ParseException;
    invoke-static {v1}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_0

    .line 417
    .end local v1    # "e":Ljava/text/ParseException;
    .restart local v2    # "encoding":Ljava/lang/StringBuffer;
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/header/SIPHeader;>;"
    :cond_3
    :try_start_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgov2/nist/javax2/sip/header/SIPHeader;

    .line 418
    .local v7, "siphdr":Lgov2/nist/javax2/sip/header/SIPHeader;
    instance-of v9, v7, Lgov2/nist/javax2/sip/header/ContentLength;

    if-nez v9, :cond_1

    invoke-virtual {v7, v2}, Lgov2/nist/javax2/sip/header/SIPHeader;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 421
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/header/SIPHeader;>;"
    .end local v7    # "siphdr":Lgov2/nist/javax2/sip/header/SIPHeader;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v9

    .restart local v0    # "content":[B
    .restart local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/header/SIPHeader;>;"
    .restart local v6    # "retval":[B
    :cond_4
    const/4 v5, 0x0

    .line 432
    .local v5, "msgarray":[B
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v5

    .line 437
    .end local v5    # "msgarray":[B
    :goto_3
    array-length v9, v5

    array-length v10, v0

    add-int/2addr v9, v10

    new-array v6, v9, [B

    .line 438
    .local v6, "retval":[B
    array-length v9, v5

    invoke-static {v5, v11, v6, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 439
    array-length v9, v5

    array-length v10, v0

    invoke-static {v0, v11, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 435
    .restart local v5    # "msgarray":[B
    .local v6, "retval":[B
    :catch_1
    move-exception v3

    .line 434
    .local v3, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v3}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_3

    .line 447
    .end local v3    # "ex":Ljava/io/UnsupportedEncodingException;
    .end local v5    # "msgarray":[B
    :catch_2
    move-exception v3

    .line 446
    .restart local v3    # "ex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v3}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method protected encodeSIPHeaders()Ljava/lang/String;
    .locals 5

    .prologue
    .line 236
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 237
    .local v0, "encoding":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 239
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/header/SIPHeader;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 244
    iget-object v3, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->contentLengthHeader:Lgov2/nist/javax2/sip/header/ContentLength;

    invoke-virtual {v3, v0}, Lgov2/nist/javax2/sip/header/ContentLength;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string/jumbo v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 240
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov2/nist/javax2/sip/header/SIPHeader;

    .line 241
    .local v2, "siphdr":Lgov2/nist/javax2/sip/header/SIPHeader;
    instance-of v3, v2, Lgov2/nist/javax2/sip/header/ContentLength;

    if-nez v3, :cond_0

    invoke-virtual {v2, v0}, Lgov2/nist/javax2/sip/header/SIPHeader;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 1580
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v3, p1

    .line 1583
    check-cast v3, Lgov2/nist/javax2/sip/message/SIPMessage;

    .line 1584
    .local v3, "otherMessage":Lgov2/nist/javax2/sip/message/SIPMessage;
    iget-object v5, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v4

    .line 1585
    .local v4, "values":Ljava/util/Collection;, "Ljava/util/Collection<Lgov2/nist/javax2/sip/header/SIPHeader;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1586
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/header/SIPHeader;>;"
    iget-object v5, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v5}, Ljava/util/Hashtable;->size()I

    move-result v5

    iget-object v6, v3, Lgov2/nist/javax2/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->size()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 1590
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1600
    const/4 v5, 0x1

    return v5

    .line 1581
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/header/SIPHeader;>;"
    .end local v3    # "otherMessage":Lgov2/nist/javax2/sip/message/SIPMessage;
    .end local v4    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Lgov2/nist/javax2/sip/header/SIPHeader;>;"
    :cond_1
    return v7

    .line 1587
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/header/SIPHeader;>;"
    .restart local v3    # "otherMessage":Lgov2/nist/javax2/sip/message/SIPMessage;
    .restart local v4    # "values":Ljava/util/Collection;, "Ljava/util/Collection<Lgov2/nist/javax2/sip/header/SIPHeader;>;"
    :cond_2
    return v7

    .line 1591
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov2/nist/javax2/sip/header/SIPHeader;

    .line 1592
    .local v2, "mine":Lgov2/nist/javax2/sip/header/SIPHeader;
    iget-object v5, v3, Lgov2/nist/javax2/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/header/SIPHeader;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lgov2/nist/javax2/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/SIPHeader;

    .line 1594
    .local v0, "his":Lgov2/nist/javax2/sip/header/SIPHeader;
    if-eqz v0, :cond_4

    .line 1596
    invoke-virtual {v0, v2}, Lgov2/nist/javax2/sip/header/SIPHeader;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1597
    return v7

    .line 1595
    :cond_4
    return v7
.end method

.method public getAuthorization()Lgov2/nist/javax2/sip/header/Authorization;
    .locals 1

    .prologue
    .line 1042
    sget-object v0, Lgov2/nist/javax2/sip/message/SIPMessage;->AUTHORIZATION_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/message/SIPMessage;->getHeaderLowerCase(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/Authorization;

    return-object v0
.end method

.method public getCSeq()Ljavax2/sip/header/CSeqHeader;
    .locals 1

    .prologue
    .line 1033
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->cSeqHeader:Lgov2/nist/javax2/sip/header/CSeq;

    return-object v0
.end method

.method public getCSeqHeader()Ljavax2/sip/header/CSeqHeader;
    .locals 1

    .prologue
    .line 1827
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->cSeqHeader:Lgov2/nist/javax2/sip/header/CSeq;

    return-object v0
.end method

.method public getCallId()Ljavax2/sip/header/CallIdHeader;
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->callIdHeader:Lgov2/nist/javax2/sip/header/CallID;

    return-object v0
.end method

.method protected final getCharset()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1834
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPMessage;->getContentTypeHeader()Lgov2/nist/javax2/sip/header/ContentType;

    move-result-object v1

    .line 1835
    .local v1, "ct":Lgov2/nist/javax2/sip/header/ContentType;
    if-nez v1, :cond_0

    .line 1839
    iget-object v2, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->contentEncodingCharset:Ljava/lang/String;

    return-object v2

    .line 1836
    :cond_0
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/ContentType;->getCharset()Ljava/lang/String;

    move-result-object v0

    .line 1837
    .local v0, "c":Ljava/lang/String;
    if-nez v0, :cond_1

    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->contentEncodingCharset:Ljava/lang/String;

    .end local v0    # "c":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public getContactHeader()Lgov2/nist/javax2/sip/header/Contact;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 970
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPMessage;->getContactHeaders()Lgov2/nist/javax2/sip/header/ContactList;

    move-result-object v0

    .line 971
    .local v0, "clist":Lgov2/nist/javax2/sip/header/ContactList;
    if-nez v0, :cond_0

    .line 975
    return-object v1

    .line 972
    :cond_0
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/ContactList;->getFirst()Ljavax2/sip/header/Header;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/header/Contact;

    return-object v1
.end method

.method public getContactHeaders()Lgov2/nist/javax2/sip/header/ContactList;
    .locals 1

    .prologue
    .line 959
    sget-object v0, Lgov2/nist/javax2/sip/message/SIPMessage;->CONTACT_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/message/SIPMessage;->getSIPHeaderListLowerCase(Ljava/lang/String;)Lgov2/nist/javax2/sip/header/SIPHeader;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/ContactList;

    return-object v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1240
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 1242
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1244
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContentBytes:[B

    if-nez v0, :cond_2

    .line 1247
    return-object v1

    .line 1241
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    return-object v0

    .line 1243
    :cond_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    return-object v0

    .line 1245
    :cond_2
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContentBytes:[B

    return-object v0
.end method

.method public getContentLength()Ljavax2/sip/header/ContentLengthHeader;
    .locals 1

    .prologue
    .line 1144
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->contentLengthHeader:Lgov2/nist/javax2/sip/header/ContentLength;

    return-object v0
.end method

.method public getContentTypeHeader()Lgov2/nist/javax2/sip/header/ContentType;
    .locals 1

    .prologue
    .line 920
    sget-object v0, Lgov2/nist/javax2/sip/message/SIPMessage;->CONTENT_TYPE_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/message/SIPMessage;->getHeaderLowerCase(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/ContentType;

    return-object v0
.end method

.method public getExpires()Ljavax2/sip/header/ExpiresHeader;
    .locals 1

    .prologue
    .line 1645
    sget-object v0, Lgov2/nist/javax2/sip/message/SIPMessage;->EXPIRES_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/message/SIPMessage;->getHeaderLowerCase(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax2/sip/header/ExpiresHeader;

    return-object v0
.end method

.method public getFrom()Ljavax2/sip/header/FromHeader;
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->fromHeader:Lgov2/nist/javax2/sip/header/From;

    return-object v0
.end method

.method public getFromTag()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1458
    iget-object v1, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->fromHeader:Lgov2/nist/javax2/sip/header/From;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->fromHeader:Lgov2/nist/javax2/sip/header/From;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;
    .locals 1
    .param p1, "headerName"    # Ljava/lang/String;

    .prologue
    .line 901
    invoke-static {p1}, Lgov2/nist/javax2/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/message/SIPMessage;->getHeaderLowerCase(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lgov2/nist/javax2/sip/header/SIPHeader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 892
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;
    .locals 3
    .param p1, "headerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ListIterator",
            "<",
            "Lgov2/nist/javax2/sip/header/SIPHeader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1371
    if-eqz p1, :cond_0

    .line 1372
    iget-object v1, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-static {p1}, Lgov2/nist/javax2/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/SIPHeader;

    .line 1374
    .local v0, "sipHeader":Lgov2/nist/javax2/sip/header/SIPHeader;
    if-eqz v0, :cond_1

    .line 1375
    instance-of v1, v0, Lgov2/nist/javax2/sip/header/SIPHeaderList;

    if-nez v1, :cond_2

    .line 1378
    new-instance v1, Lgov2/nist/javax2/sip/message/HeaderIterator;

    invoke-direct {v1, p0, v0}, Lgov2/nist/javax2/sip/message/HeaderIterator;-><init>(Lgov2/nist/javax2/sip/message/SIPMessage;Lgov2/nist/javax2/sip/header/SIPHeader;)V

    return-object v1

    .line 1371
    .end local v0    # "sipHeader":Lgov2/nist/javax2/sip/header/SIPHeader;
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "null headerName"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1374
    .restart local v0    # "sipHeader":Lgov2/nist/javax2/sip/header/SIPHeader;
    :cond_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1}, Ljava/util/LinkedList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    return-object v1

    .line 1376
    :cond_2
    check-cast v0, Lgov2/nist/javax2/sip/header/SIPHeaderList;

    .end local v0    # "sipHeader":Lgov2/nist/javax2/sip/header/SIPHeader;
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/SIPHeaderList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    return-object v1
.end method

.method public getMaxForwards()Ljavax2/sip/header/MaxForwardsHeader;
    .locals 1

    .prologue
    .line 1055
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->maxForwardsHeader:Lgov2/nist/javax2/sip/header/MaxForwards;

    return-object v0
.end method

.method public getRawContent()[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1175
    :try_start_0
    iget-object v2, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContentBytes:[B

    if-nez v2, :cond_0

    .line 1177
    iget-object v2, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 1180
    iget-object v2, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 1183
    :cond_0
    :goto_0
    iget-object v2, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContentBytes:[B

    return-object v2

    .line 1178
    :cond_1
    iget-object v2, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1179
    .local v1, "messageContent":Ljava/lang/String;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContentBytes:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1183
    .end local v1    # "messageContent":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1185
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-static {v0}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    .line 1186
    return-object v4

    .line 1181
    .end local v0    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_2
    :try_start_1
    iget-object v2, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPMessage;->getCharset()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContentBytes:[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public getRecordRouteHeaders()Lgov2/nist/javax2/sip/header/RecordRouteList;
    .locals 1

    .prologue
    .line 1114
    sget-object v0, Lgov2/nist/javax2/sip/message/SIPMessage;->RECORDROUTE_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/message/SIPMessage;->getSIPHeaderListLowerCase(Ljava/lang/String;)Lgov2/nist/javax2/sip/header/SIPHeader;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/RecordRouteList;

    return-object v0
.end method

.method public getRouteHeaders()Lgov2/nist/javax2/sip/header/RouteList;
    .locals 1

    .prologue
    .line 1073
    sget-object v0, Lgov2/nist/javax2/sip/message/SIPMessage;->ROUTE_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/message/SIPMessage;->getSIPHeaderListLowerCase(Ljava/lang/String;)Lgov2/nist/javax2/sip/header/SIPHeader;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/RouteList;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 1705
    iget v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->size:I

    return v0
.end method

.method public getTo()Ljavax2/sip/header/ToHeader;
    .locals 1

    .prologue
    .line 1126
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->toHeader:Lgov2/nist/javax2/sip/header/To;

    return-object v0
.end method

.method public getToTag()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1489
    iget-object v1, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->toHeader:Lgov2/nist/javax2/sip/header/To;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->toHeader:Lgov2/nist/javax2/sip/header/To;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/To;->getTag()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTopmostVia()Lgov2/nist/javax2/sip/header/Via;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1021
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPMessage;->getViaHeaders()Lgov2/nist/javax2/sip/header/ViaList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1024
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPMessage;->getViaHeaders()Lgov2/nist/javax2/sip/header/ViaList;

    move-result-object v0

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/ViaList;->getFirst()Ljavax2/sip/header/Header;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/Via;

    check-cast v0, Lgov2/nist/javax2/sip/header/Via;

    return-object v0

    .line 1022
    :cond_0
    return-object v1
.end method

.method public getTransactionId()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 820
    .local v4, "topVia":Lgov2/nist/javax2/sip/header/Via;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPMessage;->getViaHeaders()Lgov2/nist/javax2/sip/header/ViaList;

    move-result-object v5

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/header/ViaList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 826
    .end local v4    # "topVia":Lgov2/nist/javax2/sip/header/Via;
    :goto_0
    if-nez v4, :cond_3

    .line 840
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 841
    .local v2, "retval":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPMessage;->getFrom()Ljavax2/sip/header/FromHeader;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/header/From;

    .line 842
    .local v1, "from":Lgov2/nist/javax2/sip/header/From;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPMessage;->getTo()Ljavax2/sip/header/ToHeader;

    move-result-object v3

    check-cast v3, Lgov2/nist/javax2/sip/header/To;

    .line 845
    .local v3, "to":Lgov2/nist/javax2/sip/header/To;
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/From;->hasTag()Z

    move-result v5

    if-nez v5, :cond_5

    .line 848
    :goto_1
    iget-object v5, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->callIdHeader:Lgov2/nist/javax2/sip/header/CallID;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v0

    .line 849
    .local v0, "cid":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 850
    iget-object v5, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->cSeqHeader:Lgov2/nist/javax2/sip/header/CSeq;

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/header/CSeq;->getSequenceNumber()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    iget-object v6, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->cSeqHeader:Lgov2/nist/javax2/sip/header/CSeq;

    invoke-virtual {v6}, Lgov2/nist/javax2/sip/header/CSeq;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 852
    if-nez v4, :cond_6

    .line 858
    :cond_1
    :goto_2
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPMessage;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v5

    invoke-interface {v5}, Ljavax2/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "CANCEL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 861
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, ":"

    const-string/jumbo v8, "-"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "@"

    const-string/jumbo v8, "-"

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Lgov2/nist/javax2/sip/Utils;->getSignature()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 821
    .end local v0    # "cid":Ljava/lang/String;
    .end local v1    # "from":Lgov2/nist/javax2/sip/header/From;
    .end local v2    # "retval":Ljava/lang/StringBuffer;
    .end local v3    # "to":Lgov2/nist/javax2/sip/header/To;
    .restart local v4    # "topVia":Lgov2/nist/javax2/sip/header/Via;
    :cond_2
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPMessage;->getViaHeaders()Lgov2/nist/javax2/sip/header/ViaList;

    move-result-object v5

    invoke-virtual {v5}, Lgov2/nist/javax2/sip/header/ViaList;->getFirst()Ljavax2/sip/header/Header;

    move-result-object v4

    .end local v4    # "topVia":Lgov2/nist/javax2/sip/header/Via;
    check-cast v4, Lgov2/nist/javax2/sip/header/Via;

    .local v4, "topVia":Lgov2/nist/javax2/sip/header/Via;
    goto/16 :goto_0

    .line 826
    .end local v4    # "topVia":Lgov2/nist/javax2/sip/header/Via;
    :cond_3
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "Z9HG4BK"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 833
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPMessage;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v5

    invoke-interface {v5}, Ljavax2/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "CANCEL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 836
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 834
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/header/Via;->getBranch()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lgov2/nist/javax2/sip/message/SIPMessage;->getCSeq()Ljavax2/sip/header/CSeqHeader;

    move-result-object v6

    invoke-interface {v6}, Ljavax2/sip/header/CSeqHeader;->getMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 845
    .restart local v1    # "from":Lgov2/nist/javax2/sip/header/From;
    .restart local v2    # "retval":Ljava/lang/StringBuffer;
    .restart local v3    # "to":Lgov2/nist/javax2/sip/header/To;
    :cond_5
    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/From;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_1

    .restart local v0    # "cid":Ljava/lang/String;
    :cond_6
    const-string/jumbo v5, "-"

    .line 853
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/header/Via;->getSentBy()Lgov2/nist/core/HostPort;

    move-result-object v6

    invoke-virtual {v6}, Lgov2/nist/core/HostPort;->encode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 854
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/header/Via;->getSentBy()Lgov2/nist/core/HostPort;

    move-result-object v5

    invoke-virtual {v5}, Lgov2/nist/core/HostPort;->hasPort()Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "-"

    .line 855
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const/16 v6, 0x13c4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    :cond_7
    const-string/jumbo v5, "CANCEL"

    .line 859
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3
.end method

.method public getViaHeaders()Lgov2/nist/javax2/sip/header/ViaList;
    .locals 1

    .prologue
    .line 985
    sget-object v0, Lgov2/nist/javax2/sip/message/SIPMessage;->VIA_LOWERCASE:Ljava/lang/String;

    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/message/SIPMessage;->getSIPHeaderListLowerCase(Ljava/lang/String;)Lgov2/nist/javax2/sip/header/SIPHeader;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/ViaList;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 872
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->callIdHeader:Lgov2/nist/javax2/sip/header/CallID;

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->callIdHeader:Lgov2/nist/javax2/sip/header/CallID;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/CallID;->getCallId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    .line 873
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Invalid message! Cannot compute hashcode! call-id header is missing !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isNullRequest()Z
    .locals 1

    .prologue
    .line 1849
    iget-boolean v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->nullRequest:Z

    return v0
.end method

.method public removeContent()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1354
    iput-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    .line 1355
    iput-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContentBytes:[B

    .line 1356
    iput-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    .line 1358
    :try_start_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->contentLengthHeader:Lgov2/nist/javax2/sip/header/ContentLength;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/ContentLength;->setContentLength(I)V
    :try_end_0
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1361
    :goto_0
    return-void

    .line 1360
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 6
    .param p1, "headerName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 770
    if-eqz p1, :cond_1

    .line 771
    invoke-static {p1}, Lgov2/nist/javax2/sip/header/SIPHeaderNamesCache;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 772
    .local v0, "headerNameLowerCase":Ljava/lang/String;
    iget-object v4, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->nameTable:Ljava/util/Hashtable;

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov2/nist/javax2/sip/header/SIPHeader;

    .line 774
    .local v2, "removed":Lgov2/nist/javax2/sip/header/SIPHeader;
    if-eqz v2, :cond_2

    .line 777
    instance-of v4, v2, Lgov2/nist/javax2/sip/header/From;

    if-nez v4, :cond_3

    .line 779
    instance-of v4, v2, Lgov2/nist/javax2/sip/header/To;

    if-nez v4, :cond_4

    .line 781
    instance-of v4, v2, Lgov2/nist/javax2/sip/header/CSeq;

    if-nez v4, :cond_5

    .line 783
    instance-of v4, v2, Lgov2/nist/javax2/sip/header/CallID;

    if-nez v4, :cond_6

    .line 785
    instance-of v4, v2, Lgov2/nist/javax2/sip/header/MaxForwards;

    if-nez v4, :cond_7

    .line 787
    instance-of v4, v2, Lgov2/nist/javax2/sip/header/ContentLength;

    if-nez v4, :cond_8

    .line 791
    :goto_0
    iget-object v4, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->headers:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 792
    .local v1, "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/header/SIPHeader;>;"
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_9

    .line 797
    return-void

    .line 770
    .end local v0    # "headerNameLowerCase":Ljava/lang/String;
    .end local v1    # "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/header/SIPHeader;>;"
    .end local v2    # "removed":Lgov2/nist/javax2/sip/header/SIPHeader;
    :cond_1
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "null arg"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 774
    .restart local v0    # "headerNameLowerCase":Ljava/lang/String;
    .restart local v2    # "removed":Lgov2/nist/javax2/sip/header/SIPHeader;
    :cond_2
    return-void

    .line 778
    :cond_3
    iput-object v5, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->fromHeader:Lgov2/nist/javax2/sip/header/From;

    goto :goto_0

    .line 780
    :cond_4
    iput-object v5, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->toHeader:Lgov2/nist/javax2/sip/header/To;

    goto :goto_0

    .line 782
    :cond_5
    iput-object v5, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->cSeqHeader:Lgov2/nist/javax2/sip/header/CSeq;

    goto :goto_0

    .line 784
    :cond_6
    iput-object v5, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->callIdHeader:Lgov2/nist/javax2/sip/header/CallID;

    goto :goto_0

    .line 786
    :cond_7
    iput-object v5, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->maxForwardsHeader:Lgov2/nist/javax2/sip/header/MaxForwards;

    goto :goto_0

    .line 788
    :cond_8
    iput-object v5, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->contentLengthHeader:Lgov2/nist/javax2/sip/header/ContentLength;

    goto :goto_0

    .line 793
    .restart local v1    # "li":Ljava/util/Iterator;, "Ljava/util/Iterator<Lgov2/nist/javax2/sip/header/SIPHeader;>;"
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov2/nist/javax2/sip/header/SIPHeader;

    .line 794
    .local v3, "sipHeader":Lgov2/nist/javax2/sip/header/SIPHeader;
    invoke-virtual {v3}, Lgov2/nist/javax2/sip/header/SIPHeader;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1
.end method

.method public setCSeq(Ljavax2/sip/header/CSeqHeader;)V
    .locals 0
    .param p1, "cseqHeader"    # Ljavax2/sip/header/CSeqHeader;

    .prologue
    .line 1766
    invoke-virtual {p0, p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->setHeader(Ljavax2/sip/header/Header;)V

    .line 1767
    return-void
.end method

.method public setCallId(Ljavax2/sip/header/CallIdHeader;)V
    .locals 0
    .param p1, "callId"    # Ljavax2/sip/header/CallIdHeader;

    .prologue
    .line 1093
    invoke-virtual {p0, p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->setHeader(Ljavax2/sip/header/Header;)V

    .line 1094
    return-void
.end method

.method public setContent(Ljava/lang/Object;Ljavax2/sip/header/ContentTypeHeader;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/Object;
    .param p2, "contentTypeHeader"    # Ljavax2/sip/header/ContentTypeHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1217
    if-eqz p1, :cond_0

    .line 1218
    invoke-virtual {p0, p2}, Lgov2/nist/javax2/sip/message/SIPMessage;->setHeader(Ljavax2/sip/header/Header;)V

    .line 1220
    iput-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    .line 1221
    iput-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContentBytes:[B

    .line 1222
    iput-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    .line 1224
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1226
    instance-of v0, p1, [B

    if-nez v0, :cond_2

    .line 1229
    iput-object p1, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    .line 1231
    :goto_0
    invoke-direct {p0, p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->computeContentLength(Ljava/lang/Object;)V

    .line 1232
    return-void

    .line 1217
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null content"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, p1

    .line 1225
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1227
    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContentBytes:[B

    goto :goto_0
.end method

.method public setContentLength(Ljavax2/sip/header/ContentLengthHeader;)V
    .locals 2
    .param p1, "contentLength"    # Ljavax2/sip/header/ContentLengthHeader;

    .prologue
    .line 1688
    :try_start_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->contentLengthHeader:Lgov2/nist/javax2/sip/header/ContentLength;

    invoke-interface {p1}, Ljavax2/sip/header/ContentLengthHeader;->getContentLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/ContentLength;->setContentLength(I)V
    :try_end_0
    .catch Ljavax2/sip/InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1692
    :goto_0
    return-void

    .line 1690
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setFrom(Ljavax2/sip/header/FromHeader;)V
    .locals 0
    .param p1, "from"    # Ljavax2/sip/header/FromHeader;

    .prologue
    .line 1134
    invoke-virtual {p0, p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->setHeader(Ljavax2/sip/header/Header;)V

    .line 1136
    return-void
.end method

.method public setHeader(Lgov2/nist/javax2/sip/header/SIPHeaderList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgov2/nist/javax2/sip/header/SIPHeaderList",
            "<",
            "Lgov2/nist/javax2/sip/header/Via;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1012
    .local p1, "sipHeaderList":Lgov2/nist/javax2/sip/header/SIPHeaderList;, "Lgov2/nist/javax2/sip/header/SIPHeaderList<Lgov2/nist/javax2/sip/header/Via;>;"
    invoke-virtual {p0, p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->setHeader(Ljavax2/sip/header/Header;)V

    .line 1013
    return-void
.end method

.method public setHeader(Ljavax2/sip/header/Header;)V
    .locals 6
    .param p1, "sipHeader"    # Ljavax2/sip/header/Header;

    .prologue
    move-object v2, p1

    .line 572
    check-cast v2, Lgov2/nist/javax2/sip/header/SIPHeader;

    .line 573
    .local v2, "header":Lgov2/nist/javax2/sip/header/SIPHeader;
    if-eqz v2, :cond_1

    .line 575
    :try_start_0
    instance-of v4, v2, Lgov2/nist/javax2/sip/header/SIPHeaderList;

    if-nez v4, :cond_2

    .line 580
    :cond_0
    invoke-virtual {v2}, Lgov2/nist/javax2/sip/header/SIPHeader;->getHeaderName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lgov2/nist/javax2/sip/message/SIPMessage;->removeHeader(Ljava/lang/String;)V

    .line 581
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v4, v5}, Lgov2/nist/javax2/sip/message/SIPMessage;->attachHeader(Lgov2/nist/javax2/sip/header/SIPHeader;ZZ)V
    :try_end_0
    .catch Lgov2/nist/javax2/sip/message/SIPDuplicateHeaderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    :goto_0
    return-void

    .line 573
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "null header!"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 576
    :cond_2
    :try_start_1
    move-object v0, v2

    check-cast v0, Lgov2/nist/javax2/sip/header/SIPHeaderList;

    move-object v3, v0

    .line 578
    .local v3, "hl":Lgov2/nist/javax2/sip/header/SIPHeaderList;, "Lgov2/nist/javax2/sip/header/SIPHeaderList<*>;"
    invoke-virtual {v3}, Lgov2/nist/javax2/sip/header/SIPHeaderList;->isEmpty()Z
    :try_end_1
    .catch Lgov2/nist/javax2/sip/message/SIPDuplicateHeaderException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    return-void

    .line 584
    .end local v3    # "hl":Lgov2/nist/javax2/sip/header/SIPHeaderList;, "Lgov2/nist/javax2/sip/header/SIPHeaderList<*>;"
    :catch_0
    move-exception v1

    .line 583
    .local v1, "ex":Lgov2/nist/javax2/sip/message/SIPDuplicateHeaderException;
    invoke-static {v1}, Lgov2/nist/core/InternalErrorHandler;->handleException(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setMaxForwards(Ljavax2/sip/header/MaxForwardsHeader;)V
    .locals 0
    .param p1, "maxForwards"    # Ljavax2/sip/header/MaxForwardsHeader;

    .prologue
    .line 1064
    invoke-virtual {p0, p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->setHeader(Ljavax2/sip/header/Header;)V

    .line 1065
    return-void
.end method

.method public setMessageContent(Ljava/lang/String;ZZI)V
    .locals 4
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "strict"    # Z
    .param p3, "computeContentLength"    # Z
    .param p4, "givenLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1274
    invoke-direct {p0, p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->computeContentLength(Ljava/lang/Object;)V

    .line 1275
    if-eqz p3, :cond_1

    .line 1283
    :cond_0
    iput-object p1, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    .line 1284
    iput-object v1, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContentBytes:[B

    .line 1285
    iput-object v1, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    .line 1286
    return-void

    .line 1276
    :cond_1
    if-eqz p2, :cond_3

    :cond_2
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->contentLengthHeader:Lgov2/nist/javax2/sip/header/ContentLength;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/ContentLength;->getContentLength()I

    move-result v0

    if-ge v0, p4, :cond_0

    .line 1278
    :goto_0
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid content length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->contentLengthHeader:Lgov2/nist/javax2/sip/header/ContentLength;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/header/ContentLength;->getContentLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 1276
    :cond_3
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->contentLengthHeader:Lgov2/nist/javax2/sip/header/ContentLength;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/ContentLength;->getContentLength()I

    move-result v0

    if-eq v0, p4, :cond_2

    goto :goto_0
.end method

.method public setMessageContent([BZI)V
    .locals 4
    .param p1, "content"    # [B
    .param p2, "computeContentLength"    # Z
    .param p3, "givenLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1309
    invoke-direct {p0, p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->computeContentLength(Ljava/lang/Object;)V

    .line 1310
    if-eqz p2, :cond_1

    .line 1315
    :cond_0
    iput-object p1, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContentBytes:[B

    .line 1316
    iput-object v1, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContent:Ljava/lang/String;

    .line 1317
    iput-object v1, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->messageContentObject:Ljava/lang/Object;

    .line 1318
    return-void

    .line 1310
    :cond_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->contentLengthHeader:Lgov2/nist/javax2/sip/header/ContentLength;

    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/ContentLength;->getContentLength()I

    move-result v0

    if-ge v0, p3, :cond_0

    .line 1312
    new-instance v0, Ljava/text/ParseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid content length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->contentLengthHeader:Lgov2/nist/javax2/sip/header/ContentLength;

    invoke-virtual {v2}, Lgov2/nist/javax2/sip/header/ContentLength;->getContentLength()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public setNullRequest()V
    .locals 1

    .prologue
    .line 1857
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->nullRequest:Z

    .line 1858
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 1701
    iput p1, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->size:I

    .line 1702
    return-void
.end method

.method public setTo(Ljavax2/sip/header/ToHeader;)V
    .locals 0
    .param p1, "to"    # Ljavax2/sip/header/ToHeader;

    .prologue
    .line 1130
    invoke-virtual {p0, p1}, Lgov2/nist/javax2/sip/message/SIPMessage;->setHeader(Ljavax2/sip/header/Header;)V

    .line 1131
    return-void
.end method

.method public setToTag(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 1480
    :try_start_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/SIPMessage;->toHeader:Lgov2/nist/javax2/sip/header/To;

    invoke-virtual {v0, p1}, Lgov2/nist/javax2/sip/header/To;->setTag(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1483
    :goto_0
    return-void

    .line 1482
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setVia(Ljava/util/List;)V
    .locals 4
    .param p1, "viaList"    # Ljava/util/List;

    .prologue
    .line 996
    new-instance v1, Lgov2/nist/javax2/sip/header/ViaList;

    invoke-direct {v1}, Lgov2/nist/javax2/sip/header/ViaList;-><init>()V

    .line 997
    .local v1, "vList":Lgov2/nist/javax2/sip/header/ViaList;
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 998
    .local v0, "it":Ljava/util/ListIterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1002
    invoke-virtual {p0, v1}, Lgov2/nist/javax2/sip/message/SIPMessage;->setHeader(Lgov2/nist/javax2/sip/header/SIPHeaderList;)V

    .line 1003
    return-void

    .line 999
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov2/nist/javax2/sip/header/Via;

    .line 1000
    .local v2, "via":Lgov2/nist/javax2/sip/header/Via;
    invoke-virtual {v1, v2}, Lgov2/nist/javax2/sip/header/ViaList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    goto :goto_0
.end method

.method public abstract toString()Ljava/lang/String;
.end method
