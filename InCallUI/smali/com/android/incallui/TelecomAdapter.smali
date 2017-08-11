.class final Lcom/android/incallui/TelecomAdapter;
.super Ljava/lang/Object;
.source "TelecomAdapter.java"


# static fields
.field private static sInstance:Lcom/android/incallui/TelecomAdapter;


# instance fields
.field private mInCallService:Landroid/telecom/InCallService;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/android/incallui/TelecomAdapter;
    .locals 2

    .prologue
    .line 41
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 42
    sget-object v0, Lcom/android/incallui/TelecomAdapter;->sInstance:Lcom/android/incallui/TelecomAdapter;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/android/incallui/TelecomAdapter;

    invoke-direct {v0}, Lcom/android/incallui/TelecomAdapter;-><init>()V

    sput-object v0, Lcom/android/incallui/TelecomAdapter;->sInstance:Lcom/android/incallui/TelecomAdapter;

    .line 45
    :cond_0
    sget-object v0, Lcom/android/incallui/TelecomAdapter;->sInstance:Lcom/android/incallui/TelecomAdapter;

    return-object v0

    .line 41
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 62
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v0

    .line 63
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method addCall()V
    .locals 4

    .prologue
    .line 176
    iget-object v2, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    if-eqz v2, :cond_0

    .line 177
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 183
    const-string/jumbo v2, "add_call_mode"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 185
    :try_start_0
    const-string/jumbo v2, "Sending the add Call intent"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    iget-object v2, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    invoke-virtual {v2, v1}, Landroid/telecom/InCallService;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 187
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "Activity for adding calls isn\'t found."

    invoke-static {p0, v2, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method answerCall(Ljava/lang/String;I)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 68
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0, p2}, Landroid/telecom/Call;->answer(I)V

    .line 66
    :goto_0
    return-void

    .line 71
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error answerCall, call not in call list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method canAddCall()Z
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    invoke-virtual {v0}, Landroid/telecom/InCallService;->canAddCall()Z

    move-result v0

    goto :goto_0
.end method

.method public clearInCallService()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    .line 57
    return-void
.end method

