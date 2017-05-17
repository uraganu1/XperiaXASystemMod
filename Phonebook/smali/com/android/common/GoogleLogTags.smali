.class public Lcom/android/common/GoogleLogTags;
.super Ljava/lang/Object;
.source "GoogleLogTags.java"


# static fields
.field public static final C2DM:I = 0x31ce5

.field public static final EXP_DET_SNET:I = 0x324b3

.field public static final GLS_ACCOUNT_SAVED:I = 0x320d1

.field public static final GLS_ACCOUNT_TRIED:I = 0x320d0

.field public static final GLS_AUTHENTICATE:I = 0x320d2

.field public static final GOOGLE_HTTP_REQUEST:I = 0x318fa

.field public static final GOOGLE_MAIL_SWITCH:I = 0x320d3

.field public static final GTALKSERVICE:I = 0x31ce1

.field public static final GTALK_CONNECTION:I = 0x31ce2

.field public static final GTALK_CONN_CLOSE:I = 0x31ce3

.field public static final GTALK_HEARTBEAT_RESET:I = 0x31ce4

.field public static final SETUP_COMPLETED:I = 0x320cf

.field public static final SETUP_IO_ERROR:I = 0x320cb

.field public static final SETUP_NO_DATA_NETWORK:I = 0x320ce

.field public static final SETUP_REQUIRED_CAPTCHA:I = 0x320ca

.field public static final SETUP_RETRIES_EXHAUSTED:I = 0x320cd

.field public static final SETUP_SERVER_ERROR:I = 0x320cc

.field public static final SETUP_SERVER_TIMEOUT:I = 0x320c9

.field public static final SNET:I = 0x324b1

.field public static final SYNC_DETAILS:I = 0x318f9

.field public static final SYSTEM_UPDATE:I = 0x31129

.field public static final SYSTEM_UPDATE_USER:I = 0x3112a

.field public static final TRANSACTION_EVENT:I = 0x31895

.field public static final VENDING_RECONSTRUCT:I = 0x31511


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeC2Dm(ILjava/lang/String;II)V
    .locals 3
    .param p0, "packetType"    # I
    .param p1, "persistentId"    # Ljava/lang/String;
    .param p2, "streamId"    # I
    .param p3, "lastStreamId"    # I

    .prologue
    .line 126
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0x31ce5

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 125
    return-void
.end method

.method public static writeExpDetSnet(Ljava/lang/String;)V
    .locals 1
    .param p0, "payload"    # Ljava/lang/String;

    .prologue
    .line 178
    const v0, 0x324b3

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 177
    return-void
.end method

.method public static writeGlsAccountSaved(I)V
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 162
    const v0, 0x320d1

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 161
    return-void
.end method

.method public static writeGlsAccountTried(I)V
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 158
    const v0, 0x320d0

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 157
    return-void
.end method

.method public static writeGlsAuthenticate(ILjava/lang/String;)V
    .locals 3
    .param p0, "status"    # I
    .param p1, "service"    # Ljava/lang/String;

    .prologue
    .line 166
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const v1, 0x320d2

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 165
    return-void
.end method

.method public static writeGoogleHttpRequest(JILjava/lang/String;I)V
    .locals 4
    .param p0, "elapsed"    # J
    .param p2, "status"    # I
    .param p3, "appname"    # Ljava/lang/String;
    .param p4, "reused"    # I

    .prologue
    .line 106
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0x318fa

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 105
    return-void
.end method

.method public static writeGoogleMailSwitch(I)V
    .locals 1
    .param p0, "direction"    # I

    .prologue
    .line 170
    const v0, 0x320d3

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 169
    return-void
.end method

.method public static writeGtalkConnClose(II)V
    .locals 3
    .param p0, "status"    # I
    .param p1, "duration"    # I

    .prologue
    .line 118
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x31ce3

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 117
    return-void
.end method

.method public static writeGtalkConnection(I)V
    .locals 1
    .param p0, "status"    # I

    .prologue
    .line 114
    const v0, 0x31ce2

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 113
    return-void
.end method

.method public static writeGtalkHeartbeatReset(ILjava/lang/String;)V
    .locals 3
    .param p0, "intervalAndNt"    # I
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 122
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const v1, 0x31ce4

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 121
    return-void
.end method

.method public static writeGtalkservice(I)V
    .locals 1
    .param p0, "eventtype"    # I

    .prologue
    .line 110
    const v0, 0x31ce1

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 109
    return-void
.end method

.method public static writeSetupCompleted()V
    .locals 2

    .prologue
    .line 154
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x320cf

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 153
    return-void
.end method

.method public static writeSetupIoError(Ljava/lang/String;)V
    .locals 1
    .param p0, "status"    # Ljava/lang/String;

    .prologue
    .line 138
    const v0, 0x320cb

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 137
    return-void
.end method

.method public static writeSetupNoDataNetwork()V
    .locals 2

    .prologue
    .line 150
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x320ce

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 149
    return-void
.end method

.method public static writeSetupRequiredCaptcha(Ljava/lang/String;)V
    .locals 1
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 134
    const v0, 0x320ca

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 133
    return-void
.end method

.method public static writeSetupRetriesExhausted()V
    .locals 2

    .prologue
    .line 146
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x320cd

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 145
    return-void
.end method

.method public static writeSetupServerError()V
    .locals 2

    .prologue
    .line 142
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x320cc

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 141
    return-void
.end method

.method public static writeSetupServerTimeout()V
    .locals 2

    .prologue
    .line 130
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x320c9

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 129
    return-void
.end method

.method public static writeSnet(Ljava/lang/String;)V
    .locals 1
    .param p0, "payload"    # Ljava/lang/String;

    .prologue
    .line 174
    const v0, 0x324b1

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 173
    return-void
.end method

.method public static writeSyncDetails(Ljava/lang/String;IILjava/lang/String;)V
    .locals 3
    .param p0, "authority"    # Ljava/lang/String;
    .param p1, "send"    # I
    .param p2, "recv"    # I
    .param p3, "details"    # Ljava/lang/String;

    .prologue
    .line 102
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p3, v0, v1

    const v1, 0x318f9

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 101
    return-void
.end method

.method public static writeSystemUpdate(IIJLjava/lang/String;)V
    .locals 4
    .param p0, "status"    # I
    .param p1, "downloadResult"    # I
    .param p2, "bytes"    # J
    .param p4, "url"    # Ljava/lang/String;

    .prologue
    .line 86
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    aput-object p4, v0, v1

    const v1, 0x31129

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 85
    return-void
.end method

.method public static writeSystemUpdateUser(Ljava/lang/String;)V
    .locals 1
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 90
    const v0, 0x3112a

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 89
    return-void
.end method

.method public static writeTransactionEvent(Ljava/lang/String;)V
    .locals 1
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 98
    const v0, 0x31895

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 97
    return-void
.end method

.method public static writeVendingReconstruct(I)V
    .locals 1
    .param p0, "changes"    # I

    .prologue
    .line 94
    const v0, 0x31511

    invoke-static {v0, p0}, Landroid/util/EventLog;->writeEvent(II)I

    .line 93
    return-void
.end method
