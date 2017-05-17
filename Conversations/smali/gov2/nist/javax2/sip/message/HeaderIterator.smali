.class public Lgov2/nist/javax2/sip/message/HeaderIterator;
.super Ljava/lang/Object;
.source "HeaderIterator.java"

# interfaces
.implements Ljava/util/ListIterator;


# instance fields
.field private index:I

.field private sipHeader:Lgov2/nist/javax2/sip/header/SIPHeader;

.field private sipMessage:Lgov2/nist/javax2/sip/message/SIPMessage;

.field private toRemove:Z


# direct methods
.method protected constructor <init>(Lgov2/nist/javax2/sip/message/SIPMessage;Lgov2/nist/javax2/sip/header/SIPHeader;)V
    .locals 0
    .param p1, "sipMessage"    # Lgov2/nist/javax2/sip/message/SIPMessage;
    .param p2, "sipHeader"    # Lgov2/nist/javax2/sip/header/SIPHeader;

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lgov2/nist/javax2/sip/message/HeaderIterator;->sipMessage:Lgov2/nist/javax2/sip/message/SIPMessage;

    .line 53
    iput-object p2, p0, Lgov2/nist/javax2/sip/message/HeaderIterator;->sipHeader:Lgov2/nist/javax2/sip/header/SIPHeader;

    .line 54
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/Object;

    .prologue
    .line 83
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 97
    iget v1, p0, Lgov2/nist/javax2/sip/message/HeaderIterator;->index:I

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 101
    iget v1, p0, Lgov2/nist/javax2/sip/message/HeaderIterator;->index:I

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 57
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/HeaderIterator;->sipHeader:Lgov2/nist/javax2/sip/header/SIPHeader;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Lgov2/nist/javax2/sip/message/HeaderIterator;->index:I

    if-eq v0, v1, :cond_0

    .line 58
    iput-boolean v1, p0, Lgov2/nist/javax2/sip/message/HeaderIterator;->toRemove:Z

    .line 59
    iput v1, p0, Lgov2/nist/javax2/sip/message/HeaderIterator;->index:I

    .line 60
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/HeaderIterator;->sipHeader:Lgov2/nist/javax2/sip/header/SIPHeader;

    return-object v0
.end method

.method public nextIndex()I
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 71
    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/HeaderIterator;->sipHeader:Lgov2/nist/javax2/sip/header/SIPHeader;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Lgov2/nist/javax2/sip/message/HeaderIterator;->index:I

    if-eqz v0, :cond_0

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lgov2/nist/javax2/sip/message/HeaderIterator;->toRemove:Z

    .line 66
    iput v1, p0, Lgov2/nist/javax2/sip/message/HeaderIterator;->index:I

    .line 67
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/HeaderIterator;->sipHeader:Lgov2/nist/javax2/sip/header/SIPHeader;

    return-object v0
.end method

.method public previousIndex()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 75
    iget v1, p0, Lgov2/nist/javax2/sip/message/HeaderIterator;->index:I

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public remove()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/HeaderIterator;->sipHeader:Lgov2/nist/javax2/sip/header/SIPHeader;

    if-eqz v0, :cond_0

    .line 88
    iget-boolean v0, p0, Lgov2/nist/javax2/sip/message/HeaderIterator;->toRemove:Z

    if-nez v0, :cond_1

    .line 92
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 87
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 89
    :cond_1
    iput-object v1, p0, Lgov2/nist/javax2/sip/message/HeaderIterator;->sipHeader:Lgov2/nist/javax2/sip/header/SIPHeader;

    .line 90
    iget-object v0, p0, Lgov2/nist/javax2/sip/message/HeaderIterator;->sipMessage:Lgov2/nist/javax2/sip/message/SIPMessage;

    iget-object v1, p0, Lgov2/nist/javax2/sip/message/HeaderIterator;->sipHeader:Lgov2/nist/javax2/sip/header/SIPHeader;

    invoke-virtual {v1}, Lgov2/nist/javax2/sip/header/SIPHeader;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgov2/nist/javax2/sip/message/SIPMessage;->removeHeader(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .param p1, "header"    # Ljava/lang/Object;

    .prologue
    .line 79
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
