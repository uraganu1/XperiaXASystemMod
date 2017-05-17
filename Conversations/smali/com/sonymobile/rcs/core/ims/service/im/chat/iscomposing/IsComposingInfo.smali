.class public Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;
.super Ljava/lang/Object;
.source "IsComposingInfo.java"


# instance fields
.field private contentType:Ljava/lang/String;

.field private lastActiveDate:J

.field private refreshTime:J

.field private state:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;->state:Z

    .line 50
    iput-wide v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;->lastActiveDate:J

    .line 55
    iput-wide v2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;->refreshTime:J

    const-string/jumbo v0, ""

    .line 60
    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;->contentType:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public static buildIsComposingInfo(Z)Ljava/lang/String;
    .locals 4
    .param p0, "status"    # Z

    .prologue
    const-string/jumbo v0, "idle"

    .line 112
    .local v0, "state":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 115
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\r\n<isComposing xmlns=\"urn:ietf:params:xml:ns:im-iscomposing\"\r\nxmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\r\nxsi:schemaLocation=\"urn:ietf:params:xml:ns:im-composing iscomposing.xsd\">\r\n<state>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</state>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<contenttype>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "text/plain"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</contenttype>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<lastactive>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sonymobile/rcs/utils/DateUtils;->encodeDate(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</lastactive>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "<refresh>60</refresh>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "</isComposing>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v0, "active"

    .line 113
    goto :goto_0
.end method


# virtual methods
.method public getRefreshTime()J
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;->refreshTime:J

    return-wide v0
.end method

.method public isStateActive()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;->state:Z

    return v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentType"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;->contentType:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setLastActiveDate(Ljava/lang/String;)V
    .locals 4
    .param p1, "lastActiveTimeStamp"    # Ljava/lang/String;

    .prologue
    .line 77
    invoke-static {p1}, Lcom/sonymobile/rcs/utils/DateUtils;->decodeDate(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;->lastActiveDate:J

    .line 78
    return-void
.end method

.method public setRefreshTime(Ljava/lang/String;)V
    .locals 2
    .param p1, "refreshTime"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;->refreshTime:J

    .line 82
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 2
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "active"

    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iput-boolean v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;->state:Z

    .line 74
    :goto_0
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/iscomposing/IsComposingInfo;->state:Z

    goto :goto_0
.end method
