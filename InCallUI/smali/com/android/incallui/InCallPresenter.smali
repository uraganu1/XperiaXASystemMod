.class public Lcom/android/incallui/InCallPresenter;
.super Ljava/lang/Object;
.source "InCallPresenter.java"

# interfaces
.implements Lcom/android/incallui/CallList$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallPresenter$InCallState;,
        Lcom/android/incallui/InCallPresenter$InCallStateListener;,
        Lcom/android/incallui/InCallPresenter$IncomingCallListener;,
        Lcom/android/incallui/InCallPresenter$CanAddCallListener;,
        Lcom/android/incallui/InCallPresenter$InCallDetailsListener;,
        Lcom/android/incallui/InCallPresenter$InCallOrientationListener;,
        Lcom/android/incallui/InCallPresenter$InCallEventListener;,
        Lcom/android/incallui/InCallPresenter$InCallUiListener;,
        Lcom/android/incallui/InCallPresenter$AccelerometerObserver;,
        Lcom/android/incallui/InCallPresenter$1;,
        Lcom/android/incallui/InCallPresenter$2;,
        Lcom/android/incallui/InCallPresenter$3;,
        Lcom/android/incallui/InCallPresenter$4;
    }
.end annotation


# static fields
.field private static final EMPTY_EXTRAS:Landroid/os/Bundle;

.field private static sInCallPresenter:Lcom/android/incallui/InCallPresenter;


# instance fields
.field private mAccelerometerObserver:Landroid/database/ContentObserver;

.field private mAccountSelectionCancelled:Z

.field private mAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

.field private mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

.field private mAwaitingCallListUpdate:Z

.field private mBoundAndWaitingForOutgoingCall:Z

.field private final mCallCallback:Landroid/telecom/Call$Callback;

.field private mCallList:Lcom/android/incallui/CallList;

.field public final mCallWidgetListener:Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;

.field private mCallWidgetManager:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

.field private final mCanAddCallListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$CanAddCallListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

.field private mContext:Landroid/content/Context;

.field private final mDetailsListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$InCallDetailsListener;",
            ">;"
        }
    .end annotation
.end field

.field private mInCallActivity:Lcom/android/incallui/InCallActivity;

.field private mInCallCameraManager:Lcom/android/incallui/InCallCameraManager;

.field private final mInCallEventListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$InCallEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

.field private final mInCallUiListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$InCallUiListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mIncomingCallListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
            ">;"
        }
    .end annotation
.end field

.field private mIsActivityPreviouslyStarted:Z

.field private mIsCallAnswering:Z

.field private mIsChangingConfigurations:Z

.field private mIsFullScreen:Z

.field private mLandscapeAllowed:Z

.field private mLastPreciseDisconnectCause:I

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOrientationListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallPresenter$InCallOrientationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mPreciseCallStateReceiver:Landroid/content/BroadcastReceiver;

.field private mProximitySensor:Lcom/android/incallui/ProximitySensor;

.field private mRcsVideoEnabled:Z

.field private mRcsVideoVisible:Z

.field private mServiceBound:Z

.field private mServiceConnected:Z

.field private mSmallAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

.field private mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mThemeColors:Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWidgetManagerConnection:Landroid/content/ServiceConnection;


# direct methods
.method static synthetic -get0(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/CallList;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/callwidget/SomcCallWidgetManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallWidgetManager:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/incallui/InCallPresenter;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/incallui/InCallPresenter;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/InCallPresenter;->mLastPreciseDisconnectCause:I

    return v0
.end method

.method static synthetic -get5(Lcom/android/incallui/InCallPresenter;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/incallui/InCallPresenter;Lcom/android/incallui/callwidget/SomcCallWidgetManager;)Lcom/android/incallui/callwidget/SomcCallWidgetManager;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mCallWidgetManager:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/incallui/InCallPresenter;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/InCallPresenter;->mLastPreciseDisconnectCause:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/incallui/InCallPresenter;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->forceFullUiIfRichCall()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sput-object v0, Lcom/android/incallui/InCallPresenter;->EMPTY_EXTRAS:Landroid/os/Bundle;

    .line 83
    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    const/4 v3, 0x1

    const v2, 0x3f666666    # 0.9f

    const/4 v1, 0x0

    .line 2119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 99
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/Set;

    .line 101
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    .line 103
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 102
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    .line 105
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 104
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCanAddCallListeners:Ljava/util/Set;

    .line 107
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 106
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallUiListeners:Ljava/util/Set;

    .line 109
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 108
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOrientationListeners:Ljava/util/Set;

    .line 111
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v4, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    .line 110
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    .line 119
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 121
    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    .line 122
    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mAccountSelectionCancelled:Z

    .line 123
    iput-object v5, p0, Lcom/android/incallui/InCallPresenter;->mInCallCameraManager:Lcom/android/incallui/InCallCameraManager;

    .line 124
    new-instance v0, Lcom/android/incallui/AnswerPresenter;

    invoke-direct {v0}, Lcom/android/incallui/AnswerPresenter;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    .line 125
    iput-object v5, p0, Lcom/android/incallui/InCallPresenter;->mCallWidgetManager:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    .line 127
    iput-object v5, p0, Lcom/android/incallui/InCallPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 128
    new-instance v0, Lcom/android/incallui/AnswerPresenter;

    invoke-direct {v0}, Lcom/android/incallui/AnswerPresenter;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mSmallAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    .line 129
    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsCallAnswering:Z

    .line 130
    iput-object v5, p0, Lcom/android/incallui/InCallPresenter;->mAccelerometerObserver:Landroid/database/ContentObserver;

    .line 149
    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    .line 152
    new-instance v0, Lcom/android/incallui/InCallPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$1;-><init>(Lcom/android/incallui/InCallPresenter;)V

    .line 151
    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallCallback:Landroid/telecom/Call$Callback;

    .line 185
    new-instance v0, Lcom/android/incallui/InCallPresenter$2;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$2;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mPreciseCallStateReceiver:Landroid/content/BroadcastReceiver;

    .line 203
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/InCallPresenter;->mLastPreciseDisconnectCause:I

    .line 211
    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    .line 216
    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mServiceBound:Z

    .line 224
    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    .line 343
    new-instance v0, Lcom/android/incallui/InCallPresenter$3;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$3;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mWidgetManagerConnection:Landroid/content/ServiceConnection;

    .line 365
    new-instance v0, Lcom/android/incallui/InCallPresenter$4;

    invoke-direct {v0, p0}, Lcom/android/incallui/InCallPresenter$4;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallWidgetListener:Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;

    .line 650
    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mAwaitingCallListUpdate:Z

    .line 2119
    return-void
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    .line 1936
    const-string/jumbo v0, "acquireWakeLock"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1938
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 1939
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1935
    :cond_0
    return-void
.end method

.method private attemptCleanup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 1672
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    if-eqz v1, :cond_9

    :cond_0
    const/4 v0, 0x0

    .line 1674
    .local v0, "shouldCleanup":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "attemptCleanup? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1676
    if-eqz v0, :cond_8

    .line 1677
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 1678
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mPreciseCallStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1680
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mAccelerometerObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1

    .line 1681
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mAccelerometerObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1682
    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mAccelerometerObserver:Landroid/database/ContentObserver;

    .line 1685
    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/incallui/InCallPresenter;->mLastPreciseDisconnectCause:I

    .line 1687
    iput-boolean v4, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    .line 1688
    iput-boolean v4, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    .line 1692
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    if-eqz v1, :cond_2

    .line 1693
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    invoke-virtual {v1}, Lcom/android/incallui/ContactInfoCache;->clearCache()V

    .line 1695
    :cond_2
    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    .line 1697
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    if-eqz v1, :cond_3

    .line 1698
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 1699
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v1}, Lcom/android/incallui/ProximitySensor;->tearDown()V

    .line 1701
    :cond_3
    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    .line 1703
    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1704
    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mPowerManager:Landroid/os/PowerManager;

    .line 1706
    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    .line 1708
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v1, :cond_4

    .line 1709
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v1}, Lcom/android/incallui/StatusBarNotifier;->cleanUp()V

    .line 1710
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 1713
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v1}, Lcom/android/incallui/StatusBarNotifier;->tearDown()V

    .line 1716
    :cond_4
    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    .line 1718
    invoke-static {}, Lcom/android/incallui/InCallCsRedialHandler;->getInstance()Lcom/android/incallui/InCallCsRedialHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallCsRedialHandler;->tearDown()V

    .line 1720
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v1, :cond_5

    .line 1721
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1, p0}, Lcom/android/incallui/CallList;->removeListener(Lcom/android/incallui/CallList$Listener;)V

    .line 1723
    :cond_5
    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    .line 1725
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallWidgetManager:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    if-eqz v1, :cond_6

    .line 1726
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallWidgetManager:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallWidgetListener:Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;

    invoke-virtual {v1, v2}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->unregisterListener(Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;)V

    .line 1727
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallWidgetManager:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 1728
    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mCallWidgetManager:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    .line 1731
    :cond_6
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_7

    .line 1732
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mWidgetManagerConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1733
    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    .line 1735
    :cond_7
    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 1737
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1738
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1739
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1740
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCanAddCallListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1741
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mOrientationListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1742
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 1743
    iput-boolean v4, p0, Lcom/android/incallui/InCallPresenter;->mIsCallAnswering:Z

    .line 1745
    const-string/jumbo v1, "Finished InCallPresenter.CleanUp"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1671
    :cond_8
    return-void

    .line 1673
    .end local v0    # "shouldCleanup":Z
    :cond_9
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v1, v2, :cond_a

    const/4 v0, 0x1

    .restart local v0    # "shouldCleanup":Z
    goto/16 :goto_0

    .end local v0    # "shouldCleanup":Z
    :cond_a
    const/4 v0, 0x0

    .restart local v0    # "shouldCleanup":Z
    goto/16 :goto_0
.end method

