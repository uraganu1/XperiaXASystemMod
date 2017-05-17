.class public Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;
.super Ljava/lang/Object;
.source "ChatUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildCpimDeliveryReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "from"    # Ljava/lang/String;
    .param p1, "to"    # Ljava/lang/String;
    .param p2, "route"    # Ljava/lang/String;
    .param p3, "imdn"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v3, ""

    .line 553
    .local v3, "routeHeader":Ljava/lang/String;
    if-nez p2, :cond_1

    .line 561
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "From: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->formatCpimSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "To"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->formatCpimSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "NS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "imdn <urn:ietf:params:imdn>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "imdn.Message-ID"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/sonymobile/rcs/utils/IdGenerator;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "DateTime"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/sonymobile/rcs/utils/DateUtils;->encodeDate(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "Content-type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "message/imdn+xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "Content-Disposition"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "notification"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "Content-length"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, "cpim":Ljava/lang/String;
    return-object v0

    .end local v0    # "cpim":Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "\n"

    .line 554
    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "routeEntries":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 555
    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 556
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "imdn.IMDN-Route: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 555
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static buildCpimMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "from"    # Ljava/lang/String;
    .param p1, "to"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "contentType"    # Ljava/lang/String;

    .prologue
    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "From: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->formatCpimSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "To"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->formatCpimSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "DateTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sonymobile/rcs/utils/DateUtils;->encodeDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Content-type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";charset=utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 506
    .local v0, "cpim":Ljava/lang/String;
    return-object v0
.end method

.method public static buildCpimMessageWithImdn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "from"    # Ljava/lang/String;
    .param p1, "to"    # Ljava/lang/String;
    .param p2, "messageId"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "contentType"    # Ljava/lang/String;

    .prologue
    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "From: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->formatCpimSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "To"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->formatCpimSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "NS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "imdn <urn:ietf:params:imdn>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "imdn.Message-ID"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "DateTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sonymobile/rcs/utils/DateUtils;->encodeDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "imdn.Disposition-Notification"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "positive-delivery"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "display"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Content-Type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";charset=utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "Content-Length"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, "cpim":Ljava/lang/String;
    return-object v0
.end method

