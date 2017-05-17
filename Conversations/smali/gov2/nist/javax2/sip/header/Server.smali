.class public Lgov2/nist/javax2/sip/header/Server;
.super Lgov2/nist/javax2/sip/header/SIPHeader;
.source "Server.java"

# interfaces
.implements Ljavax2/sip/header/ServerHeader;


# static fields
.field private static final serialVersionUID:J = -0x31ca4c7c2de02b7dL


# instance fields
.field protected productTokens:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string/jumbo v0, "Server"

    .line 89
    invoke-direct {p0, v0}, Lgov2/nist/javax2/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 90
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/header/Server;->productTokens:Ljava/util/List;

    .line 91
    return-void
.end method

.method private encodeProduct()Ljava/lang/String;
    .locals 3

    .prologue
    .line 63
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 64
    .local v1, "tokens":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lgov2/nist/javax2/sip/header/Server;->productTokens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 66
    .local v0, "it":Ljava/util/ListIterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 73
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 67
    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0
.end method


# virtual methods
.method public addProductToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "pt"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/Server;->productTokens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Lgov2/nist/javax2/sip/header/Server;->encodeProduct()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