.method private attemptFinishActivity()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 511
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    .line 512
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Hide in call UI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 514
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v1, :cond_0

    .line 515
    invoke-static {}, Lcom/android/incallui/InCallServiceImpl;->isDsdaEnabled()Z

    move-result v1

    .line 514
    if-eqz v1, :cond_0

    .line 516
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getActiveSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallList;->hasAnyLiveCall(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 521
    :cond_0
    if-eqz v0, :cond_1

    .line 522
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallActivity;->setExcludeFromRecents(Z)V

    .line 523
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->finish()V

    .line 525
    iget-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mAccountSelectionCancelled:Z

    if-eqz v1, :cond_1

    .line 528
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1, v3, v3}, Lcom/android/incallui/InCallActivity;->overridePendingTransition(II)V

    .line 510
    :cond_1
    return-void

    .line 511
    :cond_2
    const/4 v0, 0x0

    .local v0, "doFinish":Z
    goto :goto_0

    .line 517
    .end local v0    # "doFinish":Z
    :cond_3
    const-string/jumbo v1, "Switch active sub"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 518
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->switchToOtherActiveSub()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method private forceFullUiIfRichCall()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 380
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isRichDataCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    :cond_0
    return v2

    .line 381
    :cond_1
    const-string/jumbo v0, "richcall - switch to fullui"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v0, :cond_2

    .line 383
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v0}, Lcom/android/incallui/StatusBarNotifier;->cancelNotification()V

    .line 385
    :cond_2
    invoke-virtual {p0, v2, v2}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    .line 386
    const/4 v0, 0x1

    return v0
.end method

.method private getColorsFromCall(Lcom/android/incallui/Call;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
    .locals 1
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 2068
    if-nez p1, :cond_0

    .line 2069
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mPendingPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallPresenter;->getColorsFromPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v0

    return-object v0

    .line 2071
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallPresenter;->getColorsFromPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v0

    return-object v0
.end method

.method private getColorsFromPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
    .locals 5
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 2076
    const/4 v1, 0x0

    .line 2077
    .local v1, "highlightColor":I
    if-eqz p1, :cond_0

    .line 2078
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v2

    .line 2080
    .local v2, "tm":Landroid/telecom/TelecomManager;
    if-eqz v2, :cond_0

    .line 2081
    invoke-virtual {v2, p1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 2084
    .local v0, "account":Landroid/telecom/PhoneAccount;
    if-eqz v0, :cond_0

    .line 2085
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getHighlightColor()I

    move-result v1

    .line 2089
    .end local v0    # "account":Landroid/telecom/PhoneAccount;
    .end local v2    # "tm":Landroid/telecom/TelecomManager;
    :cond_0
    new-instance v3, Lcom/android/incallui/InCallUIMaterialColorMapUtils;

    .line 2090
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2089
    invoke-direct {v3, v4}, Lcom/android/incallui/InCallUIMaterialColorMapUtils;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {v3, v1}, Lcom/android/incallui/InCallUIMaterialColorMapUtils;->calculatePrimaryAndSecondaryColor(I)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v3

    return-object v3
.end method

.method private getFirstOrBackgroundCall()Lcom/android/incallui/Call;
    .locals 2

    .prologue
    .line 2262
    const/4 v0, 0x0

    .line 2263
    .local v0, "call":Lcom/android/incallui/Call;
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v1, :cond_0

    .line 2264
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 2265
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_0

    .line 2266
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 2269
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_0
    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/incallui/InCallPresenter;
    .locals 2

    .prologue
    const-class v1, Lcom/android/incallui/InCallPresenter;

    monitor-enter v1

    .line 233
    :try_start_0
    sget-object v0, Lcom/android/incallui/InCallPresenter;->sInCallPresenter:Lcom/android/incallui/InCallPresenter;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lcom/android/incallui/InCallPresenter;

    invoke-direct {v0}, Lcom/android/incallui/InCallPresenter;-><init>()V

    sput-object v0, Lcom/android/incallui/InCallPresenter;->sInCallPresenter:Lcom/android/incallui/InCallPresenter;

    .line 236
    :cond_0
    sget-object v0, Lcom/android/incallui/InCallPresenter;->sInCallPresenter:Lcom/android/incallui/InCallPresenter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initCallWidgetManager()V
    .locals 5

    .prologue
    .line 334
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.sonymobile.callwidgetframework.ACTION_REGISTER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 335
    .local v1, "serviceIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/incallui/callwidget/SomcCallWidgetManagerService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 336
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mWidgetManagerConnection:Landroid/content/ServiceConnection;

    .line 337
    const/4 v4, 0x1

    .line 336
    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 338
    .local v0, "isBound":Z
    if-nez v0, :cond_0

    .line 339
    const-string/jumbo v2, "Failed to bind SomcCallWidgetManagerService."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    :cond_0
    return-void
.end method

.method public static isCallWithNoValidAccounts(Lcom/android/incallui/Call;)Z
    .locals 5
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1571
    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/incallui/InCallPresenter;->isEmergencyCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1587
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 1572
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 1574
    .local v0, "extras":Landroid/os/Bundle;
    if-nez v0, :cond_2

    .line 1575
    sget-object v0, Lcom/android/incallui/InCallPresenter;->EMPTY_EXTRAS:Landroid/os/Bundle;

    .line 1579
    :cond_2
    const-string/jumbo v2, "selectPhoneAccountAccounts"

    .line 1578
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1581
    .local v1, "phoneAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1582
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    .line 1581
    if-eqz v2, :cond_0

    .line 1583
    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No valid accounts for call "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1584
    const/4 v2, 0x1

    return v2
.end method

.method private static isEmergencyCall(Lcom/android/incallui/Call;)Z
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1591
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getHandle()Landroid/net/Uri;

    move-result-object v0

    .line 1592
    .local v0, "handle":Landroid/net/Uri;
    if-nez v0, :cond_0

    .line 1593
    const/4 v1, 0x0

    return v1

    .line 1595
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isRtl()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2020
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isScreenInteractive()Z
    .locals 1

    .prologue
    .line 1925
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    return v0
.end method

.method private maybeShowErrorDialogOnDisconnect(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1394
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 1395
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1398
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v1

    .line 1399
    iget v2, p0, Lcom/android/incallui/InCallPresenter;->mLastPreciseDisconnectCause:I

    .line 1398
    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/InCallActivity;->maybeShowErrorDialogOnDisconnect(Landroid/telecom/DisconnectCause;I)V

    .line 1392
    :cond_1
    return-void

    .line 1396
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->setDisconnectCauseForMissingAccounts(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method private notifyInCallUiStateNotifier(Z)V
    .locals 2
    .param p1, "showing"    # Z

    .prologue
    .line 1177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyInCallUiStateNotifier: mIsChangingConfigurations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1178
    iget-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    .line 1177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1179
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    if-nez v0, :cond_0

    .line 1180
    invoke-static {}, Lcom/android/incallui/InCallUiStateNotifier;->getInstance()Lcom/android/incallui/InCallUiStateNotifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallUiStateNotifier;->onUiShowing(Z)V

    .line 1176
    :cond_0
    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 1944
    const-string/jumbo v0, "releaseWakeLock"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1946
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1947
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1943
    :cond_0
    return-void
.end method

.method private setDisconnectCauseForMissingAccounts(Lcom/android/incallui/Call;)V
    .locals 9
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v8, 0x0

    .line 1604
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v5

    .line 1606
    .local v5, "telecomCall":Landroid/telecom/Call;
    invoke-virtual {v5}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/Call$Details;->getIntentExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1608
    .local v2, "extras":Landroid/os/Bundle;
    if-nez v2, :cond_0

    .line 1609
    new-instance v2, Landroid/os/Bundle;

    .end local v2    # "extras":Landroid/os/Bundle;
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1613
    .restart local v2    # "extras":Landroid/os/Bundle;
    :cond_0
    const-string/jumbo v6, "selectPhoneAccountAccounts"

    .line 1612
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 1615
    .local v3, "phoneAccountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1616
    :cond_1
    invoke-virtual {v5}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/Call$Details;->getHandle()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 1617
    .local v4, "scheme":Ljava/lang/String;
    const-string/jumbo v6, "tel"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1618
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0023

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1621
    .local v1, "errorMsg":Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/telecom/DisconnectCause;

    const/4 v6, 0x1

    invoke-direct {v0, v6, v8, v1, v1}, Landroid/telecom/DisconnectCause;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 1622
    .local v0, "disconnectCause":Landroid/telecom/DisconnectCause;
    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->setDisconnectCause(Landroid/telecom/DisconnectCause;)V

    .line 1603
    .end local v0    # "disconnectCause":Landroid/telecom/DisconnectCause;
    .end local v1    # "errorMsg":Ljava/lang/String;
    .end local v4    # "scheme":Ljava/lang/String;
    :cond_2
    return-void

    .line 1619
    .restart local v4    # "scheme":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const v7, 0x7f0b032b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "errorMsg":Ljava/lang/String;
    goto :goto_0
.end method

.method private setUpExt()V
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    invoke-virtual {v0}, Lcom/android/incallui/ContactInfoCache;->clearCache()V

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 425
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {v0}, Lcom/android/incallui/StatusBarNotifier;->cleanUp()V

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    if-eqz v0, :cond_2

    .line 428
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 429
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v0}, Lcom/android/incallui/ProximitySensor;->tearDown()V

    .line 419
    :cond_2
    return-void
.end method

.method private startOrFinishUi(Lcom/android/incallui/InCallPresenter$InCallState;)Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 11
    .param p1, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1408
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startOrFinishUi: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v10, " -> "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1412
    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v7, p1, :cond_5

    .line 1413
    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    iget-object v10, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v10}, Lcom/android/incallui/CallList;->getActiveSubId()I

    move-result v10

    invoke-virtual {v7, v10}, Lcom/android/incallui/CallList;->isAnyOtherSubActive(I)Z

    move-result v1

    .line 1416
    :goto_0
    const/4 v2, 0x0

    .line 1418
    .local v2, "isAutoAnswer":Z
    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v7

    if-nez v7, :cond_0

    .line 1419
    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v7

    if-nez v7, :cond_0

    .line 1420
    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v10, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v7, v10, :cond_7

    .line 1421
    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v7, :cond_7

    .line 1422
    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v7, :cond_6

    const/4 v2, 0x1

    .line 1425
    :cond_0
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "startOrFinishUi: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1437
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v7, :cond_1

    .line 1438
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v7

    .line 1437
    if-eqz v7, :cond_1

    .line 1439
    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v7}, Lcom/android/incallui/InCallActivity;->dismissErrorDialog()V

    .line 1444
    :cond_1
    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v7, :cond_2

    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v7, :cond_8

    if-eqz v1, :cond_8

    .line 1473
    :cond_2
    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v7, p1, :cond_9

    const/4 v6, 0x1

    .line 1476
    .local v6, "startIncomingCallSequence":Z
    :goto_2
    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v7, p1, :cond_a

    const/4 v4, 0x1

    .line 1489
    .local v4, "showAccountPicker":Z
    :goto_3
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getCallCardFragmentVisible()Z

    move-result v7

    if-eqz v7, :cond_b

    const/4 v3, 0x0

    .line 1490
    .local v3, "mainUiNotVisible":Z
    :goto_4
    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v7, p1, :cond_c

    move v5, v3

    .line 1494
    :goto_5
    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v7

    if-nez v7, :cond_3

    .line 1495
    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v7

    if-nez v7, :cond_3

    .line 1496
    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v10, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v7, v10, :cond_e

    .line 1497
    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v7, p1, :cond_e

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v7

    if-eqz v7, :cond_d

    move v7, v8

    .line 1496
    :goto_6
    or-int/2addr v5, v7

    .line 1508
    :cond_3
    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v7, p1, :cond_f

    if-eqz v3, :cond_f

    .line 1509
    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/InCallPresenter;->isCallWithNoValidAccounts(Lcom/android/incallui/Call;)Z

    move-result v7

    .line 1508
    :goto_7
    or-int/2addr v5, v7

    .line 1515
    .local v5, "showCallUi":Z
    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v7, p1, :cond_10

    if-eqz v3, :cond_10

    .line 1516
    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->isAmWorking()Z

    move-result v7

    .line 1515
    :goto_8
    or-int/2addr v5, v7

    .line 1521
    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v7, :cond_13

    .line 1522
    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v10, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v7, v10, :cond_13

    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->hasLiveCall()Z

    move-result v7

    if-nez v7, :cond_11

    .line 1523
    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v7

    if-eqz v7, :cond_12

    move v7, v9

    .line 1521
    :goto_9
    or-int/2addr v5, v7

    .line 1529
    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v7

    if-eqz v7, :cond_14

    :cond_4
    const/4 v0, 0x0

    .line 1530
    .local v0, "activityIsFinishing":Z
    :goto_a
    if-eqz v0, :cond_15

    .line 1531
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Undo the state change: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1532
    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    return-object v7

    .line 1412
    .end local v0    # "activityIsFinishing":Z
    .end local v2    # "isAutoAnswer":Z
    .end local v3    # "mainUiNotVisible":Z
    .end local v4    # "showAccountPicker":Z
    .end local v5    # "showCallUi":Z
    .end local v6    # "startIncomingCallSequence":Z
    :cond_5
    const/4 v1, 0x0

    .local v1, "isAnyOtherSubActive":Z
    goto/16 :goto_0

    .line 1422
    .end local v1    # "isAnyOtherSubActive":Z
    .restart local v2    # "isAutoAnswer":Z
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1420
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1445
    :cond_8
    return-object p1

    .line 1473
    :cond_9
    const/4 v6, 0x0

    .restart local v6    # "startIncomingCallSequence":Z
    goto/16 :goto_2

    .line 1476
    :cond_a
    const/4 v4, 0x0

    .restart local v4    # "showAccountPicker":Z
    goto/16 :goto_3

    .line 1489
    :cond_b
    const/4 v3, 0x1

    .restart local v3    # "mainUiNotVisible":Z
    goto/16 :goto_4

    .line 1490
    :cond_c
    const/4 v5, 0x0

    .local v5, "showCallUi":Z
    goto/16 :goto_5

    .end local v5    # "showCallUi":Z
    :cond_d
    move v7, v9

    .line 1497
    goto/16 :goto_6

    :cond_e
    move v7, v8

    .line 1496
    goto/16 :goto_6

    :cond_f
    move v7, v8

    .line 1508
    goto :goto_7

    .local v5, "showCallUi":Z
    :cond_10
    move v7, v8

    .line 1515
    goto :goto_8

    :cond_11
    move v7, v9

    .line 1522
    goto :goto_9

    :cond_12
    move v7, v8

    .line 1523
    goto :goto_9

    :cond_13
    move v7, v8

    .line 1521
    goto :goto_9

    .line 1529
    :cond_14
    const/4 v0, 0x1

    .restart local v0    # "activityIsFinishing":Z
    goto :goto_a

    .line 1535
    :cond_15
    if-nez v5, :cond_16

    if-nez v4, :cond_16

    if-eqz v2, :cond_19

    .line 1536
    :cond_16
    const-string/jumbo v7, "Start in call UI"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1537
    if-eqz v4, :cond_17

    move v9, v8

    :cond_17
    invoke-virtual {p0, v8, v9}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    .line 1558
    :cond_18
    :goto_b
    return-object p1

    .line 1538
    :cond_19
    if-eqz v6, :cond_1b

    .line 1539
    const-string/jumbo v7, "Start Full Screen in call UI"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1543
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 1544
    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v7}, Lcom/android/incallui/InCallActivity;->dismissPendingDialogs()V

    .line 1546
    :cond_1a
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->startUi(Lcom/android/incallui/InCallPresenter$InCallState;)Z

    move-result v7

    if-nez v7, :cond_18

    .line 1550
    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    return-object v7

    .line 1552
    :cond_1b
    sget-object v7, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v7, :cond_18

    .line 1554
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    .line 1555
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptCleanup()V

    goto :goto_b