.method public static buildDeliveryReport(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "msgId"    # Ljava/lang/String;
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    const-string/jumbo v1, "displayed"

    .line 642
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "delivered"

    .line 644
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v0, "processing-notification"

    .line 650
    .local v0, "method":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<imdn xmlns=\"urn:ietf:params:xml:ns:imdn\">\r\n<message-id>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</message-id>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<datetime>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sonymobile/rcs/utils/DateUtils;->encodeDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</datetime>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "><status><"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " /></status></"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</imdn>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .end local v0    # "method":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "display-notification"

    .line 643
    .restart local v0    # "method":Ljava/lang/String;
    goto :goto_0

    .end local v0    # "method":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "delivery-notification"

    .line 645
    .restart local v0    # "method":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public static buildGeolocDocument(Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "geoloc"    # Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;
    .param p1, "contact"    # Ljava/lang/String;
    .param p2, "msgId"    # Ljava/lang/String;

    .prologue
    .line 667
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<rcsenvelope xmlns=\"urn:gsma:params:xml:ns:rcs:rcs:geolocation\" xmlns:rpid=\"urn:ietf:params:xml:ns:pidf:rpid\" xmlns:gp=\"urn:ietf:params:xml:ns:pidf:geopriv10\" xmlns:gml=\"http://www.opengis.net/gml\" xmlns:gs=\"http://www.opengis.net/pidflo/1.0\" entity=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 674
    .local v0, "document":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->getExpiration()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sonymobile/rcs/utils/DateUtils;->encodeDate(J)Ljava/lang/String;

    move-result-object v1

    .line 675
    .local v1, "expire":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "<rcspushlocation id=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" label=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\" >"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "<rpid:place-type rpid:until=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</rpid:place-type>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "<rpid:time-offset rpid:until=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\"></rpid:time-offset>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "<gp:geopriv>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "<gp:location-info>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "<gs:Circle srsName=\"urn:ogc:def:crs:EPSG::4326\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "<gml:pos>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->getAltitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</gml:pos>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "<gs:radius uom=\"urn:ogc:def:uom:EPSG::9001\">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;->getAccuracy()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</gs:radius>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</gs:Circle>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</gp:location-info>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "<gp:usage-rules>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "<gp:retention-expiry>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</gp:retention-expiry>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</gp:usage-rules>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</gp:geopriv>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "<timestamp>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/sonymobile/rcs/utils/DateUtils;->encodeDate(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</timestamp>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</rcspushlocation>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 692
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "</rcsenvelope>\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 693
    return-object v0
.end method

.method public static createFileThumbnail(Ljava/lang/String;)[B
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 930
    :try_start_0
    invoke-static {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getRotation(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->generateThumbnailStream(ILjava/io/InputStream;)Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 932
    return-object v1
.end method

.method public static createFirstMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    .locals 6
    .param p0, "remote"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "messageId"    # Ljava/lang/String;
    .param p3, "imdn"    # Z

    .prologue
    const/4 v5, 0x0

    .line 765
    if-nez p1, :cond_1

    .line 769
    :cond_0
    return-object v5

    .line 765
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 766
    if-eqz p2, :cond_2

    move-object v1, p2

    .line 767
    .local v1, "msgId":Ljava/lang/String;
    :goto_0
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    invoke-static {p1}, Lcom/sonymobile/rcs/utils/StringUtils;->encodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, p0

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    return-object v0

    .line 766
    .end local v1    # "msgId":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->generateMessageId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static createThumbnail(Landroid/net/Uri;)[B
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 944
    :try_start_0
    invoke-static {}, Lcom/sonymobile/rcs/platform/file/FileFactory;->getFactory()Lcom/sonymobile/rcs/platform/file/FileFactory;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/sonymobile/rcs/platform/file/FileFactory;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 945
    .local v3, "stream":Ljava/io/InputStream;
    invoke-static {}, Lcom/sonymobile/rcs/platform/AndroidFactory;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/sonymobile/rcs/utils/ExifUtil;->getOrientation(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v1

    .line 946
    .local v1, "orientation":I
    invoke-static {v1}, Lcom/sonymobile/rcs/utils/ExifUtil;->getExifInDegrees(I)I

    move-result v2

    .line 947
    .local v2, "orientationRotation":I
    invoke-static {v2, v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->generateThumbnailStream(ILjava/io/InputStream;)Ljava/io/ByteArrayOutputStream;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .end local v1    # "orientation":I
    .end local v2    # "orientationRotation":I
    .end local v3    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 949
    return-object v4
.end method

.method private static exifToDegrees(I)I
    .locals 1
    .param p0, "exifOrientation"    # I

    .prologue
    const/4 v0, 0x6

    .line 1084
    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    .line 1085
    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    .line 1086
    if-eq p0, v0, :cond_2

    const/4 v0, 0x0

    .line 1087
    return v0

    :cond_0
    const/16 v0, 0x5a

    .line 1084
    return v0

    :cond_1
    const/16 v0, 0xb4

    .line 1085
    return v0

    :cond_2
    const/16 v0, 0x10e

    .line 1086
    return v0
.end method

.method public static extractCpimMessage(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;
    .locals 8
    .param p0, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    const/4 v5, 0x0

    .line 871
    .local v5, "message":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 872
    .local v1, "content":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getBoundaryContentType()Ljava/lang/String;

    move-result-object v0

    .line 873
    .local v0, "boundary":Ljava/lang/String;
    new-instance v6, Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;

    invoke-direct {v6, v1, v0}, Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    .local v6, "multi":Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;
    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;->isMultipart()Z

    move-result v7

    if-nez v7, :cond_1

    .line 885
    .end local v0    # "boundary":Ljava/lang/String;
    .end local v1    # "content":Ljava/lang/String;
    .end local v5    # "message":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;
    .end local v6    # "multi":Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;
    :cond_0
    :goto_0
    return-object v5

    .restart local v0    # "boundary":Ljava/lang/String;
    .restart local v1    # "content":Ljava/lang/String;
    .restart local v5    # "message":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;
    .restart local v6    # "multi":Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;
    :cond_1
    const-string/jumbo v7, "message/cpim"

    .line 875
    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;->getPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 876
    .local v3, "cpimPart":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 878
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct {v2, v7}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;-><init>([B)V

    .line 879
    .local v2, "cpimParser":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;->getCpimMessage()Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .local v5, "message":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;
    goto :goto_0

    .line 884
    .end local v0    # "boundary":Ljava/lang/String;
    .end local v1    # "content":Ljava/lang/String;
    .end local v2    # "cpimParser":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;
    .end local v3    # "cpimPart":Ljava/lang/String;
    .end local v6    # "multi":Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;
    .local v5, "message":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 883
    goto :goto_0
.end method

.method public static extractFileThumbnail(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)[B
    .locals 10
    .param p0, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    const/4 v9, 0x0

    .line 1099
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 1100
    .local v1, "content":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getBoundaryContentType()Ljava/lang/String;

    move-result-object v0

    .line 1101
    .local v0, "boundary":Ljava/lang/String;
    new-instance v6, Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;

    invoke-direct {v6, v1, v0}, Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1102
    .local v6, "multi":Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;
    invoke-virtual {v6}, Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;->isMultipart()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1133
    :cond_0
    return-object v9

    :cond_1
    const-string/jumbo v8, "image/jpeg"

    .line 1104
    invoke-virtual {v6, v8}, Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;->getPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1105
    .local v4, "jpeg":Ljava/lang/String;
    if-nez v4, :cond_2

    const-string/jumbo v8, "image/png"

    .line 1111
    invoke-virtual {v6, v8}, Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;->getPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1112
    .local v7, "png":Ljava/lang/String;
    if-nez v7, :cond_3

    const-string/jumbo v8, "video/mp4"

    .line 1118
    invoke-virtual {v6, v8}, Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;->getPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1119
    .local v5, "mp4":Ljava/lang/String;
    if-nez v5, :cond_4

    const-string/jumbo v8, "video/3gpp"

    .line 1124
    invoke-virtual {v6, v8}, Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;->getPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1125
    .local v3, "gpp":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1127
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/rcs/utils/Base64;->decodeBase64([B)[B

    move-result-object v8

    return-object v8

    .line 1107
    .end local v3    # "gpp":Ljava/lang/String;
    .end local v5    # "mp4":Ljava/lang/String;
    .end local v7    # "png":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/rcs/utils/Base64;->decodeBase64([B)[B

    move-result-object v8

    return-object v8

    .line 1114
    .restart local v7    # "png":Ljava/lang/String;
    :cond_3
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/rcs/utils/Base64;->decodeBase64([B)[B

    move-result-object v8

    return-object v8

    .line 1121
    .restart local v5    # "mp4":Ljava/lang/String;
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-static {v8}, Lcom/sonymobile/rcs/utils/Base64;->decodeBase64([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    return-object v8

    .line 1132
    .end local v0    # "boundary":Ljava/lang/String;
    .end local v1    # "content":Ljava/lang/String;
    .end local v4    # "jpeg":Ljava/lang/String;
    .end local v5    # "mp4":Ljava/lang/String;
    .end local v6    # "multi":Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;
    .end local v7    # "png":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1131
    .local v2, "e":Ljava/lang/Exception;
    return-object v9
.end method

.method public static formatCpimSipUri(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 469
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "<"

    .line 471
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "\""

    .line 476
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "sip:"

    .line 480
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 482
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 473
    :cond_1
    return-object p0

    .line 477
    :cond_2
    return-object p0

    :cond_3
    const-string/jumbo v0, "tel:"

    .line 480
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/sonymobile/rcs/utils/PhoneUtils;->formatNumberToSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generateChatResourceList(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 325
    .local p0, "participants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .local v2, "uriList":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 326
    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 331
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<resource-lists xmlns=\"urn:ietf:params:xml:ns:resource-lists\" xmlns:cc=\"urn:ietf:params:xml:ns:copycontrol\"><list>\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "</list></resource-lists>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 335
    .local v3, "xml":Ljava/lang/String;
    return-object v3

    .line 327
    .end local v3    # "xml":Ljava/lang/String;
    :cond_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 328
    .local v0, "contact":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " <entry cc:copyControl=\"to\" uri=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/PhoneUtils;->formatNumberToSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\"/>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 326
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static generateExtendedChatResourceList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .param p0, "existingParticipant"    # Ljava/lang/String;
    .param p1, "replaceHeader"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 348
    .local p2, "newParticipants":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .local v2, "uriList":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 349
    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 361
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<resource-lists xmlns=\"urn:ietf:params:xml:ns:resource-lists\" xmlns:cc=\"urn:ietf:params:xml:ns:copycontrol\"><list>\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "</list></resource-lists>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 365
    .local v3, "xml":Ljava/lang/String;
    return-object v3

    .line 350
    .end local v3    # "xml":Ljava/lang/String;
    :cond_0
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 351
    .local v0, "contact":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 356
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " <entry cc:copyControl=\"to\" uri=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/sonymobile/rcs/utils/PhoneUtils;->formatNumberToSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\"/>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 352
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " <entry cc:copyControl=\"to\" uri=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Lcom/sonymobile/rcs/utils/PhoneUtils;->formatNumberToSipUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/sonymobile/rcs/utils/StringUtils;->encodeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\"/>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static generateMessageId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Msg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/sonymobile/rcs/utils/IdGenerator;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5f

    const/16 v3, 0x2d

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static generateThumbnailStream(ILjava/io/InputStream;)Ljava/io/ByteArrayOutputStream;
    .locals 22
    .param p0, "rotationInDegrees"    # I
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 957
    :try_start_0
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 958
    .local v10, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x0

    iput-boolean v3, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 962
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->available()I

    move-result v3

    const/high16 v4, 0x200000

    div-int/2addr v3, v4

    iput v3, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v3, 0x0

    .line 963
    move-object/from16 v0, p1

    invoke-static {v0, v3, v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 965
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual/range {p1 .. p1}, Ljava/io/InputStream;->close()V

    .line 966
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 967
    .local v5, "width":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 971
    .local v6, "height":I
    int-to-double v0, v5

    move-wide/from16 v18, v0

    int-to-double v0, v6

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    const-wide v20, 0x4103880000000000L    # 160000.0

    div-double v18, v20, v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v14, v0

    .local v14, "scale":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 972
    cmpl-float v3, v14, v3

    if-lez v3, :cond_0

    const/high16 v14, 0x3f800000    # 1.0f

    .line 975
    :cond_0
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 976
    .local v7, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v7, v14, v14}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 979
    if-nez p0, :cond_2

    :goto_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 985
    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .local v13, "resizedBitmap":Landroid/graphics/Bitmap;
    const/16 v12, 0x64

    .line 992
    .local v12, "quality":I
    :cond_1
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 993
    .local v11, "out":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v13, v3, v12, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 994
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 995
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 996
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v16, v0

    .line 997
    .local v16, "size":J
    add-int/lit8 v12, v12, -0xa

    .line 998
    const-wide/16 v18, 0x2800

    cmp-long v3, v16, v18

    if-lez v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_1

    .line 999
    return-object v11

    .line 980
    .end local v11    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "quality":I
    .end local v13    # "resizedBitmap":Landroid/graphics/Bitmap;
    .end local v16    # "size":J
    :cond_2
    move/from16 v0, p0

    int-to-float v3, v0

    invoke-virtual {v7, v3}, Landroid/graphics/Matrix;->preRotate(F)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 999
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v14    # "scale":F
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 1001
    return-object v3

    .line 998
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v5    # "width":I
    .restart local v6    # "height":I
    .restart local v7    # "matrix":Landroid/graphics/Matrix;
    .restart local v10    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v11    # "out":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "quality":I
    .restart local v13    # "resizedBitmap":Landroid/graphics/Bitmap;
    .restart local v14    # "scale":F
    .restart local v16    # "size":J
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static generateVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)[B
    .locals 22
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 1014
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v14, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v14}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 1016
    .local v14, "retriever":Landroid/media/MediaMetadataRetriever;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v14, v0, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const-wide/16 v18, -0x1

    .line 1017
    move-wide/from16 v0, v18

    invoke-virtual {v14, v0, v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1021
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 1022
    .local v5, "width":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 1026
    .local v6, "height":I
    int-to-double v0, v5

    move-wide/from16 v18, v0

    int-to-double v0, v6

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    const-wide v20, 0x4103880000000000L    # 160000.0

    div-double v18, v20, v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v15, v0

    .local v15, "scale":F
    const/high16 v3, 0x3f800000    # 1.0f

    .line 1027
    cmpl-float v3, v15, v3

    if-lez v3, :cond_0

    const/high16 v15, 0x3f800000    # 1.0f

    .line 1030
    :cond_0
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 1031
    .local v7, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v7, v15, v15}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1034
    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v13

    .local v13, "resizedBitmap":Landroid/graphics/Bitmap;
    const/16 v12, 0x64

    .line 1041
    .local v12, "quality":I
    :cond_1
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1042
    .local v11, "out":Ljava/io/ByteArrayOutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v13, v3, v12, v11}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1043
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 1044
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 1045
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v16, v0

    .line 1046
    .local v16, "size":J
    add-int/lit8 v12, v12, -0xa

    .line 1047
    const-wide/16 v18, 0x2800

    cmp-long v3, v16, v18

    if-lez v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    if-nez v3, :cond_1

    .line 1049
    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 1057
    :try_start_1
    invoke-virtual {v14}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1060
    :goto_1
    return-object v3

    .line 1047
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 1060
    :catch_0
    move-exception v4

    goto :goto_1

    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "width":I
    .end local v6    # "height":I
    .end local v7    # "matrix":Landroid/graphics/Matrix;
    .end local v11    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "quality":I
    .end local v13    # "resizedBitmap":Landroid/graphics/Bitmap;
    .end local v15    # "scale":F
    .end local v16    # "size":J
    :catch_1
    move-exception v10

    .line 1057
    .local v10, "ex":Ljava/lang/RuntimeException;
    :try_start_2
    invoke-virtual {v14}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    const/4 v3, 0x0

    .line 1060
    return-object v3

    :catch_2
    move-exception v3

    goto :goto_2

    .end local v10    # "ex":Ljava/lang/RuntimeException;
    :catch_3
    move-exception v9

    .line 1057
    .local v9, "e":Ljava/io/IOException;
    :try_start_3
    invoke-virtual {v14}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_4

    :goto_3
    const/4 v3, 0x0

    .line 1060
    return-object v3

    :catch_4
    move-exception v3

    goto :goto_3

    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 1057
    :try_start_4
    invoke-virtual {v14}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    .line 1060
    :goto_4
    throw v3

    :catch_5
    move-exception v4

    goto :goto_4
.end method

.method public static getContributionId(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;
    .locals 3
    .param p0, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    const/4 v2, 0x0

    const-string/jumbo v1, "Contribution-ID"

    .line 174
    invoke-virtual {p0, v1}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax2/sip/header/ExtensionHeader;

    .line 176
    .local v0, "contribHeader":Ljavax2/sip/header/ExtensionHeader;
    if-nez v0, :cond_0

    .line 179
    return-object v2

    .line 177
    :cond_0
    invoke-interface {v0}, Ljavax2/sip/header/ExtensionHeader;->getValue()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFirstMessage(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    .locals 2
    .param p0, "invite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 780
    invoke-static {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getFirstMessageFromCpim(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    move-result-object v0

    .line 781
    .local v0, "msg":Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    if-nez v0, :cond_0

    .line 784
    invoke-static {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getFirstMessageFromSubject(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    move-result-object v1

    return-object v1

    .line 782
    :cond_0
    return-object v0
.end method

.method private static getFirstMessageFromCpim(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    .locals 11
    .param p0, "invite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    const/4 v4, 0x0

    .line 818
    invoke-static {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->extractCpimMessage(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;

    move-result-object v9

    .line 819
    .local v9, "cpimMsg":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;
    if-nez v9, :cond_0

    .line 834
    return-object v4

    .line 820
    :cond_0
    invoke-static {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getReferredIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v2

    .line 821
    .local v2, "remote":Ljava/lang/String;
    invoke-static {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getMessageId(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v1

    .line 822
    .local v1, "msgId":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->getMessageContent()Ljava/lang/String;

    move-result-object v10

    .line 823
    .local v10, "txt":Ljava/lang/String;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 824
    .local v6, "currentDate":Ljava/util/Date;
    invoke-virtual {v9}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->getMessageDate()Ljava/util/Date;

    move-result-object v7

    .line 825
    .local v7, "serverDate":Ljava/util/Date;
    invoke-virtual {v9}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->getIMDNRoute()Ljava/lang/String;

    move-result-object v8

    .line 826
    .local v8, "route":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getDisplayNameFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 827
    .local v3, "displayName":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 831
    :cond_1
    return-object v4

    .line 827
    :cond_2
    if-eqz v1, :cond_1

    if-eqz v10, :cond_1

    .line 828
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    invoke-static {v10}, Lcom/sonymobile/rcs/utils/StringUtils;->decodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->isImdnDisplayedRequested(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Z

    move-result v5

    invoke-direct/range {v0 .. v8}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;Ljava/util/Date;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getFirstMessageFromSubject(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    .locals 10
    .param p0, "invite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    const/4 v3, 0x0

    .line 845
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getSubject()Ljava/lang/String;

    move-result-object v9

    .line 846
    .local v9, "subject":Ljava/lang/String;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 847
    .local v6, "currentDate":Ljava/util/Date;
    if-nez v9, :cond_1

    .line 857
    :cond_0
    return-object v3

    .line 847
    :cond_1
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 848
    invoke-static {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getReferredIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v2

    .line 849
    .local v2, "remote":Ljava/lang/String;
    if-nez v2, :cond_3

    .line 854
    :cond_2
    return-object v3

    .line 849
    :cond_3
    if-eqz v9, :cond_2

    .line 850
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    invoke-static {}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->generateMessageId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9}, Lcom/sonymobile/rcs/utils/StringUtils;->decodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->isImdnDisplayedRequested(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Z

    move-result v5

    move-object v7, v6

    move-object v8, v3

    invoke-direct/range {v0 .. v8}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Date;Ljava/util/Date;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getHttpFTInfo(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;
    .locals 3
    .param p0, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    const/4 v2, 0x0

    .line 1143
    invoke-static {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getFirstMessage(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    move-result-object v0

    .line 1144
    .local v0, "message":Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    if-nez v0, :cond_1

    .line 1147
    :cond_0
    return-object v2

    .line 1144
    :cond_1
    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getTextMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1145
    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getTextMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->parseFileTransferHttpDocument([B)Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;

    move-result-object v1

    return-object v1
.end method

.method public static getIMDNRecordRoute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "msgId"    # Ljava/lang/String;

    .prologue
    .line 1174
    invoke-static {}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getInstance()Lcom/sonymobile/rcs/provider/messaging/RichMessaging;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sonymobile/rcs/provider/messaging/RichMessaging;->getIMDNRecordRoute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getListOfParticipants(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;
    .locals 9
    .param p0, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 896
    new-instance v5, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    invoke-direct {v5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;-><init>()V

    .line 898
    .local v5, "participants":Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 899
    .local v1, "content":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getBoundaryContentType()Ljava/lang/String;

    move-result-object v0

    .line 900
    .local v0, "boundary":Ljava/lang/String;
    new-instance v4, Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;

    invoke-direct {v4, v1, v0}, Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    .local v4, "multi":Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;
    invoke-virtual {v4}, Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;->isMultipart()Z

    move-result v8

    if-nez v8, :cond_1

    .line 919
    .end local v0    # "boundary":Ljava/lang/String;
    .end local v1    # "content":Ljava/lang/String;
    .end local v4    # "multi":Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;
    :cond_0
    :goto_0
    return-object v5

    .restart local v0    # "boundary":Ljava/lang/String;
    .restart local v1    # "content":Ljava/lang/String;
    .restart local v4    # "multi":Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;
    :cond_1
    const-string/jumbo v8, "application/resource-lists+xml"

    .line 903
    invoke-virtual {v4, v8}, Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;->getPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 904
    .local v3, "listPart":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 906
    new-instance v6, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;

    invoke-direct {v6, v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 909
    .end local v5    # "participants":Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;
    .local v6, "participants":Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;
    :try_start_1
    invoke-static {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getReferredIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v7

    .line 910
    .local v7, "remote":Ljava/lang/String;
    sget-object v8, Lcom/sonymobile/rcs/core/ims/ImsModule;->IMS_USER_PROFILE:Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;

    invoke-virtual {v8}, Lcom/sonymobile/rcs/core/ims/userprofile/UserProfile;->getPublicUri()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sonymobile/rcs/utils/PhoneUtils;->compareNumbers(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    if-eqz v8, :cond_2

    move-object v5, v6

    .end local v6    # "participants":Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;
    .restart local v5    # "participants":Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;
    goto :goto_0

    .line 912
    .end local v5    # "participants":Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;
    .restart local v6    # "participants":Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;
    :cond_2
    :try_start_2
    invoke-virtual {v6, v7}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;->addParticipant(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v5, v6

    .end local v6    # "participants":Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;
    .restart local v5    # "participants":Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;
    goto :goto_0

    .line 918
    .end local v0    # "boundary":Ljava/lang/String;
    .end local v1    # "content":Ljava/lang/String;
    .end local v3    # "listPart":Ljava/lang/String;
    .end local v4    # "multi":Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;
    .end local v7    # "remote":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 916
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 918
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "participants":Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;
    .restart local v0    # "boundary":Ljava/lang/String;
    .restart local v1    # "content":Ljava/lang/String;
    .restart local v3    # "listPart":Ljava/lang/String;
    .restart local v4    # "multi":Lcom/sonymobile/rcs/core/ims/network/sip/Multipart;
    .restart local v6    # "participants":Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;
    :catch_1
    move-exception v2

    move-object v5, v6

    .end local v6    # "participants":Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;
    .restart local v5    # "participants":Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;
    goto :goto_1

    .end local v5    # "participants":Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;
    .restart local v6    # "participants":Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;
    .restart local v7    # "remote":Ljava/lang/String;
    :catch_2
    move-exception v2

    move-object v5, v6

    .end local v6    # "participants":Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;
    .restart local v5    # "participants":Lcom/sonymobile/rcs/core/ims/service/im/chat/ListOfParticipant;
    goto :goto_1
.end method

.method public static getMessageId(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;
    .locals 8
    .param p0, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    const/4 v5, 0x0

    .line 448
    .local v5, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getContent()Ljava/lang/String;

    move-result-object v0

    .local v0, "content":Ljava/lang/String;
    const-string/jumbo v6, "imdn.Message-ID"

    .line 449
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .local v2, "index":I
    const/4 v6, -0x1

    .line 450
    if-ne v2, v6, :cond_0

    .line 459
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v5    # "result":Ljava/lang/String;
    :goto_0
    return-object v5

    .restart local v0    # "content":Ljava/lang/String;
    .restart local v2    # "index":I
    .restart local v5    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v6, "imdn.Message-ID"

    .line 451
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    add-int/lit8 v2, v6, 0x1

    .line 452
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "part":Ljava/lang/String;
    const/4 v6, 0x0

    const-string/jumbo v7, "\r\n"

    .line 453
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 454
    .local v3, "msgId":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .local v5, "result":Ljava/lang/String;
    goto :goto_0

    .line 458
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "msgId":Ljava/lang/String;
    .end local v4    # "part":Ljava/lang/String;
    .local v5, "result":Ljava/lang/String;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 457
    goto :goto_0
.end method

.method public static getReferredIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;
    .locals 2
    .param p0, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 206
    invoke-static {p0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getReferredByHeader(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipMessage;)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "referredBy":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 212
    invoke-static {p0}, Lcom/sonymobile/rcs/core/ims/network/sip/SipUtils;->getAssertedIdentity(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 209
    :cond_0
    return-object v0
.end method

.method private static getRotation(Ljava/lang/String;)I
    .locals 5
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 1073
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .local v1, "exif":Landroid/media/ExifInterface;
    const-string/jumbo v3, "Orientation"

    const/4 v4, 0x1

    .line 1074
    invoke-virtual {v1, v3, v4}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    const/4 v3, 0x0

    .line 1075
    invoke-static {v3}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->exifToDegrees(I)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1079
    .end local v1    # "exif":Landroid/media/ExifInterface;
    .local v2, "rotationInDegrees":I
    :goto_0
    return v2

    .line 1078
    .end local v2    # "rotationInDegrees":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    .line 1077
    .restart local v2    # "rotationInDegrees":I
    goto :goto_0
.end method

.method public static getServerDate(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/util/Date;
    .locals 2
    .param p0, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    const/4 v1, 0x0

    .line 1158
    invoke-static {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->getFirstMessage(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;

    move-result-object v0

    .line 1159
    .local v0, "message":Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;
    if-nez v0, :cond_0

    .line 1162
    return-object v1

    .line 1160
    :cond_0
    invoke-virtual {v0}, Lcom/sonymobile/rcs/service/api/client/messaging/InstantMessage;->getServerDate()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static getSubject(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Ljava/lang/String;
    .locals 4
    .param p0, "invite"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getSubject()Ljava/lang/String;

    move-result-object v1

    .line 796
    .local v1, "subject":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 799
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getViaHeaders()Ljava/util/ListIterator;

    move-result-object v0

    .line 800
    .local v0, "listOfViaHeader":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljavax2/sip/header/ViaHeader;>;"
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 808
    :goto_0
    return-object v1

    .line 797
    .end local v0    # "listOfViaHeader":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljavax2/sip/header/ViaHeader;>;"
    :cond_0
    return-object v1

    .line 801
    .restart local v0    # "listOfViaHeader":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Ljavax2/sip/header/ViaHeader;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax2/sip/header/ViaHeader;

    invoke-interface {v3}, Ljavax2/sip/header/ViaHeader;->getTransport()Ljava/lang/String;

    move-result-object v2

    .local v2, "viaProtocol":Ljava/lang/String;
    const-string/jumbo v3, "UDP"

    .line 802
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 805
    invoke-static {v1}, Lcom/sonymobile/rcs/utils/StringUtils;->decodeIso(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 803
    :cond_2
    invoke-static {v1}, Lcom/sonymobile/rcs/utils/StringUtils;->decodeUTF8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSupportedFeatureTagsForChat()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "+g.oma.sip-im"

    .line 143
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, ""

    .line 146
    .local v0, "additionalRcseTags":Ljava/lang/String;
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isGeoLocationPushSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 149
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFileTransferSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 152
    :goto_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFileTransferHttpSupported()Z

    move-result v2

    if-nez v2, :cond_2

    .line 155
    :goto_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFileTransferStoreForwardSupported()Z

    move-result v2

    if-nez v2, :cond_3

    .line 158
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_4

    .line 165
    :goto_4
    return-object v1

    .line 147
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopush,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 150
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 153
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttp,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 156
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.ftstandfw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    const-string/jumbo v2, ","

    .line 159
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 162
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "+g.3gpp.iari-ref=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 160
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static getSupportedFeatureTagsForGroupChat()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v2, "+g.oma.sip-im"

    .line 110
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, ""

    .line 113
    .local v0, "additionalRcseTags":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isGeoLocationPushSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    :goto_0
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFileTransferSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 120
    :goto_1
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFileTransferHttpSupported()Z

    move-result v2

    if-nez v2, :cond_2

    .line 123
    :goto_2
    invoke-static {}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->getInstance()Lcom/sonymobile/rcs/provider/settings/RcsSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sonymobile/rcs/provider/settings/RcsSettings;->isFileTransferStoreForwardSupported()Z

    move-result v2

    if-nez v2, :cond_3

    .line 126
    :goto_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_4

    .line 133
    :goto_4
    return-object v1

    .line 115
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.geopush,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 118
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 121
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.fthttp,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 124
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "urn%3Aurn-7%3A3gpp-application.ims.iari.rcs.ftstandfw"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    const-string/jumbo v2, ","

    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 130
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "+g.3gpp.iari-ref=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 128
    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public static isApplicationIsComposingType(Ljava/lang/String;)Z
    .locals 3
    .param p0, "mime"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 237
    if-nez p0, :cond_1

    .line 240
    :cond_0
    return v2

    .line 237
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "application/im-iscomposing+xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    const/4 v0, 0x1

    return v0
.end method

.method public static isFileTransferHttpType(Ljava/lang/String;)Z
    .locals 3
    .param p0, "mime"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 293
    if-nez p0, :cond_1

    .line 296
    :cond_0
    return v2

    .line 293
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "application/vnd.gsma.rcs-ft-http+xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    const/4 v0, 0x1

    return v0
.end method

.method public static isFileTransferOverHttp(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Z
    .locals 4
    .param p0, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    const/4 v3, 0x0

    .line 582
    invoke-static {p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->extractCpimMessage(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;

    move-result-object v0

    .line 583
    .local v0, "message":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;
    if-nez v0, :cond_1

    .line 587
    :cond_0
    return v3

    .line 583
    :cond_1
    invoke-virtual {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->getContentType()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "application/vnd.gsma.rcs-ft-http+xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 585
    const/4 v1, 0x1

    return v1
.end method

.method public static isGeolocType(Ljava/lang/String;)Z
    .locals 3
    .param p0, "mime"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 279
    if-nez p0, :cond_1

    .line 282
    :cond_0
    return v2

    .line 279
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "application/vnd.gsma.rcspushlocation+xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    const/4 v0, 0x1

    return v0
.end method

.method public static isGroupChatInvitation(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Z
    .locals 3
    .param p0, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    const-string/jumbo v2, "Contact"

    .line 190
    invoke-virtual {p0, v2}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getHeader(Ljava/lang/String;)Ljavax2/sip/header/Header;

    move-result-object v0

    check-cast v0, Ljavax2/sip/header/ContactHeader;

    .local v0, "contactHeader":Ljavax2/sip/header/ContactHeader;
    const-string/jumbo v2, "isfocus"

    .line 191
    invoke-interface {v0, v2}, Ljavax2/sip/header/ContactHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "param":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 195
    const/4 v2, 0x0

    return v2

    .line 193
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public static isImdnDeliveredRequested(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Z
    .locals 9
    .param p0, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    const/4 v8, -0x1

    .line 392
    const/4 v5, 0x0

    .line 395
    .local v5, "result":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getContent()Ljava/lang/String;

    move-result-object v0

    .local v0, "content":Ljava/lang/String;
    const-string/jumbo v6, "imdn.Disposition-Notification"

    .line 396
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 397
    .local v2, "index":I
    if-ne v2, v8, :cond_1

    .line 408
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "index":I
    :cond_0
    :goto_0
    return v5

    .restart local v0    # "content":Ljava/lang/String;
    .restart local v2    # "index":I
    :cond_1
    const-string/jumbo v6, "imdn.Disposition-Notification"

    .line 398
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    add-int/lit8 v2, v6, 0x1

    .line 399
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "part":Ljava/lang/String;
    const/4 v6, 0x0

    const-string/jumbo v7, "\r\n"

    .line 400
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .local v3, "notif":Ljava/lang/String;
    const-string/jumbo v6, "positive-delivery"

    .line 401
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eq v6, v8, :cond_0

    .line 402
    const/4 v5, 0x1

    goto :goto_0

    .line 407
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "notif":Ljava/lang/String;
    .end local v4    # "part":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 406
    .local v1, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static isImdnDisplayedRequested(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Z
    .locals 9
    .param p0, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    const/4 v8, -0x1

    .line 418
    const/4 v5, 0x0

    .line 421
    .local v5, "result":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getContent()Ljava/lang/String;

    move-result-object v0

    .local v0, "content":Ljava/lang/String;
    const-string/jumbo v6, "imdn.Disposition-Notification"

    .line 422
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 423
    .local v2, "index":I
    if-ne v2, v8, :cond_1

    .line 435
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "index":I
    :cond_0
    :goto_0
    return v5

    .restart local v0    # "content":Ljava/lang/String;
    .restart local v2    # "index":I
    :cond_1
    const-string/jumbo v6, "imdn.Disposition-Notification"

    .line 424
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v2

    add-int/lit8 v2, v6, 0x1

    .line 425
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "part":Ljava/lang/String;
    const/4 v6, 0x0

    const-string/jumbo v7, "\r\n"

    .line 426
    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .local v3, "notif":Ljava/lang/String;
    const-string/jumbo v6, "display"

    .line 427
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eq v6, v8, :cond_0

    .line 428
    const/4 v5, 0x1

    goto :goto_0

    .line 434
    .end local v0    # "content":Ljava/lang/String;
    .end local v2    # "index":I
    .end local v3    # "notif":Ljava/lang/String;
    .end local v4    # "part":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 432
    .local v1, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static isImdnService(Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;)Z
    .locals 4
    .param p0, "request"    # Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;

    .prologue
    const/4 v3, 0x0

    .line 375
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, "content":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/sonymobile/rcs/core/ims/protocol/sip/SipRequest;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, "contentType":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 381
    :cond_0
    return v3

    :cond_1
    const-string/jumbo v2, "imdn <urn:ietf:params:imdn>"

    .line 377
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const-string/jumbo v2, "message/cpim"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 379
    const/4 v2, 0x1

    return v2
.end method

.method public static isMessageCpimType(Ljava/lang/String;)Z
    .locals 3
    .param p0, "mime"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 251
    if-nez p0, :cond_1

    .line 254
    :cond_0
    return v2

    .line 251
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "message/cpim"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    const/4 v0, 0x1

    return v0
.end method

.method public static isMessageImdnType(Ljava/lang/String;)Z
    .locals 3
    .param p0, "mime"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 265
    if-nez p0, :cond_1

    .line 268
    :cond_0
    return v2

    .line 265
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "message/imdn+xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    const/4 v0, 0x1

    return v0
.end method

.method public static isTextPlainType(Ljava/lang/String;)Z
    .locals 3
    .param p0, "mime"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 223
    if-nez p0, :cond_1

    .line 226
    :cond_0
    return v2

    .line 223
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "text/plain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const/4 v0, 0x1

    return v0
.end method

.method public static parseCpimDeliveryReport(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;
    .locals 6
    .param p0, "cpim"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 601
    .local v4, "imdn":Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;
    :try_start_0
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;

    invoke-direct {v2, p0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;-><init>(Ljava/lang/String;)V

    .line 602
    .local v2, "cpimParser":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;->getCpimMessage()Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;

    move-result-object v1

    .line 603
    .local v1, "cpimMsg":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;
    if-nez v1, :cond_1

    .line 614
    .end local v1    # "cpimMsg":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;
    .end local v2    # "cpimParser":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;
    .end local v4    # "imdn":Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;
    :cond_0
    :goto_0
    return-object v4

    .line 605
    .restart local v1    # "cpimMsg":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;
    .restart local v2    # "cpimParser":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;
    .restart local v4    # "imdn":Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;
    :cond_1
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->isMessageImdnType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 608
    invoke-virtual {v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;->getMessageContent()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/rcs/core/ims/service/im/chat/ChatUtils;->parseDeliveryReport(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .local v4, "imdn":Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;
    goto :goto_0

    .line 613
    .end local v0    # "contentType":Ljava/lang/String;
    .end local v1    # "cpimMsg":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimMessage;
    .end local v2    # "cpimParser":Lcom/sonymobile/rcs/core/ims/service/im/chat/cpim/CpimParser;
    .local v4, "imdn":Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 612
    goto :goto_0
.end method

.method public static parseDeliveryReport(Ljava/lang/String;)Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;
    .locals 5
    .param p0, "xml"    # Ljava/lang/String;

    .prologue
    .line 625
    :try_start_0
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 626
    .local v1, "input":Lorg/xml/sax/InputSource;
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;

    invoke-direct {v2, v1}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;-><init>(Lorg/xml/sax/InputSource;)V

    .line 627
    .local v2, "parser":Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;->getImdnDocument()Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnDocument;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .end local v1    # "input":Lorg/xml/sax/InputSource;
    .end local v2    # "parser":Lcom/sonymobile/rcs/core/ims/service/im/chat/imdn/ImdnParser;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 629
    return-object v3
.end method

.method public static parseFileTransferHttpDocument([B)Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;
    .locals 4
    .param p0, "xml"    # [B

    .prologue
    .line 730
    :try_start_0
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 731
    .local v1, "ftHttpInput":Lorg/xml/sax/InputSource;
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;

    invoke-direct {v2, v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;-><init>(Lorg/xml/sax/InputSource;)V

    .line 732
    .local v2, "ftHttpParser":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;->getFtInfo()Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoDocument;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .end local v1    # "ftHttpInput":Lorg/xml/sax/InputSource;
    .end local v2    # "ftHttpParser":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpInfoParser;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 734
    return-object v3
.end method

.method public static parseFileTransferHttpResumeInfo([B)Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;
    .locals 4
    .param p0, "xml"    # [B

    .prologue
    .line 746
    :try_start_0
    new-instance v1, Lorg/xml/sax/InputSource;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 747
    .local v1, "ftHttpInput":Lorg/xml/sax/InputSource;
    new-instance v2, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfoParser;

    invoke-direct {v2, v1}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfoParser;-><init>(Lorg/xml/sax/InputSource;)V

    .line 749
    .local v2, "ftHttpParser":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfoParser;
    invoke-virtual {v2}, Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfoParser;->getResumeInfo()Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .end local v1    # "ftHttpInput":Lorg/xml/sax/InputSource;
    .end local v2    # "ftHttpParser":Lcom/sonymobile/rcs/core/ims/service/im/filetransfer/http/FileTransferHttpResumeInfoParser;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 751
    return-object v3
.end method

.method public static parseGeolocDocument(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;
    .locals 15
    .param p0, "xml"    # Ljava/lang/String;

    .prologue
    .line 704
    :try_start_0
    new-instance v13, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v13, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 705
    .local v13, "geolocInput":Lorg/xml/sax/InputSource;
    new-instance v14, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoParser;

    invoke-direct {v14, v13}, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoParser;-><init>(Lorg/xml/sax/InputSource;)V

    .line 706
    .local v14, "geolocParser":Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoParser;
    invoke-virtual {v14}, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoParser;->getGeoLocInfo()Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;

    move-result-object v12

    .line 707
    .local v12, "geolocDocument":Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;
    if-nez v12, :cond_0

    const/4 v1, 0x0

    .line 719
    return-object v1

    .line 708
    :cond_0
    new-instance v0, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;->getAltitude()D

    move-result-wide v6

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;->getExpiration()J

    move-result-wide v8

    invoke-virtual {v12}, Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;->getRadius()F

    move-result v10

    invoke-direct/range {v0 .. v10}, Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;-><init>(Ljava/lang/String;DDDJF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 714
    .local v0, "geoloc":Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;
    return-object v0

    .line 718
    .end local v0    # "geoloc":Lcom/sonymobile/rcs/service/api/client/messaging/GeolocPush;
    .end local v12    # "geolocDocument":Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoDocument;
    .end local v13    # "geolocInput":Lorg/xml/sax/InputSource;
    .end local v14    # "geolocParser":Lcom/sonymobile/rcs/core/ims/service/im/chat/geoloc/GeolocInfoParser;
    :catch_0
    move-exception v11

    .local v11, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 717
    return-object v1
.end method
