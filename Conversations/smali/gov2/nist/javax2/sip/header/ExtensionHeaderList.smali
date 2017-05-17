.class public Lgov2/nist/javax2/sip/header/ExtensionHeaderList;
.super Lgov2/nist/javax2/sip/header/SIPHeaderList;
.source "ExtensionHeaderList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov2/nist/javax2/sip/header/SIPHeaderList",
        "<",
        "Lgov2/nist/javax2/sip/header/ExtensionHeaderImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x40f769eda9aeca95L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-class v0, Lgov2/nist/javax2/sip/header/ExtensionHeaderImpl;

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, v0, v1}, Lgov2/nist/javax2/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "hName"    # Ljava/lang/String;

    .prologue
    const-class v0, Lgov2/nist/javax2/sip/header/ExtensionHeaderImpl;

    .line 54
    invoke-direct {p0, v0, p1}, Lgov2/nist/javax2/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 55
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Lgov2/nist/javax2/sip/header/ExtensionHeaderList;

    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ExtensionHeaderList;->headerName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lgov2/nist/javax2/sip/header/ExtensionHeaderList;-><init>(Ljava/lang/String;)V

    .line 49
    .local v0, "retval":Lgov2/nist/javax2/sip/header/ExtensionHeaderList;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/ExtensionHeaderList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/ExtensionHeaderList;->clonehlist(Ljava/util/List;)Lgov2/nist/javax2/sip/header/SIPHeaderList;

    .line 50
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 62
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    .local v2, "retval":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/ExtensionHeaderList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 64
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov2/nist/javax2/sip/header/ExtensionHeaderImpl;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 65
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/ExtensionHeaderImpl;

    .line 66
    .local v0, "eh":Lgov2/nist/javax2/sip/header/ExtensionHeaderImpl;
    invoke-virtual {v0}, Lgov2/nist/javax2/sip/header/ExtensionHeaderImpl;->encode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method
