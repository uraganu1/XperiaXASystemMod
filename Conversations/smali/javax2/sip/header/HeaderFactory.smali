.class public interface abstract Ljavax2/sip/header/HeaderFactory;
.super Ljava/lang/Object;
.source "HeaderFactory.java"


# virtual methods
.method public abstract createAllowHeader(Ljava/lang/String;)Ljavax2/sip/header/AllowHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createCSeqHeader(JLjava/lang/String;)Ljavax2/sip/header/CSeqHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;,
            Ljavax2/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract createCallIdHeader(Ljava/lang/String;)Ljavax2/sip/header/CallIdHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createContactHeader(Ljavax2/sip/address/Address;)Ljavax2/sip/header/ContactHeader;
.end method

.method public abstract createContentLengthHeader(I)Ljavax2/sip/header/ContentLengthHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract createContentTypeHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/ContentTypeHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createExpiresHeader(I)Ljavax2/sip/header/ExpiresHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract createFromHeader(Ljavax2/sip/address/Address;Ljava/lang/String;)Ljavax2/sip/header/FromHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createHeader(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/Header;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createMaxForwardsHeader(I)Ljavax2/sip/header/MaxForwardsHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract createReasonHeader(Ljava/lang/String;ILjava/lang/String;)Ljavax2/sip/header/ReasonHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/InvalidArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createRouteHeader(Ljavax2/sip/address/Address;)Ljavax2/sip/header/RouteHeader;
.end method

.method public abstract createSupportedHeader(Ljava/lang/String;)Ljavax2/sip/header/SupportedHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createToHeader(Ljavax2/sip/address/Address;Ljava/lang/String;)Ljavax2/sip/header/ToHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createViaHeader(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljavax2/sip/header/ViaHeader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax2/sip/InvalidArgumentException;,
            Ljava/text/ParseException;
        }
    .end annotation
.end method
