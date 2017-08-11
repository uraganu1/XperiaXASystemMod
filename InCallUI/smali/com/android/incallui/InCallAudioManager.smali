.class public Lcom/android/incallui/InCallAudioManager;
.super Ljava/lang/Object;
.source "InCallAudioManager.java"


# static fields
.field private static sInCallAudioManager:Lcom/android/incallui/InCallAudioManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static enableSpeaker()V
    .locals 5

    .prologue
    .line 163
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    .line 164
    .local v1, "telecomAdapter":Lcom/android/incallui/TelecomAdapter;
    if-nez v1, :cond_0

    .line 165
    const-string/jumbo v2, "InCallAudioManager"

    const-string/jumbo v3, "enableSpeaker: TelecomAdapter is null"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void

    .line 169
    :cond_0
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    .line 170
    .local v0, "currentAudioMode":I
    const-string/jumbo v2, "InCallAudioManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "enableSpeaker: Current audio mode is - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    const/16 v2, 0xe

    invoke-static {v2, v0}, Lcom/android/incallui/QtiCallUtils;->isEnabled(II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 175
    const-string/jumbo v2, "InCallAudioManager"

    const-string/jumbo v3, "enableSpeaker: Set audio route to speaker"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->setAudioRoute(I)V

    .line 162
    :cond_1
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/InCallAudioManager;
    .locals 2

    .prologue
    const-class v1, Lcom/android/incallui/InCallAudioManager;

    monitor-enter v1

    .line 66
    :try_start_0
    sget-object v0, Lcom/android/incallui/InCallAudioManager;->sInCallAudioManager:Lcom/android/incallui/InCallAudioManager;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/android/incallui/InCallAudioManager;

    invoke-direct {v0}, Lcom/android/incallui/InCallAudioManager;-><init>()V

    sput-object v0, Lcom/android/incallui/InCallAudioManager;->sInCallAudioManager:Lcom/android/incallui/InCallAudioManager;

    .line 69
    :cond_0
    sget-object v0, Lcom/android/incallui/InCallAudioManager;->sInCallAudioManager:Lcom/android/incallui/InCallAudioManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public onMergeClicked()V
    .locals 1

    .prologue
    .line 105
    const-string/jumbo v0, "onMergeClicked"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/CallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/CallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    .line 107
    if-eqz v0, :cond_1

    .line 109
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallAudioManager;->enableSpeaker()V

    .line 104
    :cond_1
    return-void
.end method
