.class public interface abstract Ljavax2/sip/message/MessageFactory;
.super Ljava/lang/Object;
.source "MessageFactory.java"


# virtual methods
.method public abstract createRequest(Ljavax2/sip/address/URI;Ljava/lang/String;Ljavax2/sip/header/CallIdHeader;Ljavax2/sip/header/CSeqHeader;Ljavax2/sip/header/FromHeader;Ljavax2/sip/header/ToHeader;Ljava/util/List;Ljavax2/sip/header/MaxForwardsHeader;)Ljavax2/sip/message/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createResponse(ILjavax2/sip/message/Request;)Ljavax2/sip/message/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
