.class public Lgov2/nist/javax2/sip/header/RouteList;
.super Lgov2/nist/javax2/sip/header/SIPHeaderList;
.source "RouteList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov2/nist/javax2/sip/header/SIPHeaderList",
        "<",
        "Lgov2/nist/javax2/sip/header/Route;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2f4a3d58ba83ad94L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-class v0, Lgov2/nist/javax2/sip/header/Route;

    const-string/jumbo v1, "Route"

    .line 50
    invoke-direct {p0, v0, v1}, Lgov2/nist/javax2/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lgov2/nist/javax2/sip/header/RouteList;

    invoke-direct {v0}, Lgov2/nist/javax2/sip/header/RouteList;-><init>()V

    .line 56
    .local v0, "retval":Lgov2/nist/javax2/sip/header/RouteList;
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/RouteList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/header/RouteList;->clonehlist(Ljava/util/List;)Lgov2/nist/javax2/sip/header/SIPHeaderList;

    .line 57
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 64
    invoke-super {p0}, Lgov2/nist/javax2/sip/header/SIPHeaderList;->encode()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    .line 62
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    .line 71
    instance-of v5, p1, Lgov2/nist/javax2/sip/header/RouteList;

    if-eqz v5, :cond_1

    move-object v4, p1

    .line 72
    check-cast v4, Lgov2/nist/javax2/sip/header/RouteList;

    .line 73
    .local v4, "that":Lgov2/nist/javax2/sip/header/RouteList;
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/RouteList;->size()I

    move-result v5

    invoke-virtual {v4}, Lgov2/nist/javax2/sip/header/RouteList;->size()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 74
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/RouteList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 75
    .local v0, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov2/nist/javax2/sip/header/Route;>;"
    invoke-virtual {v4}, Lgov2/nist/javax2/sip/header/RouteList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 76
    .local v1, "it1":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov2/nist/javax2/sip/header/Route;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 81
    const/4 v5, 0x1

    return v5

    .line 71
    .end local v0    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov2/nist/javax2/sip/header/Route;>;"
    .end local v1    # "it1":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov2/nist/javax2/sip/header/Route;>;"
    .end local v4    # "that":Lgov2/nist/javax2/sip/header/RouteList;
    :cond_1
    return v7

    .line 73
    .restart local v4    # "that":Lgov2/nist/javax2/sip/header/RouteList;
    :cond_2
    return v7

    .line 77
    .restart local v0    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov2/nist/javax2/sip/header/Route;>;"
    .restart local v1    # "it1":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov2/nist/javax2/sip/header/Route;>;"
    :cond_3
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov2/nist/javax2/sip/header/Route;

    .line 78
    .local v2, "route":Lgov2/nist/javax2/sip/header/Route;
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov2/nist/javax2/sip/header/Route;

    .line 79
    .local v3, "route1":Lgov2/nist/javax2/sip/header/Route;
    invoke-virtual {v2, v3}, Lgov2/nist/javax2/sip/header/Route;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    return v7
.end method