.end method

.method private startUi(Lcom/android/incallui/InCallPresenter$InCallState;)Z
    .locals 7
    .param p1, "inCallState"    # Lcom/android/incallui/InCallPresenter$InCallState;

    .prologue
    const/4 v6, 0x0

    .line 1627
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v2

    .line 1628
    .local v2, "incomingCall":Lcom/android/incallui/Call;
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    .line 1629
    .local v1, "callList":Lcom/android/incallui/CallList;
    if-eqz v2, :cond_5

    .line 1630
    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_1

    .line 1631
    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    .line 1632
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v4

    if-nez v4, :cond_2

    .line 1633
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    .line 1645
    .local v3, "isCallWaiting":Z
    :goto_0
    if-eqz v2, :cond_6

    .line 1646
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getActiveSubId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/CallList;->isAnyOtherSubActive(I)Z

    move-result v0

    .line 1647
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Start UI  anyOtherSubActive:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1648
    if-nez v3, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isRichDataCall()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1649
    :cond_0
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v4}, Lcom/android/incallui/ProximitySensor;->isScreenReallyOff()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1650
    const-string/jumbo v4, "Restarting InCallActivity to turn screen on for call waiting"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1651
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->finish()V

    .line 1657
    return v6

    .line 1630
    .end local v3    # "isCallWaiting":Z
    :cond_1
    const/4 v3, 0x1

    .restart local v3    # "isCallWaiting":Z
    goto :goto_0

    .line 1632
    .end local v3    # "isCallWaiting":Z
    :cond_2
    const/4 v3, 0x1

    .restart local v3    # "isCallWaiting":Z
    goto :goto_0

    .line 1633
    .end local v3    # "isCallWaiting":Z
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "isCallWaiting":Z
    goto :goto_0

    .line 1631
    .end local v3    # "isCallWaiting":Z
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "isCallWaiting":Z
    goto :goto_0

    .line 1629
    .end local v3    # "isCallWaiting":Z
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "isCallWaiting":Z
    goto :goto_0

    .line 1645
    :cond_6
    const/4 v0, 0x0

    .local v0, "anyOtherSubActive":Z
    goto :goto_1

    .line 1659
    .end local v0    # "anyOtherSubActive":Z
    :cond_7
    invoke-virtual {p0, v6, v6}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    .line 1664
    :goto_2
    const/4 v4, 0x1

    return v4

    .line 1662
    :cond_8
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v4, p1, v5}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_2
.end method

