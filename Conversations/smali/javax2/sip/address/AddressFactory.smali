.class public interface abstract Ljavax2/sip/address/AddressFactory;
.super Ljava/lang/Object;
.source "AddressFactory.java"


# virtual methods
.method public abstract createAddress(Ljava/lang/String;)Ljavax2/sip/address/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createAddress(Ljavax2/sip/address/URI;)Ljavax2/sip/address/Address;
.end method

.method public abstract createSipURI(Ljava/lang/String;)Ljavax2/sip/address/SipURI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createSipURI(Ljava/lang/String;Ljava/lang/String;)Ljavax2/sip/address/SipURI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createURI(Ljava/lang/String;)Ljavax2/sip/address/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