.method disconnectCall(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 86
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Landroid/telecom/Call;->disconnect()V

    .line 84
    :goto_0
    return-void

    .line 89
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error disconnectCall, call not in call list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method holdCall(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 95
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0}, Landroid/telecom/Call;->hold()V

    .line 93
    :goto_0
    return-void

    .line 98
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error holdCall, call not in call list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method merge(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 148
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_2

    .line 149
    invoke-virtual {v0}, Landroid/telecom/Call;->getConferenceableCalls()Ljava/util/List;

    move-result-object v1

    .line 150
    .local v1, "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 151
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Call;

    invoke-virtual {v0, v2}, Landroid/telecom/Call;->conference(Landroid/telecom/Call;)V

    .line 146
    .end local v1    # "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    :cond_0
    :goto_0
    return-void

    .line 153
    .restart local v1    # "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    :cond_1
    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v2

    .line 154
    const/4 v3, 0x4

    .line 153
    invoke-virtual {v2, v3}, Landroid/telecom/Call$Details;->can(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    invoke-virtual {v0}, Landroid/telecom/Call;->mergeConference()V

    goto :goto_0

    .line 159
    .end local v1    # "conferenceable":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Call;>;"
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "error merge, call not in call list "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method mute(Z)V
    .locals 1
    .param p1, "shouldMute"    # Z

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    invoke-virtual {v0, p1}, Landroid/telecom/InCallService;->setMuted(Z)V

    .line 111
    :goto_0
    return-void

    .line 115
    :cond_0
    const-string/jumbo v0, "error mute, mInCallService is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p3, "setDefault"    # Z

    .prologue
    .line 224
    if-nez p2, :cond_0

    .line 225
    const-string/jumbo v1, "error phoneAccountSelected, accountHandle is null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 230
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_1

    .line 231
    invoke-virtual {v0, p2, p3}, Landroid/telecom/Call;->phoneAccountSelected(Landroid/telecom/PhoneAccountHandle;Z)V

    .line 223
    :goto_0
    return-void

    .line 233
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error phoneAccountSelected, call not in call list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method playDtmfTone(Ljava/lang/String;C)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "digit"    # C

    .prologue
    .line 197
    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 198
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0, p2}, Landroid/telecom/Call;->playDtmfTone(C)V

    .line 196
    :goto_0
    return-void

    .line 201
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error playDtmfTone, call not in call list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method postDialContinue(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "proceed"    # Z

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 216
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0, p2}, Landroid/telecom/Call;->postDialContinue(Z)V

    .line 214
    :goto_0
    return-void

    .line 219
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error postDialContinue, call not in call list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method rejectCall(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "rejectWithMessage"    # Z
    .param p3, "message"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 77
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0, p2, p3}, Landroid/telecom/Call;->reject(ZLjava/lang/String;)V

    .line 75
    :goto_0
    return-void

    .line 80
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error rejectCall, call not in call list: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method separateCall(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 139
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Landroid/telecom/Call;->splitFromConference()V

    .line 137
    :goto_0
    return-void

    .line 142
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error separateCall, call not in call list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method setAudioRoute(I)V
    .locals 1
    .param p1, "route"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    invoke-virtual {v0, p1}, Landroid/telecom/InCallService;->setAudioRoute(I)V

    .line 119
    :goto_0
    return-void

    .line 123
    :cond_0
    const-string/jumbo v0, "error setAudioRoute, mInCallService is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setInCallService(Landroid/telecom/InCallService;)V
    .locals 0
    .param p1, "inCallService"    # Landroid/telecom/InCallService;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    .line 52
    return-void
.end method

.method somcExecuteCommandAsync(I[Ljava/lang/String;)V
    .locals 1
    .param p1, "commandId"    # I
    .param p2, "options"    # [Ljava/lang/String;

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    invoke-virtual {v0, p1, p2}, Landroid/telecom/InCallService;->somcExecuteCommandAsync(I[Ljava/lang/String;)V

    .line 249
    :goto_0
    return-void

    .line 253
    :cond_0
    const-string/jumbo v0, "error somcExecuteCommand, mInCallService is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method somcGetBoolCommand(ILjava/lang/String;)Z
    .locals 2
    .param p1, "commandId"    # I
    .param p2, "option"    # Ljava/lang/String;

    .prologue
    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    invoke-virtual {v1, p1, p2}, Landroid/telecom/InCallService;->somcGetCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 272
    .end local v0    # "result":Z
    :goto_0
    return v0

    .line 270
    .restart local v0    # "result":Z
    :cond_0
    const-string/jumbo v1, "error somcGetBoolCommand, mInCallService is null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method somcGetIntCommand(ILjava/lang/String;)I
    .locals 4
    .param p1, "commandId"    # I
    .param p2, "option"    # Ljava/lang/String;

    .prologue
    .line 284
    const/4 v1, -0x1

    .line 285
    .local v1, "result":I
    iget-object v2, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    if-eqz v2, :cond_0

    .line 287
    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    invoke-virtual {v2, p1, p2}, Landroid/telecom/InCallService;->somcGetCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 294
    :goto_0
    return v1

    .line 288
    :catch_0
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NumberFormatException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 292
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    const-string/jumbo v2, "error somcGetIntCommand, mInCallService is null"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method somcGetStringCommand(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "commandId"    # I
    .param p2, "option"    # Ljava/lang/String;

    .prologue
    .line 306
    const/4 v0, 0x0

    .line 307
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    invoke-virtual {v1, p1, p2}, Landroid/telecom/InCallService;->somcGetCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    .end local v0    # "result":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 310
    .restart local v0    # "result":Ljava/lang/String;
    :cond_0
    const-string/jumbo v1, "error somcGetStringCommand, mInCallService is null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method stopDtmfTone(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 207
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0}, Landroid/telecom/Call;->stopDtmfTone()V

    .line 205
    :goto_0
    return-void

    .line 210
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error stopDtmfTone, call not in call list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method swap(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 165
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {v0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v1

    .line 167
    const/16 v2, 0x8

    .line 166
    invoke-virtual {v1, v2}, Landroid/telecom/Call$Details;->can(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v0}, Landroid/telecom/Call;->swapConference()V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error swap, call not in call list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method switchToOtherActiveSub(Ljava/lang/String;)V
    .locals 1
    .param p1, "subId"    # Ljava/lang/String;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/incallui/TelecomAdapter;->mInCallService:Landroid/telecom/InCallService;

    if-eqz v0, :cond_0

    .line 130
    const-string/jumbo v0, "no actions has been done!!!!!!!!!!!!!"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    :goto_0
    return-void

    .line 133
    :cond_0
    const-string/jumbo v0, "error switchToOtherActiveSub, mPhone is null"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method unholdCall(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/android/incallui/TelecomAdapter;->getTelecommCallById(Ljava/lang/String;)Landroid/telecom/Call;

    move-result-object v0

    .line 104
    .local v0, "call":Landroid/telecom/Call;
    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Landroid/telecom/Call;->unhold()V

    .line 102
    :goto_0
    return-void

    .line 107
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "error unholdCall, call not in call list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