.method private updateActivity(Lcom/android/incallui/InCallActivity;)V
    .locals 4
    .param p1, "inCallActivity"    # Lcom/android/incallui/InCallActivity;

    .prologue
    const/4 v3, 0x0

    .line 572
    const/4 v1, 0x0

    .line 573
    .local v1, "updateListeners":Z
    const/4 v0, 0x0

    .line 575
    .local v0, "doAttemptCleanup":Z
    if-eqz p1, :cond_6

    .line 576
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v2, :cond_0

    .line 577
    const/4 v1, 0x1

    .line 578
    const-string/jumbo v2, "UI Initialized"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 585
    :cond_0
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 586
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallActivity;->setExcludeFromRecents(Z)V

    .line 587
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->updateInCallOrientation()V

    .line 591
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 592
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/incallui/InCallPresenter;->maybeShowErrorDialogOnDisconnect(Lcom/android/incallui/Call;)V

    .line 601
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, v3, :cond_2

    .line 602
    const-string/jumbo v2, "UI Initialized, but no calls left.  shut down."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 603
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    .line 604
    return-void

    .line 612
    :cond_2
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v3, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v2, v3, :cond_3

    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->isAmWorking()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 613
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallPresenter;->showAnsweringMachineFragment(Z)V

    .line 641
    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    .line 642
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {p0, v2}, Lcom/android/incallui/InCallPresenter;->onCallListChange(Lcom/android/incallui/CallList;)V

    .line 645
    :cond_4
    if-eqz v0, :cond_5

    .line 646
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptCleanup()V

    .line 571
    :cond_5
    return-void

    .line 616
    :cond_6
    const-string/jumbo v2, "UI Destroyed"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    const/4 v1, 0x1

    .line 618
    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    .line 623
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateInCallOrientation()V
    .locals 5

    .prologue
    .line 1891
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v3, :cond_2

    .line 1892
    const/4 v2, 0x4

    .line 1893
    .local v2, "requestedOrientaion":I
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getRequestedOrientation()I

    move-result v1

    .line 1895
    .local v1, "currentRequestedOrientation":I
    invoke-static {}, Lcom/android/incallui/SomcInCallUiUtils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1897
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->getFirstOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1898
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v3

    invoke-static {v3}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1899
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v3

    .line 1900
    const/4 v4, 0x3

    .line 1899
    if-ne v3, v4, :cond_3

    .line 1903
    :cond_0
    const/4 v2, -0x1

    .line 1913
    .end local v0    # "call":Lcom/android/incallui/Call;
    :goto_0
    if-eq v2, v1, :cond_1

    .line 1914
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateInCallOrientation: current requested orientation = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1915
    const-string/jumbo v4, "  requested orientation = "

    .line 1914
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1917
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3, v2}, Lcom/android/incallui/InCallActivity;->setRequestedOrientation(I)V

    .line 1919
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    iget-boolean v4, p0, Lcom/android/incallui/InCallPresenter;->mLandscapeAllowed:Z

    invoke-virtual {v3, v4}, Lcom/android/incallui/InCallActivity;->enableInCallOrientationEventListener(Z)V

    .line 1890
    .end local v1    # "currentRequestedOrientation":I
    .end local v2    # "requestedOrientaion":I
    :cond_2
    return-void

    .line 1901
    .restart local v0    # "call":Lcom/android/incallui/Call;
    .restart local v1    # "currentRequestedOrientation":I
    .restart local v2    # "requestedOrientaion":I
    :cond_3
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v3

    .line 1902
    const/4 v4, 0x1

    .line 1901
    if-eq v3, v4, :cond_0

    .line 1905
    :cond_4
    const/4 v2, 0x4

    goto :goto_0

    .line 1909
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_5
    iget-boolean v3, p0, Lcom/android/incallui/InCallPresenter;->mLandscapeAllowed:Z

    if-eqz v3, :cond_6

    const/4 v2, 0x4

    goto :goto_0

    .line 1910
    :cond_6
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public acceptUpgradeRequest(ILandroid/content/Context;)V
    .locals 4
    .param p1, "videoState"    # I
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1031
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " acceptUpgradeRequest videoState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1033
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v2, :cond_0

    .line 1034
    invoke-static {p2}, Lcom/android/incallui/StatusBarNotifier;->clearAllCallNotifications(Landroid/content/Context;)V

    .line 1035
    const-string/jumbo v2, " acceptUpgradeRequest mCallList is empty so returning"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1036
    return-void

    .line 1039
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getVideoUpgradeRequestCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1040
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 1041
    new-instance v1, Landroid/telecom/VideoProfile;

    invoke-direct {v1, p1}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 1042
    .local v1, "videoProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 1043
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    .line 1030
    .end local v1    # "videoProfile":Landroid/telecom/VideoProfile;
    :cond_1
    return-void
.end method

