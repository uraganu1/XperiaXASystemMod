.class public abstract Lgov2/nist/javax2/sip/header/SIPHeaderList;
.super Lgov2/nist/javax2/sip/header/SIPHeader;
.source "SIPHeaderList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljavax2/sip/header/Header;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<HDR:",
        "Lgov2/nist/javax2/sip/header/SIPHeader;",
        ">",
        "Lgov2/nist/javax2/sip/header/SIPHeader;",
        "Ljava/util/List",
        "<THDR;>;",
        "Ljavax2/sip/header/Header;"
    }
.end annotation


# static fields
.field private static prettyEncode:Z


# instance fields
.field protected hlist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<THDR;>;"
        }
    .end annotation
.end field

.field private myClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<THDR;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    sput-boolean v0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->prettyEncode:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lgov2/nist/javax2/sip/header/SIPHeader;-><init>()V

    .line 67
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    .line 68
    return-void
.end method

.method protected constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "hname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<THDR;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    .local p1, "objclass":Ljava/lang/Class;, "Ljava/lang/Class<THDR;>;"
    invoke-direct {p0}, Lgov2/nist/javax2/sip/header/SIPHeaderList;-><init>()V

    .line 78
    iput-object p2, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->myClass:Ljava/lang/Class;

    .line 80
    return-void
.end method


# virtual methods
.method public add(ILgov2/nist/javax2/sip/header/SIPHeader;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITHDR;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 365
    .local p2, "sipHeader":Lgov2/nist/javax2/sip/header/SIPHeader;, "THDR;"
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 366
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 50
    check-cast p2, Lgov2/nist/javax2/sip/header/SIPHeader;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lgov2/nist/javax2/sip/header/SIPHeaderList;->add(ILgov2/nist/javax2/sip/header/SIPHeader;)V

    return-void
.end method

.method public add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THDR;)Z"
        }
    .end annotation

    .prologue
    .line 89
    .local p1, "objectToAdd":Lgov2/nist/javax2/sip/header/SIPHeader;, "THDR;"
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 50
    check-cast p1, Lgov2/nist/javax2/sip/header/SIPHeader;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lgov2/nist/javax2/sip/header/SIPHeaderList;->add(Lgov2/nist/javax2/sip/header/SIPHeader;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+THDR;>;)Z"
        }
    .end annotation

    .prologue
    .line 501
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+THDR;>;"
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+THDR;>;)Z"
        }
    .end annotation

    .prologue
    .line 497
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+THDR;>;"
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 511
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 6

    .prologue
    .line 426
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 428
    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .local v1, "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x0

    .line 429
    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgov2/nist/javax2/sip/header/SIPHeaderList;

    .line 430
    .local v3, "retval":Lgov2/nist/javax2/sip/header/SIPHeaderList;, "Lgov2/nist/javax2/sip/header/SIPHeaderList<THDR;>;"
    iget-object v4, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    iput-object v4, v3, Lgov2/nist/javax2/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    .line 431
    iget-object v4, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->myClass:Ljava/lang/Class;

    iput-object v4, v3, Lgov2/nist/javax2/sip/header/SIPHeaderList;->myClass:Ljava/lang/Class;

    .line 432
    iget-object v4, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-virtual {v3, v4}, Lgov2/nist/javax2/sip/header/SIPHeaderList;->clonehlist(Ljava/util/List;)Lgov2/nist/javax2/sip/header/SIPHeaderList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "cons":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v3    # "retval":Lgov2/nist/javax2/sip/header/SIPHeaderList;, "Lgov2/nist/javax2/sip/header/SIPHeaderList<THDR;>;"
    :catch_0
    move-exception v2

    .line 434
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Could not clone!"

    invoke-direct {v4, v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected final clonehlist(Ljava/util/List;)Lgov2/nist/javax2/sip/header/SIPHeaderList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<THDR;>;)",
            "Lgov2/nist/javax2/sip/header/SIPHeaderList",
            "<THDR;>;"
        }
    .end annotation

    .prologue
    .line 439
    .local p1, "hlistToClone":Ljava/util/List;, "Ljava/util/List<THDR;>;"
    if-nez p1, :cond_1

    .line 445
    :cond_0
    return-object p0

    .line 440
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<THDR;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 441
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax2/sip/header/Header;

    .line 442
    .local v0, "h":Ljavax2/sip/header/Header;
    iget-object v3, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljavax2/sip/header/Header;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov2/nist/javax2/sip/header/SIPHeader;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public concatenate(Lgov2/nist/javax2/sip/header/SIPHeaderList;Z)V
    .locals 1
    .param p2, "topFlag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgov2/nist/javax2/sip/header/SIPHeaderList",
            "<THDR;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .local p1, "other":Lgov2/nist/javax2/sip/header/SIPHeaderList;, "Lgov2/nist/javax2/sip/header/SIPHeaderList<THDR;>;"
    const/4 v0, 0x0

    .line 126
    if-eqz p2, :cond_0

    .line 130
    invoke-virtual {p0, v0, p1}, Lgov2/nist/javax2/sip/header/SIPHeaderList;->addAll(ILjava/util/Collection;)Z

    .line 133
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-virtual {p0, p1}, Lgov2/nist/javax2/sip/header/SIPHeaderList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "header"    # Ljava/lang/Object;

    .prologue
    .line 514
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 506
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public encode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/SIPHeaderList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 146
    iget-object v2, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 151
    iget-object v2, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    const-string/jumbo v3, "WWW-Authenticate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 162
    :cond_0
    :goto_0
    iget-object v2, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 163
    .local v0, "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<THDR;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    .line 175
    .end local v0    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<THDR;>;"
    :goto_2
    return-object p1

    .line 147
    :cond_1
    iget-object v2, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 151
    :cond_2
    iget-object v2, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    const-string/jumbo v3, "Proxy-Authenticate"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    const-string/jumbo v3, "Authorization"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    const-string/jumbo v3, "Proxy-Authorization"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-boolean v2, Lgov2/nist/javax2/sip/header/SIPHeaderList;->prettyEncode:Z

    if-nez v2, :cond_4

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lgov2/nist/javax2/sip/header/ExtensionHeaderList;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 170
    iget-object v2, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 171
    invoke-virtual {p0, p1}, Lgov2/nist/javax2/sip/header/SIPHeaderList;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    const-string/jumbo v2, "\r\n"

    .line 172
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 151
    :cond_4
    iget-object v2, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    const-string/jumbo v3, "Via"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    const-string/jumbo v3, "Route"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    const-string/jumbo v3, "Record-Route"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_0

    .line 164
    .restart local v0    # "li":Ljava/util/ListIterator;, "Ljava/util/ListIterator<THDR;>;"
    :cond_5
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/header/SIPHeader;

    .line 165
    .local v1, "sipheader":Lgov2/nist/javax2/sip/header/SIPHeader;, "THDR;"
    invoke-virtual {v1, p1}, Lgov2/nist/javax2/sip/header/SIPHeader;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    goto/16 :goto_1
