.class public Lcom/android/incallui/InCallServiceImpl;
.super Landroid/telecom/InCallService;
.source "InCallServiceImpl.java"


# static fields
.field static mInCallServiceContext:Landroid/content/Context;

.field static mTelephonyManager:Landroid/telephony/TelephonyManager;

.field static sPhoneCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/telecom/InCallService;-><init>()V

    return-void
.end method

.method static getInCallServiceContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/android/incallui/InCallServiceImpl;->mInCallServiceContext:Landroid/content/Context;

    return-object v0
.end method

.method static isDsdaEnabled()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method private tearDown()V
    .locals 1

    .prologue
    .line 128
    const-string/jumbo v0, "tearDown"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/TelecomAdapter;->clearInCallService()V

    .line 131
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->clearOnDisconnect()V

    .line 132
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->tearDown()V

    .line 127
    return-void
.end method


# virtual methods
.method public onAmModeChanged(ILjava/lang/String;)V
    .locals 1
    .param p1, "amMode"    # I
    .param p2, "subParameter"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-static {}, Lcom/android/incallui/SomcAmProvider;->getInstance()Lcom/android/incallui/SomcAmProvider;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/SomcAmProvider;->onSomcAmModeChange(ILjava/lang/String;)V

    .line 72
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    const-string/jumbo v0, "onBind"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/incallui/InCallServiceImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 81
    .local v7, "context":Landroid/content/Context;
    sput-object v7, Lcom/android/incallui/InCallServiceImpl;->mInCallServiceContext:Landroid/content/Context;

    .line 82
    invoke-static {v7}, Lcom/android/incallui/SomcAmUtils;->cacheAmConfig(Landroid/content/Context;)V

    .line 83
    invoke-static {v7}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/InCallServiceImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 84
    sget-object v0, Lcom/android/incallui/InCallServiceImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/incallui/InCallServiceImpl;->sPhoneCount:I

    .line 85
    invoke-static {v7}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v5

    .line 86
    .local v5, "contactInfoCache":Lcom/android/incallui/ContactInfoCache;
    const-string/jumbo v0, "onBind: InCallPresenter setup."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Lcom/android/incallui/InCallServiceImpl;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 89
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    .line 90
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    .line 91
    new-instance v4, Lcom/android/incallui/StatusBarNotifier;

    invoke-direct {v4, v7, v5}, Lcom/android/incallui/StatusBarNotifier;-><init>(Landroid/content/Context;Lcom/android/incallui/ContactInfoCache;)V

    .line 93
    new-instance v6, Lcom/android/incallui/ProximitySensor;

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/android/incallui/ProximitySensor;-><init>(Landroid/content/Context;Lcom/android/incallui/AudioModeProvider;)V

    .line 87
    invoke-virtual/range {v0 .. v6}, Lcom/android/incallui/InCallPresenter;->setUp(Landroid/content/Context;Lcom/android/incallui/CallList;Lcom/android/incallui/AudioModeProvider;Lcom/android/incallui/StatusBarNotifier;Lcom/android/incallui/ContactInfoCache;Lcom/android/incallui/ProximitySensor;)V

    .line 95
    const-string/jumbo v0, "onBind: InCallPresenter setup finish."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onServiceBind()V

    .line 97
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->maybeStartRevealAnimation(Landroid/content/Intent;)V

    .line 98
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/TelecomAdapter;->setInCallService(Landroid/telecom/InCallService;)V

    .line 99
    const-string/jumbo v0, "onBind: call super onbind"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-super {p0, p1}, Landroid/telecom/InCallService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onBringToForeground(Z)V
    .locals 1
    .param p1, "showDialpad"    # Z

    .prologue
    .line 50
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->onBringToForeground(Z)V

    .line 49
    return-void
.end method

.method public onCallAdded(Landroid/telecom/Call;)V
    .locals 1
    .param p1, "call"    # Landroid/telecom/Call;

    .prologue
    .line 55
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallList;->onCallAdded(Landroid/telecom/Call;)V

    .line 56
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->onCallAdded(Landroid/telecom/Call;)V

    .line 54
    return-void
.end method

.method public onCallAudioStateChanged(Landroid/telecom/CallAudioState;)V
    .locals 1
    .param p1, "audioState"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 45
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/AudioModeProvider;->onAudioStateChanged(Landroid/telecom/CallAudioState;)V

    .line 44
    return-void
.end method

.method public onCallRemoved(Landroid/telecom/Call;)V
    .locals 1
    .param p1, "call"    # Landroid/telecom/Call;

    .prologue
    .line 61
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/CallList;->onCallRemoved(Landroid/telecom/Call;)V

    .line 62
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->onCallRemoved(Landroid/telecom/Call;)V

    .line 60
    return-void
.end method

.method public onCanAddCallChanged(Z)V
    .locals 1
    .param p1, "canAddCall"    # Z

    .prologue
    .line 67
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallPresenter;->onCanAddCallChanged(Z)V

    .line 66
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/telecom/InCallService;->onUnbind(Landroid/content/Intent;)Z

    .line 108
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->onServiceUnbind()V

    .line 109
    invoke-direct {p0}, Lcom/android/incallui/InCallServiceImpl;->tearDown()V

    .line 111
    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/InCallServiceImpl;->mInCallServiceContext:Landroid/content/Context;

    .line 112
    const/4 v0, 0x0

    return v0
.end method
