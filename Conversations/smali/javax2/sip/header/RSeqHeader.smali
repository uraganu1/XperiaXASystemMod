.class public interface abstract Ljavax2/sip/header/RSeqHeader;
.super Ljava/lang/Object;
.source "RSeqHeader.java"

# interfaces
.implements Ljavax2/sip/header/Header;


# virtual methods
.method public abstract getSeqNumber()J
.end method

.method public abstract setSeqNumber(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/InvalidArgumentException;
        }
    .end annotation
.end method