.end method

.method protected encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 472
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov2/nist/javax2/sip/header/SIPHeaderList;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 476
    invoke-virtual {p0}, Lgov2/nist/javax2/sip/header/SIPHeaderList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 478
    .local v0, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<THDR;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgov2/nist/javax2/sip/header/SIPHeader;

    .line 479
    .local v1, "sipHeader":Lgov2/nist/javax2/sip/header/SIPHeader;
    if-eq v1, p0, :cond_0

    .line 481
    invoke-virtual {v1, p1}, Lgov2/nist/javax2/sip/header/SIPHeader;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 483
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 493
    return-object p1

    .line 480
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Unexpected circularity in SipHeaderList"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 484
    :cond_1
    iget-object v2, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    const-string/jumbo v3, "Privacy"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, ";"

    .line 487
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    const-string/jumbo v2, ","

    .line 485
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 379
    if-eq p1, p0, :cond_0

    .line 381
    instance-of v3, p1, Lgov2/nist/javax2/sip/header/SIPHeaderList;

    if-nez v3, :cond_1

    .line 388
    return v1

    .line 379
    :cond_0
    return v2

    :cond_1
    move-object v0, p1

    .line 382
    check-cast v0, Lgov2/nist/javax2/sip/header/SIPHeaderList;

    .line 383
    .local v0, "that":Lgov2/nist/javax2/sip/header/SIPHeaderList;, "Lgov2/nist/javax2/sip/header/SIPHeaderList<Lgov2/nist/javax2/sip/header/SIPHeader;>;"
    iget-object v3, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    iget-object v4, v0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    if-eq v3, v4, :cond_2

    .line 385
    iget-object v3, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 386
    iget-object v1, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    iget-object v2, v0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 384
    :cond_2
    return v2

    .line 385
    :cond_3
    iget-object v3, v0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    if-nez v3, :cond_5

    :cond_4
    move v1, v2

    :goto_0
    return v1

    :cond_5
    iget-object v3, v0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0
.end method

.method public get(I)Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)THDR;"
        }
    .end annotation

    .prologue
    .line 523
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/SIPHeader;

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lgov2/nist/javax2/sip/header/SIPHeaderList;->get(I)Lgov2/nist/javax2/sip/header/SIPHeader;

    move-result-object v0

    return-object v0
.end method

.method public getFirst()Ljavax2/sip/header/Header;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 206
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    if-nez v0, :cond_1

    .line 207
    :cond_0
    return-object v2

    .line 206
    :cond_1
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax2/sip/header/Header;

    return-object v0
.end method

.method public getMyClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<THDR;>;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->myClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 609
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->headerName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 532
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<THDR;>;"
        }
    .end annotation

    .prologue
    .line 542
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 552
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<THDR;>;"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<THDR;>;"
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)THDR;"
        }
    .end annotation

    .prologue
    .line 573
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/SIPHeader;

    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lgov2/nist/javax2/sip/header/SIPHeaderList;->remove(I)Lgov2/nist/javax2/sip/header/SIPHeader;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 563
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 582
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public removeFirst()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 273
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 590
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public set(ILgov2/nist/javax2/sip/header/SIPHeader;)Lgov2/nist/javax2/sip/header/SIPHeader;
    .locals 1
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITHDR;)THDR;"
        }
    .end annotation

    .prologue
    .line 619
    .local p2, "sipHeader":Lgov2/nist/javax2/sip/header/SIPHeader;, "THDR;"
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov2/nist/javax2/sip/header/SIPHeader;

    return-object v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 50
    check-cast p2, Lgov2/nist/javax2/sip/header/SIPHeader;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lgov2/nist/javax2/sip/header/SIPHeaderList;->set(ILgov2/nist/javax2/sip/header/SIPHeader;)Lgov2/nist/javax2/sip/header/SIPHeader;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "index1"    # I
    .param p2, "index2"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<THDR;>;"
        }
    .end annotation

    .prologue
    .line 599
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 628
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Lgov2/nist/javax2/sip/header/SIPHeaderList;->hlist:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
