.class Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;
.super Lcom/google/android/mms/pdu/PduHeaders;
.source "SomcPduPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/data/SomcPduPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SomcPduHeaders"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1595
    invoke-direct {p0}, Lcom/google/android/mms/pdu/PduHeaders;-><init>()V

    .line 1594
    return-void
.end method


# virtual methods
.method appendEncodedStringValueEx(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    .locals 0
    .param p1, "value"    # Lcom/google/android/mms/pdu/EncodedStringValue;
    .param p2, "field"    # I

    .prologue
    .line 1603
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;->appendEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 1602
    return-void
.end method

.method getOctetEx(I)I
    .locals 1
    .param p1, "field"    # I

    .prologue
    .line 1619
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method setEncodedStringValueEx(Lcom/google/android/mms/pdu/EncodedStringValue;I)V
    .locals 0
    .param p1, "value"    # Lcom/google/android/mms/pdu/EncodedStringValue;
    .param p2, "field"    # I

    .prologue
    .line 1599
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;->setEncodedStringValue(Lcom/google/android/mms/pdu/EncodedStringValue;I)V

    .line 1598
    return-void
.end method

.method setLongIntegerEx(JI)V
    .locals 1
    .param p1, "value"    # J
    .param p3, "field"    # I

    .prologue
    .line 1611
    invoke-virtual {p0, p1, p2, p3}, Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;->setLongInteger(JI)V

    .line 1610
    return-void
.end method

.method setOctetEx(II)V
    .locals 0
    .param p1, "value"    # I
    .param p2, "field"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    .line 1615
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;->setOctet(II)V

    .line 1614
    return-void
.end method

.method setTextStringEx([BI)V
    .locals 0
    .param p1, "value"    # [B
    .param p2, "field"    # I

    .prologue
    .line 1607
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/conversations/data/SomcPduPersister$SomcPduHeaders;->setTextString([BI)V

    .line 1606
    return-void
.end method