.method public acceptUpgradeRequest(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1052
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v1, :cond_1

    .line 1053
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getVideoUpgradeRequestCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1054
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 1055
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getModifyToVideoState()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/android/incallui/InCallPresenter;->acceptUpgradeRequest(ILandroid/content/Context;)V

    .line 1051
    .end local v0    # "call":Lcom/android/incallui/Call;
    :goto_0
    return-void

    .line 1057
    .restart local v0    # "call":Lcom/android/incallui/Call;
    :cond_0
    const-string/jumbo v1, "acceptUpgradeRequest Call is null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1060
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_1
    const-string/jumbo v1, " acceptUpgradeRequest mCallList is empty"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addCanAddCallListener(Lcom/android/incallui/InCallPresenter$CanAddCallListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$CanAddCallListener;

    .prologue
    .line 910
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCanAddCallListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 909
    return-void
.end method

.method public addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallDetailsListener;

    .prologue
    .line 899
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 898
    return-void
.end method

.method public addInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallEventListener;

    .prologue
    .line 932
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 931
    return-void
.end method

.method public addInCallUiListener(Lcom/android/incallui/InCallPresenter$InCallUiListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallUiListener;

    .prologue
    .line 1157
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallUiListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1156
    return-void
.end method

.method public addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$IncomingCallListener;

    .prologue
    .line 863
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 862
    return-void
.end method

.method public addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallStateListener;

    .prologue
    .line 888
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 887
    return-void
.end method

.method public addOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallOrientationListener;

    .prologue
    .line 921
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOrientationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 920
    return-void
.end method

.method public answerIncomingCall(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "videoState"    # I

    .prologue
    const/4 v3, 0x0

    .line 1000
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v1, :cond_0

    .line 1001
    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearAllCallNotifications(Landroid/content/Context;)V

    .line 1002
    return-void

    .line 1005
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1006
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 1007
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsCallAnswering:Z

    .line 1008
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    .line 1009
    invoke-virtual {p0, v3, v3}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    .line 997
    :cond_1
    return-void
.end method

.method public bringToForeground(Z)V
    .locals 2
    .param p1, "showDialpad"    # Z

    .prologue
    .line 1195
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isShowingInCallUi()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq v0, v1, :cond_0

    .line 1196
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/InCallPresenter;->showInCall(ZZ)V

    .line 1187
    :cond_0
    return-void
.end method

.method public cancelAccountSelection()V
    .locals 3

    .prologue
    .line 957
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mAccountSelectionCancelled:Z

    .line 958
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v2, :cond_0

    .line 959
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 960
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 961
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    .line 962
    .local v1, "callId":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 956
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "callId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public clearFullscreen()V
    .locals 1

    .prologue
    .line 1308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    .line 1307
    return-void
.end method

.method public declineIncomingCall(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    .line 1019
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v1, :cond_0

    .line 1020
    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearAllCallNotifications(Landroid/content/Context;)V

    .line 1021
    return-void

    .line 1024
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1025
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 1026
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/incallui/TelecomAdapter;->rejectCall(Ljava/lang/String;ZLjava/lang/String;)V

    .line 1016
    :cond_1
    return-void
.end method

.method public declineUpgradeRequest(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1065
    const-string/jumbo v2, " declineUpgradeRequest"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1067
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v2, :cond_0

    .line 1068
    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearAllCallNotifications(Landroid/content/Context;)V

    .line 1069
    const-string/jumbo v2, " declineUpgradeRequest mCallList is empty so returning"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1070
    return-void

    .line 1073
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getVideoUpgradeRequestCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1074
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_1

    .line 1076
    new-instance v1, Landroid/telecom/VideoProfile;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 1077
    .local v1, "videoProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyResponse(Landroid/telecom/VideoProfile;)V

    .line 1078
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    .line 1064
    .end local v1    # "videoProfile":Landroid/telecom/VideoProfile;
    :cond_1
    return-void
.end method

.method public dismissKeyguard(Z)V
    .locals 1
    .param p1, "dismiss"    # Z

    .prologue
    .line 741
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->dismissKeyguard(Z)V

    .line 740
    :cond_0
    return-void
.end method

.method public enableScreenTimeout(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    const/16 v3, 0x80

    .line 1952
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "enableScreenTimeout: value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1953
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v1, :cond_0

    .line 1954
    const-string/jumbo v1, "enableScreenTimeout: InCallActivity is null."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1955
    return-void

    .line 1958
    :cond_0
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1959
    .local v0, "window":Landroid/view/Window;
    if-eqz p1, :cond_1

    .line 1960
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 1951
    :goto_0
    return-void

    .line 1962
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method

.method getActivity()Lcom/android/incallui/InCallActivity;
    .locals 1

    .prologue
    .line 2105
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    return-object v0
.end method

.method getAnswerPresenter()Lcom/android/incallui/AnswerPresenter;
    .locals 1

    .prologue
    .line 2109
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    return-object v0
.end method

.method public getCallCardFragmentVisible()Z
    .locals 1

    .prologue
    .line 1984
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1985
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallCardFragment;->isVisible()Z

    move-result v0

    return v0

    .line 1987
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCallList()Lcom/android/incallui/CallList;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    return-object v0
.end method

.method public getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;
    .locals 2

    .prologue
    .line 1830
    monitor-enter p0

    .line 1831
    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallCameraManager:Lcom/android/incallui/InCallCameraManager;

    if-nez v0, :cond_0

    .line 1832
    new-instance v0, Lcom/android/incallui/InCallCameraManager;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/incallui/InCallCameraManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallCameraManager:Lcom/android/incallui/InCallCameraManager;

    .line 1835
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallCameraManager:Lcom/android/incallui/InCallCameraManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1830
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInCallIntent(ZZ)Landroid/content/Intent;
    .locals 3
    .param p1, "showDialpad"    # Z
    .param p2, "newOutgoingCall"    # Z

    .prologue
    .line 1794
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1795
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10040000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1797
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1798
    if-eqz p1, :cond_0

    .line 1799
    const-string/jumbo v1, "InCallActivity.show_dialpad"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1801
    :cond_0
    const-string/jumbo v1, "InCallActivity.new_outgoing_call"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1802
    return-object v0
.end method

.method public getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    return-object v0
.end method

.method public getLastPreciseDisconnectCause()I
    .locals 1

    .prologue
    .line 2028
    iget v0, p0, Lcom/android/incallui/InCallPresenter;->mLastPreciseDisconnectCause:I

    return v0
.end method

.method public getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;
    .locals 2
    .param p1, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 801
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 803
    .local v0, "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    if-nez p1, :cond_0

    .line 804
    return-object v0

    .line 806
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 807
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 821
    :cond_1
    :goto_0
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_8

    .line 822
    iget-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mBoundAndWaitingForOutgoingCall:Z

    if-eqz v1, :cond_8

    .line 823
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    return-object v1

    .line 808
    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 809
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->WAITING_FOR_ACCOUNT:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_0

    .line 810
    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 811
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_0

    .line 812
    :cond_4
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 813
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_0

    .line 814
    :cond_5
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_6

    .line 815
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 818
    :cond_6
    :goto_1
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    goto :goto_0

    .line 816
    :cond_7
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-nez v1, :cond_6

    .line 817
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 827
    :cond_8
    return-object v0
.end method

.method public getProximitySensor()Lcom/android/incallui/ProximitySensor;
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    return-object v0
.end method

.method getSmallAnswerPresenter()Lcom/android/incallui/AnswerPresenter;
    .locals 1

    .prologue
    .line 2113
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mSmallAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    return-object v0
.end method

.method public getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 2

    .prologue
    .line 2097
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mTelecomManager:Landroid/telecom/TelecomManager;

    if-nez v0, :cond_0

    .line 2099
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2098
    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 2101
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    .prologue
    .line 2276
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 2278
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 2277
    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2280
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public getThemeColors()Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;
    .locals 1

    .prologue
    .line 2064
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mThemeColors:Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    return-object v0
.end method

.method public handleAccountSelection(Landroid/telecom/PhoneAccountHandle;Z)V
    .locals 3
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "setDefault"    # Z

    .prologue
    .line 947
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v2, :cond_0

    .line 948
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getWaitingForAccountCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 949
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_0

    .line 950
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    .line 951
    .local v1, "callId":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v2

    invoke-virtual {v2, v1, p1, p2}, Lcom/android/incallui/TelecomAdapter;->phoneAccountSelected(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;Z)V

    .line 946
    .end local v0    # "call":Lcom/android/incallui/Call;
    .end local v1    # "callId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public handleCallKey()Z
    .locals 11

    .prologue
    const/16 v9, 0x8

    const/4 v10, 0x1

    .line 1211
    const-string/jumbo v7, "handleCallKey"

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1220
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    .line 1221
    .local v1, "calls":Lcom/android/incallui/CallList;
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v6

    .line 1222
    .local v6, "incomingCall":Lcom/android/incallui/Call;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "incomingCall: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1225
    if-eqz v6, :cond_0

    .line 1226
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v7

    .line 1227
    invoke-virtual {v6}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 1226
    invoke-virtual {v7, v8, v9}, Lcom/android/incallui/TelecomAdapter;->answerCall(Ljava/lang/String;I)V

    .line 1228
    return v10

    .line 1234
    :cond_0
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1235
    .local v0, "activeCall":Lcom/android/incallui/Call;
    if-eqz v0, :cond_4

    .line 1238
    invoke-static {}, Lcom/android/incallui/SomcInCallUiUtils;->isImsCall()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1239
    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    .line 1238
    invoke-static {v7}, Lcom/android/incallui/SomcInCallUiUtils;->isImsMultipartyCallSupported(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1240
    :cond_1
    const/4 v7, 0x4

    .line 1239
    invoke-virtual {v0, v7}, Lcom/android/incallui/Call;->can(I)Z

    move-result v3

    .line 1241
    :goto_0
    invoke-virtual {v0, v9}, Lcom/android/incallui/Call;->can(I)Z

    move-result v4

    .line 1244
    .local v4, "canSwap":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "activeCall: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", canMerge: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1245
    const-string/jumbo v8, ", canSwap: "

    .line 1244
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1248
    if-eqz v3, :cond_3

    .line 1249
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/incallui/TelecomAdapter;->merge(Ljava/lang/String;)V

    .line 1250
    return v10

    .line 1239
    .end local v4    # "canSwap":Z
    :cond_2
    const/4 v3, 0x0

    .local v3, "canMerge":Z
    goto :goto_0

    .line 1251
    .end local v3    # "canMerge":Z
    .restart local v4    # "canSwap":Z
    :cond_3
    if-eqz v4, :cond_4

    .line 1252
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/incallui/TelecomAdapter;->swap(Ljava/lang/String;)V

    .line 1253
    return v10

    .line 1260
    .end local v4    # "canSwap":Z
    :cond_4
    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v5

    .line 1261
    .local v5, "heldCall":Lcom/android/incallui/Call;
    if-eqz v5, :cond_5

    .line 1264
    invoke-virtual {v5, v10}, Lcom/android/incallui/Call;->can(I)Z

    move-result v2

    .line 1266
    .local v2, "canHold":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "heldCall: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", canHold: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1269
    invoke-virtual {v5}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    if-ne v7, v9, :cond_5

    if-eqz v2, :cond_5

    .line 1270
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    .line 1271
    return v10

    .line 1276
    .end local v2    # "canHold":Z
    :cond_5
    return v10
.end method

.method public hangUpOngoingCall(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 973
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v1, :cond_1

    .line 974
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-nez v1, :cond_0

    .line 977
    invoke-static {p1}, Lcom/android/incallui/StatusBarNotifier;->clearAllCallNotifications(Landroid/content/Context;)V

    .line 979
    :cond_0
    return-void

    .line 982
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 983
    .local v0, "call":Lcom/android/incallui/Call;
    if-nez v0, :cond_2

    .line 984
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 987
    :cond_2
    if-eqz v0, :cond_3

    .line 988
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->disconnectCall(Ljava/lang/String;)V

    .line 989
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->setState(I)V

    .line 990
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallList;->onUpdate(Lcom/android/incallui/Call;)V

    .line 970
    :cond_3
    return-void
.end method

.method public hasSmartCoverPresenter()Z
    .locals 2

    .prologue
    .line 879
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mSmallAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mSmallAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 879
    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallUiListeners:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mSmallAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 879
    if-eqz v0, :cond_0

    .line 882
    const/4 v0, 0x1

    return v0

    .line 884
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isActivityStarted()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1095
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v1, :cond_0

    .line 1096
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1095
    :cond_0
    :goto_0
    return v0

    .line 1097
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isAnyWidgetVisibleAfterCall()Z
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallWidgetManager:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallWidgetManager:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    invoke-virtual {v0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->isAnyWidgetVisibleAfterCall()Z

    move-result v0

    return v0

    .line 413
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCallAnswering()Z
    .locals 1

    .prologue
    .line 2199
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsCallAnswering:Z

    return v0
.end method

.method public isChangingConfigurations()Z
    .locals 1

    .prologue
    .line 1105
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    return v0
.end method

.method public isDialpadVisible()Z
    .locals 1

    .prologue
    .line 2010
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v0, :cond_0

    .line 2011
    const/4 v0, 0x0

    return v0

    .line 2013
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isDialpadVisible()Z

    move-result v0

    return v0
.end method

.method public isFullscreen()Z
    .locals 1

    .prologue
    .line 1350
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    return v0
.end method

.method public isLandscapeAllowed()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2226
    invoke-static {}, Lcom/android/incallui/SomcInCallUiUtils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2227
    return v3

    .line 2230
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->getFirstOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 2231
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v1

    invoke-static {v1}, Landroid/telecom/VideoProfile;->isVideo(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2238
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    .line 2239
    :cond_1
    return v3

    .line 2243
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public isRcsVideoEnabled()Z
    .locals 1

    .prologue
    .line 484
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mRcsVideoEnabled:Z

    return v0
.end method

.method public isRcsVideoVisible()Z
    .locals 1

    .prologue
    .line 477
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mRcsVideoVisible:Z

    return v0
.end method

.method public isRichDataCall()Z
    .locals 3

    .prologue
    .line 397
    const/4 v0, 0x0

    .line 398
    .local v0, "isRichcall":Z
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallWidgetManager:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    if-eqz v1, :cond_0

    .line 399
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallWidgetManager:Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    invoke-virtual {v1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->isAnyRemoteViewPresent()Z

    move-result v0

    .line 401
    .end local v0    # "isRichcall":Z
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isRichDataCall: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 402
    return v0
.end method

.method public isShowingInCallUi()Z
    .locals 1

    .prologue
    .line 1086
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isVisible()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public maybeStartRevealAnimation(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 1768
    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v4, :cond_1

    .line 1769
    :cond_0
    return-void

    .line 1771
    :cond_1
    const-string/jumbo v4, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1772
    .local v1, "extras":Landroid/os/Bundle;
    if-nez v1, :cond_2

    .line 1774
    return-void

    .line 1777
    :cond_2
    const-string/jumbo v4, "selectPhoneAccountAccounts"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1779
    return-void

    .line 1783
    :cond_3
    const-string/jumbo v4, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    .line 1784
    .local v0, "accountHandle":Landroid/telecom/PhoneAccountHandle;
    const-string/jumbo v4, "touchPoint"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/graphics/Point;

    .line 1786
    .local v3, "touchPoint":Landroid/graphics/Point;
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4, v5, v0}, Lcom/android/incallui/InCallPresenter;->setBoundAndWaitingForOutgoingCall(ZLandroid/telecom/PhoneAccountHandle;)V

    .line 1788
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(ZZ)Landroid/content/Intent;

    move-result-object v2

    .line 1789
    .local v2, "incallIntent":Landroid/content/Intent;
    const-string/jumbo v4, "touchPoint"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1790
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1767
    return-void
.end method

.method public notifyFullscreenModeChange(Z)V
    .locals 3
    .param p1, "isFullscreenMode"    # Z

    .prologue
    .line 1360
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallPresenter$InCallEventListener;

    .line 1361
    .local v0, "listener":Lcom/android/incallui/InCallPresenter$InCallEventListener;
    invoke-interface {v0, p1}, Lcom/android/incallui/InCallPresenter$InCallEventListener;->onFullscreenModeChanged(Z)V

    goto :goto_0

    .line 1359
    .end local v0    # "listener":Lcom/android/incallui/InCallPresenter$InCallEventListener;
    :cond_0
    return-void
.end method

.method onActivityStarted()V
    .locals 1

    .prologue
    .line 1166
    const-string/jumbo v0, "onActivityStarted"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1167
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallPresenter;->notifyInCallUiStateNotifier(Z)V

    .line 1165
    return-void
.end method

.method onActivityStopped()V
    .locals 1

    .prologue
    .line 1172
    const-string/jumbo v0, "onActivityStopped"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1173
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallPresenter;->notifyInCallUiStateNotifier(Z)V

    .line 1171
    return-void
.end method

.method public onBringToForeground(Z)V
    .locals 1
    .param p1, "showDialpad"    # Z

    .prologue
    .line 653
    const-string/jumbo v0, "Bringing UI to foreground."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 654
    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallPresenter;->bringToForeground(Z)V

    .line 652
    return-void
.end method

.method public onCallAdded(Landroid/telecom/Call;)V
    .locals 2
    .param p1, "call"    # Landroid/telecom/Call;

    .prologue
    .line 664
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/InCallPresenter;->setBoundAndWaitingForOutgoingCall(ZLandroid/telecom/PhoneAccountHandle;)V

    .line 665
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallCallback:Landroid/telecom/Call$Callback;

    invoke-virtual {p1, v0}, Landroid/telecom/Call;->registerCallback(Landroid/telecom/Call$Callback;)V

    .line 661
    return-void
.end method

.method public onCallListChange(Lcom/android/incallui/CallList;)V
    .locals 9
    .param p1, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    const/4 v8, 0x0

    .line 690
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 691
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallCardFragment;->isAnimating()Z

    move-result v6

    .line 690
    if-eqz v6, :cond_0

    .line 692
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/incallui/InCallPresenter;->mAwaitingCallListUpdate:Z

    .line 693
    return-void

    .line 695
    :cond_0
    if-nez p1, :cond_1

    .line 696
    return-void

    .line 699
    :cond_1
    iput-boolean v8, p0, Lcom/android/incallui/InCallPresenter;->mAwaitingCallListUpdate:Z

    .line 701
    invoke-virtual {p0, p1}, Lcom/android/incallui/InCallPresenter;->getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v4

    .line 702
    .local v4, "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 703
    .local v5, "oldState":Lcom/android/incallui/InCallPresenter$InCallState;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onCallListChange oldState= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " newState="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 704
    invoke-direct {p0, v4}, Lcom/android/incallui/InCallPresenter;->startOrFinishUi(Lcom/android/incallui/InCallPresenter$InCallState;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v4

    .line 705
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onCallListChange newState changed to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 707
    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter$InCallState;->isIncoming()Z

    move-result v6

    if-nez v6, :cond_2

    .line 708
    iput-boolean v8, p0, Lcom/android/incallui/InCallPresenter;->mIsCallAnswering:Z

    .line 709
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/incallui/SomcInCallUiUtils;->isHoldSupported(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 710
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 711
    .local v0, "call":Lcom/android/incallui/Call;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_2

    .line 712
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    .line 718
    .end local v0    # "call":Lcom/android/incallui/Call;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Phone switching state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 719
    iput-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 722
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/Set;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/InCallPresenter$InCallStateListener;

    .line 723
    .local v2, "listener":Lcom/android/incallui/InCallPresenter$InCallStateListener;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Notify "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " of state "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-virtual {v7}, Lcom/android/incallui/InCallPresenter$InCallState;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 724
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-interface {v2, v5, v6, p1}, Lcom/android/incallui/InCallPresenter$InCallStateListener;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    goto :goto_0

    .line 727
    .end local v2    # "listener":Lcom/android/incallui/InCallPresenter$InCallStateListener;
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->isAmWorking()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 732
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallServiceImpl;->isDsdaEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v6, :cond_5

    .line 733
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6}, Lcom/android/incallui/InCallActivity;->updateDsdaTab()V

    .line 689
    :cond_5
    return-void

    .line 728
    :cond_6
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v6

    if-nez v6, :cond_7

    .line 729
    invoke-virtual {p1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v6

    if-eqz v6, :cond_8

    const/4 v1, 0x1

    .line 730
    .local v1, "hasCall":Z
    :goto_2
    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v6, v1}, Lcom/android/incallui/InCallActivity;->dismissKeyguard(Z)V

    goto :goto_1

    .line 728
    .end local v1    # "hasCall":Z
    :cond_7
    const/4 v1, 0x1

    .restart local v1    # "hasCall":Z
    goto :goto_2

    .line 729
    .end local v1    # "hasCall":Z
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "hasCall":Z
    goto :goto_2
.end method

.method public onCallRemoved(Landroid/telecom/Call;)V
    .locals 1
    .param p1, "call"    # Landroid/telecom/Call;

    .prologue
    .line 673
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallCallback:Landroid/telecom/Call$Callback;

    invoke-virtual {p1, v0}, Landroid/telecom/Call;->unregisterCallback(Landroid/telecom/Call$Callback;)V

    .line 672
    return-void
.end method

.method public onCanAddCallChanged(Z)V
    .locals 3
    .param p1, "canAddCall"    # Z

    .prologue
    .line 677
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCanAddCallListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallPresenter$CanAddCallListener;

    .line 678
    .local v0, "listener":Lcom/android/incallui/InCallPresenter$CanAddCallListener;
    invoke-interface {v0, p1}, Lcom/android/incallui/InCallPresenter$CanAddCallListener;->onCanAddCallChanged(Z)V

    goto :goto_0

    .line 676
    .end local v0    # "listener":Lcom/android/incallui/InCallPresenter$CanAddCallListener;
    :cond_0
    return-void
.end method

.method public onDeviceOrientationChange(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    .line 1849
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDeviceOrientationChange: orientation= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1851
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-eqz v2, :cond_0

    .line 1852
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v2, p1}, Lcom/android/incallui/CallList;->notifyCallsOfDeviceRotation(I)V

    .line 1858
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mOrientationListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallPresenter$InCallOrientationListener;

    .line 1859
    .local v0, "listener":Lcom/android/incallui/InCallPresenter$InCallOrientationListener;
    invoke-interface {v0, p1}, Lcom/android/incallui/InCallPresenter$InCallOrientationListener;->onDeviceOrientationChanged(I)V

    goto :goto_1

    .line 1854
    .end local v0    # "listener":Lcom/android/incallui/InCallPresenter$InCallOrientationListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    const-string/jumbo v2, "onDeviceOrientationChange: CallList is null."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1848
    .restart local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public onDisconnect(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 784
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->maybeShowErrorDialogOnDisconnect(Lcom/android/incallui/Call;)V

    .line 787
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->onCallListChange(Lcom/android/incallui/CallList;)V

    .line 789
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->dismissKeyguard(Z)V

    .line 793
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->wakeUpScreen()V

    .line 783
    return-void
.end method

.method public onDismissDialog()V
    .locals 2

    .prologue
    .line 1285
    const-string/jumbo v0, "Dialog dismissed"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1286
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_0

    .line 1287
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptFinishActivity()V

    .line 1288
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptCleanup()V

    .line 1284
    :cond_0
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/Call;)V
    .locals 6
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 753
    sget-object v4, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-direct {p0, v4}, Lcom/android/incallui/InCallPresenter;->startOrFinishUi(Lcom/android/incallui/InCallPresenter$InCallState;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v2

    .line 754
    .local v2, "newState":Lcom/android/incallui/InCallPresenter$InCallState;
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 756
    .local v3, "oldState":Lcom/android/incallui/InCallPresenter$InCallState;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Phone switching state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 757
    iput-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 759
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallPresenter$IncomingCallListener;

    .line 760
    .local v0, "listener":Lcom/android/incallui/InCallPresenter$IncomingCallListener;
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-interface {v0, v3, v4, p1}, Lcom/android/incallui/InCallPresenter$IncomingCallListener;->onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    goto :goto_0

    .line 763
    .end local v0    # "listener":Lcom/android/incallui/InCallPresenter$IncomingCallListener;
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallServiceImpl;->isDsdaEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v4, :cond_1

    .line 764
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->updateDsdaTab()V

    .line 767
    :cond_1
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->getCallCardFragmentVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 771
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->forceFullUiIfRichCall()Z

    .line 752
    return-void

    .line 768
    :cond_3
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v4}, Lcom/android/incallui/InCallActivity;->getCallCardFragment()Lcom/android/incallui/CallCardFragment;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/incallui/CallCardFragment;->setVisible(Z)V

    goto :goto_1
.end method

.method public onPostDialCharWait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "chars"    # Ljava/lang/String;

    .prologue
    .line 1201
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/InCallActivity;->showPostCharWaitDialog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    :cond_0
    return-void
.end method

.method public onServiceBind()V
    .locals 1

    .prologue
    .line 1755
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mServiceBound:Z

    .line 1754
    return-void
.end method

.method public onServiceUnbind()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1759
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/incallui/InCallPresenter;->setBoundAndWaitingForOutgoingCall(ZLandroid/telecom/PhoneAccountHandle;)V

    .line 1760
    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mServiceBound:Z

    .line 1758
    return-void
.end method

.method public onUiShowing(Z)V
    .locals 7
    .param p1, "showing"    # Z

    .prologue
    const/4 v4, 0x1

    .line 1124
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    if-eqz v3, :cond_0

    .line 1125
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    iget-object v5, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    iget-object v6, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v3, v5, v6}, Lcom/android/incallui/StatusBarNotifier;->updateNotification(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 1128
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    if-eqz v3, :cond_1

    .line 1129
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {v3, p1}, Lcom/android/incallui/ProximitySensor;->onInCallShowing(Z)V

    .line 1132
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/incalluibind/ObjectFactory;->getUiReadyBroadcastIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 1133
    .local v0, "broadcastIntent":Landroid/content/Intent;
    if-eqz v0, :cond_2

    .line 1134
    const-string/jumbo v5, "com.android.incallui.intent.extra.FIRST_TIME_SHOWN"

    iget-boolean v3, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1136
    if-eqz p1, :cond_4

    .line 1137
    const-string/jumbo v3, "Sending sticky broadcast: "

    invoke-static {p0, v3, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1138
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1145
    :cond_2
    :goto_1
    if-eqz p1, :cond_5

    .line 1146
    iput-boolean v4, p0, Lcom/android/incallui/InCallPresenter;->mIsActivityPreviouslyStarted:Z

    .line 1151
    :goto_2
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallUiListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "listener$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallPresenter$InCallUiListener;

    .line 1152
    .local v1, "listener":Lcom/android/incallui/InCallPresenter$InCallUiListener;
    invoke-interface {v1, p1}, Lcom/android/incallui/InCallPresenter$InCallUiListener;->onUiShowing(Z)V

    goto :goto_3

    .end local v1    # "listener":Lcom/android/incallui/InCallPresenter$InCallUiListener;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_3
    move v3, v4

    .line 1134
    goto :goto_0

    .line 1140
    :cond_4
    const-string/jumbo v3, "Removing sticky broadcast: "

    invoke-static {p0, v3, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1141
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 1148
    :cond_5
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->updateIsChangingConfigurations()V

    goto :goto_2

    .line 1121
    .restart local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_6
    return-void
.end method

.method public onUpgradeToVideo(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 775
    return-void
.end method

.method public removeCanAddCallListener(Lcom/android/incallui/InCallPresenter$CanAddCallListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$CanAddCallListener;

    .prologue
    .line 915
    if-eqz p1, :cond_0

    .line 916
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mCanAddCallListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 914
    :cond_0
    return-void
.end method

.method public removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallDetailsListener;

    .prologue
    .line 904
    if-eqz p1, :cond_0

    .line 905
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mDetailsListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 903
    :cond_0
    return-void
.end method

.method public removeInCallEventListener(Lcom/android/incallui/InCallPresenter$InCallEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallEventListener;

    .prologue
    .line 937
    if-eqz p1, :cond_0

    .line 938
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 936
    :cond_0
    return-void
.end method

.method public removeInCallUiListener(Lcom/android/incallui/InCallPresenter$InCallUiListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallUiListener;

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallUiListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$IncomingCallListener;

    .prologue
    .line 868
    if-eqz p1, :cond_0

    .line 869
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mIncomingCallListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 867
    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallStateListener;

    .prologue
    .line 893
    if-eqz p1, :cond_0

    .line 894
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 892
    :cond_0
    return-void
.end method

.method public removeOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallPresenter$InCallOrientationListener;

    .prologue
    .line 926
    if-eqz p1, :cond_0

    .line 927
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mOrientationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 925
    :cond_0
    return-void
.end method

.method public sendAddParticipantIntent()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1806
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1807
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1811
    const-string/jumbo v2, "add_call_mode"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1812
    const-string/jumbo v2, "add_participant"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1814
    :try_start_0
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1805
    :goto_0
    return-void

    .line 1815
    :catch_0
    move-exception v0

    .line 1820
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "Activity for adding calls isn\'t found."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setActivity(Lcom/android/incallui/InCallActivity;)V
    .locals 2
    .param p1, "inCallActivity"    # Lcom/android/incallui/InCallActivity;

    .prologue
    .line 537
    if-nez p1, :cond_0

    .line 538
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "registerActivity cannot be called with null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eq v0, p1, :cond_1

    .line 541
    const-string/jumbo v0, "Setting a second activity before destroying the first."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 543
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter;->updateActivity(Lcom/android/incallui/InCallActivity;)V

    .line 536
    return-void
.end method

.method public setBoundAndWaitingForOutgoingCall(ZLandroid/telecom/PhoneAccountHandle;)V
    .locals 2
    .param p1, "isBound"    # Z
    .param p2, "handle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBoundAndWaitingForOutgoingCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 840
    iput-boolean p1, p0, Lcom/android/incallui/InCallPresenter;->mBoundAndWaitingForOutgoingCall:Z

    .line 841
    iput-object p2, p0, Lcom/android/incallui/InCallPresenter;->mPendingPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 842
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_0

    .line 843
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    iput-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallState:Lcom/android/incallui/InCallPresenter$InCallState;

    .line 834
    :cond_0
    return-void
.end method

.method setCallAnswering(Z)V
    .locals 0
    .param p1, "isCallAnswering"    # Z

    .prologue
    .line 2203
    iput-boolean p1, p0, Lcom/android/incallui/InCallPresenter;->mIsCallAnswering:Z

    .line 2202
    return-void
.end method

.method public setFullScreen(Z)V
    .locals 1
    .param p1, "isFullScreen"    # Z

    .prologue
    .line 1318
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/InCallPresenter;->setFullScreen(ZZ)V

    .line 1317
    return-void
.end method

.method public setFullScreen(ZZ)V
    .locals 2
    .param p1, "isFullScreen"    # Z
    .param p2, "force"    # Z

    .prologue
    .line 1329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFullScreen = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1332
    invoke-virtual {p0}, Lcom/android/incallui/InCallPresenter;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1333
    const/4 p1, 0x0

    .line 1334
    .local p1, "isFullScreen":Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFullScreen overridden as dialpad is shown = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1337
    .end local p1    # "isFullScreen":Z
    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    if-ne v0, p1, :cond_1

    if-eqz p2, :cond_2

    .line 1341
    :cond_1
    iput-boolean p1, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    .line 1342
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->notifyFullscreenModeChange(Z)V

    .line 1328
    return-void

    .line 1338
    :cond_2
    const-string/jumbo v0, "setFullScreen ignored as already in that state."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1339
    return-void
.end method

.method public setInCallAllowsOrientationChange(Z)V
    .locals 3
    .param p1, "allowOrientationChange"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1871
    iput-boolean p1, p0, Lcom/android/incallui/InCallPresenter;->mLandscapeAllowed:Z

    .line 1874
    if-eqz p1, :cond_0

    .line 1875
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1876
    const-string/jumbo v1, "accelerometer_rotation"

    .line 1875
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 1877
    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mLandscapeAllowed:Z

    .line 1880
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setInCallAllowsOrientationChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mLandscapeAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1882
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v0, :cond_1

    .line 1883
    const-string/jumbo v0, "InCallActivity is null. Can\'t set requested orientation."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1884
    return-void

    .line 1887
    :cond_1
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->updateInCallOrientation()V

    .line 1870
    return-void
.end method

.method public setRcsVideoEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mRcsVideoEnabled:Z

    if-eq v0, p1, :cond_0

    .line 458
    iput-boolean p1, p0, Lcom/android/incallui/InCallPresenter;->mRcsVideoEnabled:Z

    .line 460
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    new-instance v1, Lcom/android/incallui/InCallPresenter$6;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallPresenter$6;-><init>(Lcom/android/incallui/InCallPresenter;)V

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 456
    :cond_0
    return-void
.end method

.method public setRcsVideoVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mRcsVideoVisible:Z

    if-eq v0, p1, :cond_0

    .line 438
    iput-boolean p1, p0, Lcom/android/incallui/InCallPresenter;->mRcsVideoVisible:Z

    .line 440
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    new-instance v1, Lcom/android/incallui/InCallPresenter$5;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallPresenter$5;-><init>(Lcom/android/incallui/InCallPresenter;)V

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 436
    :cond_0
    return-void
.end method

.method public setThemeColors()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2037
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-nez v3, :cond_0

    .line 2038
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mPendingPhoneAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-direct {p0, v3}, Lcom/android/incallui/InCallPresenter;->getColorsFromPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mThemeColors:Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    .line 2043
    :goto_0
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v3, :cond_1

    .line 2044
    return-void

    .line 2040
    :cond_0
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/incallui/InCallPresenter;->getColorsFromCall(Lcom/android/incallui/Call;)Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    move-result-object v3

    iput-object v3, p0, Lcom/android/incallui/InCallPresenter;->mThemeColors:Lcom/android/contacts/common/util/MaterialColorMapUtils$MaterialPalette;

    goto :goto_0

    .line 2047
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2049
    .local v1, "resources":Landroid/content/res/Resources;
    const v3, 0x7f070062

    invoke-virtual {v1, v3, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 2051
    .local v0, "color":I
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 2052
    const/high16 v4, -0x80000000

    .line 2051
    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 2053
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 2054
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 2055
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    .line 2056
    const v3, 0x7f0b0310

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2055
    invoke-direct {v2, v3, v5, v0}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 2057
    .local v2, "td":Landroid/app/ActivityManager$TaskDescription;
    iget-object v3, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3, v2}, Lcom/android/incallui/InCallActivity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 2035
    return-void
.end method

.method public setUp(Landroid/content/Context;Lcom/android/incallui/CallList;Lcom/android/incallui/AudioModeProvider;Lcom/android/incallui/StatusBarNotifier;Lcom/android/incallui/ContactInfoCache;Lcom/android/incallui/ProximitySensor;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callList"    # Lcom/android/incallui/CallList;
    .param p3, "audioModeProvider"    # Lcom/android/incallui/AudioModeProvider;
    .param p4, "statusBarNotifier"    # Lcom/android/incallui/StatusBarNotifier;
    .param p5, "contactInfoCache"    # Lcom/android/incallui/ContactInfoCache;
    .param p6, "proximitySensor"    # Lcom/android/incallui/ProximitySensor;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 258
    iget-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    if-eqz v1, :cond_3

    .line 259
    const-string/jumbo v1, "New service connection replacing existing one."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    if-ne p1, v1, :cond_0

    move v1, v2

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 262
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    if-ne p2, v1, :cond_1

    move v1, v2

    :goto_1
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 263
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    if-ne p3, v1, :cond_2

    :goto_2
    invoke-static {v2}, Lcom/google/common/base/Preconditions;->checkState(Z)V

    .line 264
    return-void

    :cond_0
    move v1, v3

    .line 261
    goto :goto_0

    :cond_1
    move v1, v3

    .line 262
    goto :goto_1

    :cond_2
    move v2, v3

    .line 263
    goto :goto_2

    .line 267
    :cond_3
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    .line 269
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->setUpExt()V

    .line 271
    iput-object p5, p0, Lcom/android/incallui/InCallPresenter;->mContactInfoCache:Lcom/android/incallui/ContactInfoCache;

    .line 273
    iput-object p4, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    .line 274
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mStatusBarNotifier:Lcom/android/incallui/StatusBarNotifier;

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 276
    iput-object p3, p0, Lcom/android/incallui/InCallPresenter;->mAudioModeProvider:Lcom/android/incallui/AudioModeProvider;

    .line 278
    iput-object p6, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    .line 279
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mProximitySensor:Lcom/android/incallui/ProximitySensor;

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 281
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 282
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallPresenter;->addInCallUiListener(Lcom/android/incallui/InCallPresenter$InCallUiListener;)V

    .line 283
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "power"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/incallui/InCallPresenter;->mPowerManager:Landroid/os/PowerManager;

    .line 284
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mPowerManager:Landroid/os/PowerManager;

    .line 285
    const-string/jumbo v4, "InCallPresenter"

    .line 284
    const v5, 0x1000000a

    invoke-virtual {v1, v5, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/InCallPresenter;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 287
    invoke-static {}, Lcom/android/incallui/SomcSmartCoverManager;->isStyleCoverFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 288
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mSmallAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 289
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mSmallAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallPresenter;->addInCallUiListener(Lcom/android/incallui/InCallPresenter$InCallUiListener;)V

    .line 290
    const-string/jumbo v1, "Presenter for smart cover is added."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 298
    :goto_3
    iput-object p2, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    .line 301
    iput-boolean v2, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    .line 305
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v1, p0}, Lcom/android/incallui/CallList;->addListener(Lcom/android/incallui/CallList$Listener;)V

    .line 307
    invoke-static {}, Lcom/android/incallui/InCallCsRedialHandler;->getInstance()Lcom/android/incallui/InCallCsRedialHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallCsRedialHandler;->setUp(Landroid/content/Context;)V

    .line 308
    invoke-static {}, Lcom/android/incallui/InCallUiStateNotifier;->getInstance()Lcom/android/incallui/InCallUiStateNotifier;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallUiStateNotifier;->setUp(Landroid/content/Context;)V

    .line 309
    invoke-static {}, Lcom/android/incallui/VideoPauseController;->getInstance()Lcom/android/incallui/VideoPauseController;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/VideoPauseController;->setUp(Lcom/android/incallui/InCallPresenter;)V

    .line 310
    invoke-static {}, Lcom/android/incallui/InCallMessageController;->getInstance()Lcom/android/incallui/InCallMessageController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallMessageController;->setUp(Landroid/content/Context;)V

    .line 311
    invoke-static {}, Lcom/android/incallui/OrientationModeHandler;->getInstance()Lcom/android/incallui/OrientationModeHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/OrientationModeHandler;->setUp()V

    .line 312
    invoke-static {}, Lcom/android/incallui/CallSubstateNotifier;->getInstance()Lcom/android/incallui/CallSubstateNotifier;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 314
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->initCallWidgetManager()V

    .line 315
    new-instance v0, Landroid/content/IntentFilter;

    .line 316
    const-string/jumbo v1, "android.intent.action.PRECISE_CALL_STATE"

    .line 315
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 317
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mPreciseCallStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 319
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mAccelerometerObserver:Landroid/database/ContentObserver;

    if-nez v1, :cond_4

    .line 320
    new-instance v1, Lcom/android/incallui/InCallPresenter$AccelerometerObserver;

    invoke-direct {v1, p0}, Lcom/android/incallui/InCallPresenter$AccelerometerObserver;-><init>(Lcom/android/incallui/InCallPresenter;)V

    iput-object v1, p0, Lcom/android/incallui/InCallPresenter;->mAccelerometerObserver:Landroid/database/ContentObserver;

    .line 321
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 322
    const-string/jumbo v2, "accelerometer_rotation"

    .line 321
    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 322
    iget-object v4, p0, Lcom/android/incallui/InCallPresenter;->mAccelerometerObserver:Landroid/database/ContentObserver;

    .line 321
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 325
    :cond_4
    invoke-static {}, Lcom/android/incallui/InCallZoomController;->getInstance()Lcom/android/incallui/InCallZoomController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallZoomController;->setUp(Landroid/content/Context;)V

    .line 326
    invoke-static {}, Lcom/android/incallui/SessionModificationCauseNotifier;->getInstance()Lcom/android/incallui/SessionModificationCauseNotifier;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 328
    invoke-static {}, Lcom/android/incallui/SomcThermalCheck;->getInstance()Lcom/android/incallui/SomcThermalCheck;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/incallui/SomcThermalCheck;->setUp(Landroid/content/Context;)V

    .line 330
    const-string/jumbo v1, "Finished InCallPresenter.setUp"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    return-void

    .line 293
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_5
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mSmallAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 294
    iget-object v1, p0, Lcom/android/incallui/InCallPresenter;->mSmallAnswerPresenter:Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {p0, v1}, Lcom/android/incallui/InCallPresenter;->removeInCallUiListener(Lcom/android/incallui/InCallPresenter$InCallUiListener;)Z

    .line 295
    const-string/jumbo v1, "Presenter for smart cover is removed or not added."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method public setWidgetAreaUsed(ZZLandroid/view/ViewGroup;)V
    .locals 3
    .param p1, "fgAreaUsed"    # Z
    .param p2, "bgAreaUsed"    # Z
    .param p3, "viewToAnimate"    # Landroid/view/ViewGroup;

    .prologue
    .line 1383
    iget-object v2, p0, Lcom/android/incallui/InCallPresenter;->mInCallEventListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/InCallPresenter$InCallEventListener;

    .line 1384
    .local v0, "listener":Lcom/android/incallui/InCallPresenter$InCallEventListener;
    invoke-interface {v0, p1, p2, p3}, Lcom/android/incallui/InCallPresenter$InCallEventListener;->onWidgetAreaUsedChanged(ZZLandroid/view/ViewGroup;)V

    goto :goto_0

    .line 1382
    .end local v0    # "listener":Lcom/android/incallui/InCallPresenter$InCallEventListener;
    :cond_0
    return-void
.end method

.method public showAnsweringMachineFragment(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 2213
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v0, :cond_0

    .line 2214
    return-void

    .line 2217
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->showAnsweringMachineFragment(Z)V

    .line 2212
    return-void
.end method

.method public showConferenceCallManager(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 1997
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v0, :cond_0

    .line 1998
    return-void

    .line 2001
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0, p1}, Lcom/android/incallui/InCallActivity;->showConferenceFragment(Z)V

    .line 1996
    return-void
.end method

.method public showInCall(ZZ)V
    .locals 2
    .param p1, "showDialpad"    # Z
    .param p2, "newOutgoingCall"    # Z

    .prologue
    .line 1750
    const-string/jumbo v0, "Showing InCallActivity"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1751
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/InCallPresenter;->getInCallIntent(ZZ)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1749
    return-void
.end method

.method public tearDown()V
    .locals 1

    .prologue
    .line 496
    const-string/jumbo v0, "tearDown"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 497
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mServiceConnected:Z

    .line 498
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->attemptCleanup()V

    .line 500
    invoke-static {}, Lcom/android/incallui/VideoPauseController;->getInstance()Lcom/android/incallui/VideoPauseController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VideoPauseController;->tearDown()V

    .line 501
    invoke-static {}, Lcom/android/incallui/InCallUiStateNotifier;->getInstance()Lcom/android/incallui/InCallUiStateNotifier;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallUiStateNotifier;->tearDown()V

    .line 502
    invoke-static {}, Lcom/android/incallui/InCallMessageController;->getInstance()Lcom/android/incallui/InCallMessageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallMessageController;->tearDown()V

    .line 503
    invoke-static {}, Lcom/android/incallui/OrientationModeHandler;->getInstance()Lcom/android/incallui/OrientationModeHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/OrientationModeHandler;->tearDown()V

    .line 504
    invoke-static {}, Lcom/android/incallui/CallSubstateNotifier;->getInstance()Lcom/android/incallui/CallSubstateNotifier;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 505
    invoke-static {}, Lcom/android/incallui/InCallZoomController;->getInstance()Lcom/android/incallui/InCallZoomController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallZoomController;->tearDown()V

    .line 506
    invoke-static {}, Lcom/android/incallui/SomcThermalCheck;->getInstance()Lcom/android/incallui/SomcThermalCheck;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SomcThermalCheck;->tearDown()V

    .line 507
    invoke-static {}, Lcom/android/incallui/SessionModificationCauseNotifier;->getInstance()Lcom/android/incallui/SessionModificationCauseNotifier;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 495
    return-void
.end method

.method public toggleFullscreenMode()Z
    .locals 3

    .prologue
    .line 1298
    iget-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 1299
    .local v0, "isFullScreen":Z
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toggleFullscreenMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1300
    invoke-virtual {p0, v0}, Lcom/android/incallui/InCallPresenter;->setFullScreen(Z)V

    .line 1301
    iget-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsFullScreen:Z

    return v1

    .line 1298
    .end local v0    # "isFullScreen":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "isFullScreen":Z
    goto :goto_0
.end method

.method public unsetActivity(Lcom/android/incallui/InCallActivity;)V
    .locals 2
    .param p1, "inCallActivity"    # Lcom/android/incallui/InCallActivity;

    .prologue
    const/4 v1, 0x0

    .line 551
    if-nez p1, :cond_0

    .line 552
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unregisterActivity cannot be called with null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-nez v0, :cond_1

    .line 555
    const-string/jumbo v0, "No InCallActivity currently set, no need to unset."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 556
    return-void

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eq v0, p1, :cond_2

    .line 559
    const-string/jumbo v0, "Second instance of InCallActivity is trying to unregister when another instance is active. Ignoring."

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 561
    return-void

    .line 563
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/incallui/InCallPresenter;->updateActivity(Lcom/android/incallui/InCallActivity;)V

    .line 550
    return-void
.end method

.method updateIsChangingConfigurations()V
    .locals 2

    .prologue
    .line 1110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    .line 1111
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    if-eqz v0, :cond_0

    .line 1112
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->isChangingConfigurations()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    .line 1114
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "IsChangingConfigurations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/InCallPresenter;->mIsChangingConfigurations:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1109
    return-void
.end method

.method public wakeUpScreen()V
    .locals 1

    .prologue
    .line 1929
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->isScreenInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1930
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->acquireWakeLock()V

    .line 1931
    invoke-direct {p0}, Lcom/android/incallui/InCallPresenter;->releaseWakeLock()V

    .line 1928
    :cond_0
    return-void
.end method
