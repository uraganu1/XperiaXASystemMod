.class public Lcom/android/incallui/SomcCallWidgetPresenter;
.super Lcom/android/incallui/Presenter;
.source "SomcCallWidgetPresenter.java"

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SomcCallWidgetPresenter$CallWidgetUi;,
        Lcom/android/incallui/SomcCallWidgetPresenter$1;,
        Lcom/android/incallui/SomcCallWidgetPresenter$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/SomcCallWidgetPresenter$CallWidgetUi;",
        ">;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;"
    }
.end annotation


# instance fields
.field public final mCallWidgetListener:Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;

.field private mCallWidgetManager:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

.field private mContext:Landroid/content/Context;

.field private mPrimary:Lcom/android/incallui/Call;

.field private mSecondary:Lcom/android/incallui/Call;

.field private mVideoShareWidget:Lcom/android/incallui/SomcVideoShareWidget;

.field private mWidgetManagerConnection:Landroid/content/ServiceConnection;


# direct methods
.method static synthetic -get0(Lcom/android/incallui/SomcCallWidgetPresenter;)Lcom/android/incallui/callwidget/SomcCallWidgetManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mCallWidgetManager:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/incallui/SomcCallWidgetPresenter;)Lcom/android/incallui/SomcVideoShareWidget;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mVideoShareWidget:Lcom/android/incallui/SomcVideoShareWidget;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/incallui/SomcCallWidgetPresenter;Lcom/android/incallui/callwidget/SomcCallWidgetManager;)Lcom/android/incallui/callwidget/SomcCallWidgetManager;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mCallWidgetManager:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/incallui/SomcCallWidgetPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/SomcCallWidgetPresenter;->updateCallWidgetState()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    .line 252
    new-instance v0, Lcom/android/incallui/SomcCallWidgetPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SomcCallWidgetPresenter$1;-><init>(Lcom/android/incallui/SomcCallWidgetPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mWidgetManagerConnection:Landroid/content/ServiceConnection;

    .line 272
    new-instance v0, Lcom/android/incallui/SomcCallWidgetPresenter$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/SomcCallWidgetPresenter$2;-><init>(Lcom/android/incallui/SomcCallWidgetPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mCallWidgetListener:Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;

    .line 29
    return-void
.end method

.method private getCallToQuery(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;)Lcom/android/incallui/Call;
    .locals 1
    .param p1, "callList"    # Lcom/android/incallui/CallList;
    .param p2, "ignore"    # Lcom/android/incallui/Call;

    .prologue
    .line 100
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 101
    .local v0, "retval":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    if-eq v0, p2, :cond_0

    .line 102
    return-object v0

    .line 104
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_1

    if-eq v0, p2, :cond_1

    .line 106
    return-object v0

    .line 108
    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getSecondBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_2

    if-eq v0, p2, :cond_2

    .line 110
    return-object v0

    .line 112
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_3

    if-eq v0, p2, :cond_3

    .line 114
    return-object v0

    .line 116
    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 117
    if-eqz v0, :cond_4

    if-eq v0, p2, :cond_4

    .line 118
    return-object v0

    .line 120
    :cond_4
    return-object v0
.end method

.method private initCallWidgetManager()V
    .locals 5

    .prologue
    .line 85
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.sonymobile.callwidgetframework.ACTION_REGISTER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v1, "serviceIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/incallui/callwidget/SomcCallWidgetManagerService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    iget-object v2, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mWidgetManagerConnection:Landroid/content/ServiceConnection;

    .line 88
    const/4 v4, 0x1

    .line 87
    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 89
    .local v0, "isBound":Z
    if-nez v0, :cond_0

    .line 90
    const-string/jumbo v2, "CallWidgetPresenter"

    const-string/jumbo v3, "Failed to bind SomcCallWidgetManagerService."

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    :cond_0
    return-void
.end method

.method private updateCallWidgetState()V
    .locals 7

    .prologue
    .line 164
    sget-object v3, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->DISABLED:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    .line 165
    .local v3, "widgetMode":Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;
    const/4 v2, 0x1

    .line 166
    .local v2, "widgetAreaReserved":Z
    const/4 v1, 0x0

    .line 168
    .local v1, "clearStack":Z
    iget-object v4, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 169
    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->isAmPlaying()Z

    move-result v4

    .line 168
    if-nez v4, :cond_0

    .line 169
    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->isAmRecording()Z

    move-result v4

    .line 168
    if-eqz v4, :cond_2

    .line 171
    :cond_0
    const/4 v1, 0x1

    .line 229
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/incallui/SomcCallWidgetPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/SomcCallWidgetPresenter$CallWidgetUi;

    invoke-interface {v4, v3, v2}, Lcom/android/incallui/SomcCallWidgetPresenter$CallWidgetUi;->configureWidgetMode(Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;Z)V

    .line 231
    iget-object v4, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mCallWidgetManager:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    if-eqz v4, :cond_6

    .line 232
    iget-object v4, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mCallWidgetManager:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    iget-object v5, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mCallWidgetListener:Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;

    invoke-virtual {v4, v5, v2}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->setAreaReserved(Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;Z)V

    .line 234
    if-eqz v1, :cond_1

    .line 235
    iget-object v4, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mCallWidgetManager:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    invoke-virtual {v4}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->clearStack()V

    .line 163
    :cond_1
    :goto_1
    return-void

    .line 173
    :cond_2
    iget-object v4, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    .line 174
    .local v0, "callState":I
    const-string/jumbo v4, "CallWidgetPresenter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCallWidgetState() primary state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v4, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-eqz v4, :cond_3

    .line 176
    const-string/jumbo v4, "CallWidgetPresenter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCallWidgetState() secondary state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 177
    iget-object v6, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    invoke-static {v6}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 176
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_3
    packed-switch v0, :pswitch_data_0

    .line 223
    :pswitch_1
    const/4 v1, 0x1

    .line 224
    goto :goto_0

    .line 183
    :pswitch_2
    sget-object v3, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->CALLING:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    .line 184
    const/4 v2, 0x0

    .line 185
    goto :goto_0

    .line 187
    :pswitch_3
    sget-object v3, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->INCOMING:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    .line 188
    const/4 v2, 0x0

    .line 189
    goto :goto_0

    .line 192
    :pswitch_4
    iget-object v4, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 195
    const-string/jumbo v4, "CallWidgetPresenter"

    const-string/jumbo v5, "updateCallWidgetState() Conference call"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 196
    :cond_4
    iget-object v4, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mSecondary:Lcom/android/incallui/Call;

    if-eqz v4, :cond_5

    .line 197
    iget-object v4, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mSecondary:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v4

    .line 196
    if-eqz v4, :cond_5

    .line 199
    const-string/jumbo v4, "CallWidgetPresenter"

    const-string/jumbo v5, "updateCallWidgetState() Two calls"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    sget-object v3, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->INCALL:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    .line 201
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 204
    :cond_5
    sget-object v3, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->INCALL:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    .line 205
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 213
    :pswitch_5
    const/4 v2, 0x0

    .line 214
    goto/16 :goto_0

    .line 216
    :pswitch_6
    sget-object v3, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->AFTERCALL:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    .line 217
    const/4 v2, 0x0

    .line 218
    goto/16 :goto_0

    .line 238
    .end local v0    # "callState":I
    :cond_6
    const-string/jumbo v4, "CallWidgetPresenter"

    const-string/jumbo v5, "Widget manager not connected yet!"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 180
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public init(Landroid/content/Context;Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 47
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mContext:Landroid/content/Context;

    .line 48
    new-instance v0, Lcom/android/incallui/SomcVideoShareWidget;

    iget-object v1, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/incallui/SomcVideoShareWidget;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mVideoShareWidget:Lcom/android/incallui/SomcVideoShareWidget;

    .line 50
    invoke-direct {p0}, Lcom/android/incallui/SomcCallWidgetPresenter;->initCallWidgetManager()V

    .line 52
    if-eqz p2, :cond_0

    .line 53
    iput-object p2, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mPrimary:Lcom/android/incallui/Call;

    .line 54
    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mVideoShareWidget:Lcom/android/incallui/SomcVideoShareWidget;

    iget-object v1, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Lcom/android/incallui/SomcVideoShareWidget;->setCall(Lcom/android/incallui/Call;)V

    .line 46
    :cond_0
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 126
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/SomcCallWidgetPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 124
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 5
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    const/4 v4, 0x0

    .line 131
    invoke-virtual {p0}, Lcom/android/incallui/SomcCallWidgetPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/SomcCallWidgetPresenter$CallWidgetUi;

    .line 132
    .local v2, "ui":Lcom/android/incallui/SomcCallWidgetPresenter$CallWidgetUi;
    if-nez v2, :cond_0

    .line 133
    return-void

    .line 136
    :cond_0
    const/4 v0, 0x0

    .line 137
    .local v0, "primary":Lcom/android/incallui/Call;
    const/4 v1, 0x0

    .line 139
    .local v1, "secondary":Lcom/android/incallui/Call;
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v3, :cond_3

    .line 140
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 151
    .end local v0    # "primary":Lcom/android/incallui/Call;
    .end local v1    # "secondary":Lcom/android/incallui/Call;
    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mSecondary:Lcom/android/incallui/Call;

    .line 152
    iput-object v0, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mPrimary:Lcom/android/incallui/Call;

    .line 153
    iget-object v3, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mVideoShareWidget:Lcom/android/incallui/SomcVideoShareWidget;

    iget-object v4, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v3, v4}, Lcom/android/incallui/SomcVideoShareWidget;->setCall(Lcom/android/incallui/Call;)V

    .line 155
    invoke-direct {p0}, Lcom/android/incallui/SomcCallWidgetPresenter;->updateCallWidgetState()V

    .line 157
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v3, :cond_2

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v3, :cond_2

    .line 158
    const-string/jumbo v3, "CallWidgetPresenter"

    const-string/jumbo v4, "No calls, clean up widgets"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/android/incallui/SomcCallWidgetPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/SomcCallWidgetPresenter$CallWidgetUi;

    invoke-interface {v3}, Lcom/android/incallui/SomcCallWidgetPresenter$CallWidgetUi;->cleanUpWidgets()V

    .line 130
    :cond_2
    return-void

    .line 141
    .restart local v0    # "primary":Lcom/android/incallui/Call;
    .restart local v1    # "secondary":Lcom/android/incallui/Call;
    :cond_3
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p2, v3, :cond_4

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v3, :cond_5

    .line 142
    :cond_4
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 143
    .local v0, "primary":Lcom/android/incallui/Call;
    if-nez v0, :cond_1

    .line 144
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    goto :goto_0

    .line 146
    .local v0, "primary":Lcom/android/incallui/Call;
    :cond_5
    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v3, :cond_1

    .line 147
    invoke-direct {p0, p3, v4}, Lcom/android/incallui/SomcCallWidgetPresenter;->getCallToQuery(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    .line 148
    .local v0, "primary":Lcom/android/incallui/Call;
    invoke-direct {p0, p3, v0}, Lcom/android/incallui/SomcCallWidgetPresenter;->getCallToQuery(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v1

    .local v1, "secondary":Lcom/android/incallui/Call;
    goto :goto_0
.end method

.method public onUiReady(Lcom/android/incallui/SomcCallWidgetPresenter$CallWidgetUi;)V
    .locals 2
    .param p1, "ui"    # Lcom/android/incallui/SomcCallWidgetPresenter$CallWidgetUi;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    .line 61
    const-string/jumbo v0, "CallWidgetPresenter"

    const-string/jumbo v1, "onUiReady"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 64
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 59
    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "ui"    # Lcom/android/incallui/Ui;

    .prologue
    .line 59
    check-cast p1, Lcom/android/incallui/SomcCallWidgetPresenter$CallWidgetUi;

    .end local p1    # "ui":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/android/incallui/SomcCallWidgetPresenter;->onUiReady(Lcom/android/incallui/SomcCallWidgetPresenter$CallWidgetUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/SomcCallWidgetPresenter$CallWidgetUi;)V
    .locals 3
    .param p1, "ui"    # Lcom/android/incallui/SomcCallWidgetPresenter$CallWidgetUi;

    .prologue
    .line 69
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    .line 70
    const-string/jumbo v0, "CallWidgetPresenter"

    const-string/jumbo v1, "onUiUnready"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mCallWidgetManager:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mCallWidgetManager:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    iget-object v1, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mCallWidgetListener:Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->setAreaReserved(Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;Z)V

    .line 74
    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mCallWidgetManager:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    iget-object v1, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mCallWidgetListener:Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->unregisterListener(Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;)V

    .line 75
    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mCallWidgetManager:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    iget-object v1, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mVideoShareWidget:Lcom/android/incallui/SomcVideoShareWidget;

    invoke-virtual {v0, v1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->unregisterLocalWidget(Lcom/android/incallui/callwidget/SomcLocalCallWidget;)V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mWidgetManagerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 80
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 81
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 68
    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0
    .param p1, "ui"    # Lcom/android/incallui/Ui;

    .prologue
    .line 68
    check-cast p1, Lcom/android/incallui/SomcCallWidgetPresenter$CallWidgetUi;

    .end local p1    # "ui":Lcom/android/incallui/Ui;
    invoke-virtual {p0, p1}, Lcom/android/incallui/SomcCallWidgetPresenter;->onUiUnready(Lcom/android/incallui/SomcCallWidgetPresenter$CallWidgetUi;)V

    return-void
.end method

.method widgetSelected(Lcom/android/incallui/callwidget/ISomcCallWidget;)V
    .locals 3
    .param p1, "selectedWidget"    # Lcom/android/incallui/callwidget/ISomcCallWidget;

    .prologue
    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "phoneNumber":Ljava/lang/String;
    invoke-interface {p1}, Lcom/android/incallui/callwidget/ISomcCallWidget;->hasPhoneStateAccess()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mPrimary:Lcom/android/incallui/Call;

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mPrimary:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 249
    .end local v0    # "phoneNumber":Ljava/lang/String;
    :cond_0
    invoke-interface {p1}, Lcom/android/incallui/callwidget/ISomcCallWidget;->getActionHandler()Lcom/android/incallui/callwidget/ISomcCallWidget$WidgetActionHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/SomcCallWidgetPresenter;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2, p1, v0}, Lcom/android/incallui/callwidget/ISomcCallWidget$WidgetActionHandler;->select(Landroid/content/Context;Lcom/android/incallui/callwidget/ISomcCallWidget;Ljava/lang/String;)V

    .line 242
    return-void
.end method
