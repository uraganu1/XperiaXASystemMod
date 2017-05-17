.class public Lgov2/nist/javax2/sip/header/UserAgent;
.super Lgov2/nist/javax2/sip/header/SIPHeader;
.source "UserAgent.java"

# interfaces
.implements Ljavax2/sip/header/UserAgentHeader;


# static fields
.field private static final serialVersionUID:J = 0x3f4cc6de175b3c07L


# instance fields
.field protected productTokens:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "User-Agent"

    .line 85
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 86
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/header/UserAgent;->productTokens:Ljava/util/List;

    .line 87
    return-void
.end method

.method private encodeProduct()Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    .local v1, "tokens":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lgov2/nist/javax2/sip/header/UserAgent;->productTokens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 65
    .local v0, "it":Ljava/util/ListIterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 66
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method


# virtual methods
.method public addProductToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "pt"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/UserAgent;->productTokens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 125
    invoke-super {p0}, Lgov2/nist/javax2/sip/header/SIPHeader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/UserAgent;

    .line 126
    .local v0, "retval":Lgov2/nist/javax2/sip/header/UserAgent;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/UserAgent;->productTokens:Ljava/util/List;

    if-nez v1, :cond_0

    .line 127
    :goto_0
    return-object v0

    .line 126
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    iget-object v2, p0, Lgov2/nist/javax2/sip/header/UserAgent;->productTokens:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lgov2/nist/javax2/sip/header/UserAgent;->productTokens:Ljava/util/List;

    goto :goto_0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lgov2/nist/javax2/sip/header/UserAgent;->encodeProduct()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
