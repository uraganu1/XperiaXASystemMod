.class public Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;
.super Ljava/lang/Object;
.source "VoicemailPlaybackPresenter.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$Tasks;,
        Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$onSuccessfullyFetchedContentListener;,
        Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;,
        Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$MediaPlayerSeekListener;,
        Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$MediaPlayerReadyListener;,
        Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;,
        Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;,
        Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;,
        Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$SpeakerphoneListener;,
        Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$StartStopButtonListener;,
        Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$PositionUpdater;,
        Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$MediaPlayerWrapper;,
        Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$OnPositionChangeListener;,
        Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$HeadphoneStatusChangedBroadcastReceiver;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_android_socialphonebook_calllog_voicemail_VoicemailHelper$StatusActionSwitchesValues:[I = null

.field public static final FETCH_CONTENT_TIMEOUT_MS:J = 0x4e20L

.field private static final HAS_CONTENT_PROJECTION:[Ljava/lang/String;

.field private static final NUMBER_OF_THREADS_IN_POOL:I = 0x2

.field private static final PLAYBACK_STREAM:I = 0x0

.field private static final PROJECTION_HAS_CONTENT_INDEX:I = 0x0

.field private static final SLIDER_UPDATE_PERIOD_MILLIS:I = 0x21

.field private static final TAG:Ljava/lang/String; = "VoicemailPlaybackPresenter"


# instance fields
.field private mActiveVoiceMailItemView:Landroid/view/View;

.field private mApplicationContext:Landroid/content/Context;

.field private final mAsyncTaskExecutor:Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutor;

.field private mAttachedActivity:Landroid/app/Activity;

.field private mCanOnlyPlayOnSpeaker:Z

.field private mCurrentNotification:Landroid/widget/TextView;

.field private mDialog:Landroid/app/Dialog;

.field private final mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mFetchResultHandler:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

.field private mHeadphoneStatusChangedReceiver:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$HeadphoneStatusChangedBroadcastReceiver;

.field private mInitialPlaybackPosition:I

.field private mIsDualPane:Z

.field private mIsPlayingVoiceMessageThroughSpeakerPhone:Z

.field private mOnPositionChangedListener:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$OnPositionChangeListener;

.field private mOnSuccessfullyFetchedContentListener:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$onSuccessfullyFetchedContentListener;

.field mOverallState:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

.field private mPlayPosition:Landroid/widget/TextView;

.field private mPlaybackDuration:Landroid/widget/TextView;

.field private mPlaybackSeek:Landroid/widget/SeekBar;

.field private mPlaybackSpeakerphone:Landroid/widget/ImageButton;

.field private final mPlayer:Landroid/media/MediaPlayer;

.field private final mPositionUpdater:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

.field private mProximityAware:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorAware;

.field private mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private mStartPlayingImmediately:Z

.field private mStartStopButton:Landroid/widget/ImageView;

.field private final mVoicemailUri:Landroid/net/Uri;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;)Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutor;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutor;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mAttachedActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mIsPlayingVoiceMessageThroughSpeakerPhone:Z

    return v0
.end method

.method static synthetic -get6(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;)Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$OnPositionChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mOnPositionChangedListener:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$OnPositionChangeListener;

    return-object v0
.end method

.method static synthetic -get7(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic -get8(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    return-object v0
.end method

.method private static synthetic -getcom_sonyericsson_android_socialphonebook_calllog_voicemail_VoicemailHelper$StatusActionSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->-com_sonyericsson_android_socialphonebook_calllog_voicemail_VoicemailHelper$StatusActionSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->-com_sonyericsson_android_socialphonebook_calllog_voicemail_VoicemailHelper$StatusActionSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;->values()[Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;->STATUS_ACTION_CALL:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;->STATUS_ACTION_CONFIGURE:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;->STATUS_ACTION_NOACTION:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->-com_sonyericsson_android_socialphonebook_calllog_voicemail_VoicemailHelper$StatusActionSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;I)I
    .locals 0

    iput p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mInitialPlaybackPosition:I

    return p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mIsPlayingVoiceMessageThroughSpeakerPhone:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->isSpeakerPhoneOn()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;Landroid/net/Uri;)Z
    .locals 1
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->queryHasContent(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->requestFocusAndResetPlaying()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->resetPrepareStartPlaying()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;II)V
    .locals 0
    .param p1, "clipPositionInMillis"    # I
    .param p2, "clipLengthInMillis"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->setClipPosition(II)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->setFetchContentTimeout()V

    return-void
.end method

.method static synthetic -wrap15(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->setProximityForPhone()V

    return-void
.end method

.method static synthetic -wrap16(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;Z)V
    .locals 0
    .param p1, "on"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->setSpeakerPhoneOn(Z)V

    return-void
.end method

.method static synthetic -wrap17(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;IIZ)V
    .locals 0
    .param p1, "clipPosition"    # I
    .param p2, "duration"    # I
    .param p3, "shouldAbandonFocus"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->stopPlaybackAtPosition(IIZ)V

    return-void
.end method

.method static synthetic -wrap18(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;II)V
    .locals 0
    .param p1, "clipPosition"    # I
    .param p2, "duration"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->stopPlaybackAtPosition(II)V

    return-void
.end method

.method static synthetic -wrap19(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;Landroid/database/ContentObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->checkThatWeHaveAction()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->handleCompletion(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->handleError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->handlePrepared(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;Z)V
    .locals 0
    .param p1, "attached"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->headphonesAttached(Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->playbackError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->postSuccessfulPrepareActions()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->postSuccessfullyFetchedContent()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 91
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 92
    const-string/jumbo v1, "has_content"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 91
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->HAS_CONTENT_PROJECTION:[Ljava/lang/String;

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$OnPositionChangeListener;ZZLcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$onSuccessfullyFetchedContentListener;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "voicemailUri"    # Landroid/net/Uri;
    .param p3, "onPositionChangedListener"    # Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$OnPositionChangeListener;
    .param p4, "isDualPane"    # Z
    .param p5, "isPlayingVoiceMessageThroughSpeakerPhone"    # Z
    .param p6, "mListener"    # Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$onSuccessfullyFetchedContentListener;

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 190
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mAttachedActivity:Landroid/app/Activity;

    .line 191
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    .line 192
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mApplicationContext:Landroid/content/Context;

    .line 193
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutors;->createAsyncTaskExecutor()Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutor;

    .line 195
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 196
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->createMediaPlayer(Ljava/util/concurrent/ExecutorService;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    .line 197
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 198
    const/16 v2, 0x21

    .line 197
    invoke-direct {v0, p0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$PositionUpdater;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;Ljava/util/concurrent/ScheduledExecutorService;I)V

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    .line 199
    iput-object p3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mOnPositionChangedListener:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$OnPositionChangeListener;

    .line 200
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->canOnlyPlayOnSpeaker(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mCanOnlyPlayOnSpeaker:Z

    .line 202
    iput-boolean p5, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mIsPlayingVoiceMessageThroughSpeakerPhone:Z

    .line 203
    iput-boolean p4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mIsDualPane:Z

    .line 204
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mIsDualPane:Z

    if-eqz v0, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->registerHeadsetPlugIntentReceiver()V

    .line 208
    :cond_0
    iput-object p6, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mOnSuccessfullyFetchedContentListener:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$onSuccessfullyFetchedContentListener;

    .line 189
    return-void
.end method

.method private canOnlyPlayOnSpeaker(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 1067
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1068
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1067
    :cond_0
    :goto_0
    return v0

    .line 1069
    :cond_1
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private checkThatWeHaveAction()V
    .locals 3

    .prologue
    .line 323
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;->STATUS_ACTION_NOACTION:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

    .line 324
    .local v0, "action":Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mOverallState:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    if-eqz v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mOverallState:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->getAction()Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

    move-result-object v0

    .line 328
    :cond_0
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->-getcom_sonyericsson_android_socialphonebook_calllog_voicemail_VoicemailHelper$StatusActionSwitchesValues()[I

    move-result-object v1

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 337
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->showDialog(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;)V

    .line 322
    :cond_1
    :goto_0
    return-void

    .line 331
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mOverallState:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->getActionUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 332
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->showDialog(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;)V

    goto :goto_0

    .line 328
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private cleanupDialog()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 342
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 345
    :cond_0
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mDialog:Landroid/app/Dialog;

    .line 341
    return-void
.end method

.method private configurePositionBeforePlay()I
    .locals 4

    .prologue
    .line 526
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 527
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->getDesiredClipPosition()I

    move-result v1

    iget v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mInitialPlaybackPosition:I

    .line 528
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    .line 527
    invoke-direct {p0, v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->constrain(III)I

    move-result v0

    .line 529
    .local v0, "startPosition":I
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->setClipPosition(II)V

    .line 530
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 531
    return v0
.end method

.method private constrain(III)I
    .locals 0
    .param p1, "amount"    # I
    .param p2, "low"    # I
    .param p3, "high"    # I

    .prologue
    .line 566
    if-ge p1, p2, :cond_0

    .end local p2    # "low":I
    :goto_0
    return p2

    .restart local p2    # "low":I
    :cond_0
    if-le p1, p3, :cond_1

    move p2, p3

    goto :goto_0

    :cond_1
    move p2, p1

    goto :goto_0
.end method

.method private createMediaPlayer(Ljava/util/concurrent/ExecutorService;)Landroid/media/MediaPlayer;
    .locals 2
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 319
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$MediaPlayerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$MediaPlayerWrapper;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$MediaPlayerWrapper;)V

    return-object v0
.end method

.method private disableInfoEnableTime()V
    .locals 2

    .prologue
    .line 717
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mCurrentNotification:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 718
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mCurrentNotification:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 719
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->enableTimeViews()V

    .line 716
    return-void
.end method

.method private disableTimeViews()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 730
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlayPosition:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 731
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlaybackDuration:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 732
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlayPosition:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 733
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlaybackDuration:Landroid/widget/TextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    return-void
.end method

.method private disableUiElements()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 692
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mStartStopButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 693
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 694
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 695
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlayPosition:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 696
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlaybackDuration:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 697
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mCurrentNotification:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 698
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->isSpeakerPhoneOn()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->setSpeakerPhoneOn(Z)V

    .line 699
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 700
    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->setProximitySensorEnabled(Z)V

    .line 691
    return-void
.end method

.method private enableInfoDisableTime()V
    .locals 2

    .prologue
    .line 724
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mCurrentNotification:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 725
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->disableTimeViews()V

    .line 723
    return-void
.end method

.method private enableTimeViews()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 739
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlayPosition:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 740
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlaybackDuration:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 738
    return-void
.end method

.method private enableUiElements()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 705
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mStartStopButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 706
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mCanOnlyPlayOnSpeaker:Z

    if-nez v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 709
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlayPosition:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 710
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlaybackDuration:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 711
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mCurrentNotification:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 712
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 704
    return-void
.end method

.method private static formatAsMinutesAndSeconds(I)Ljava/lang/String;
    .locals 7
    .param p0, "millis"    # I

    .prologue
    .line 665
    div-int/lit16 v1, p0, 0x3e8

    .line 666
    .local v1, "seconds":I
    div-int/lit8 v0, v1, 0x3c

    .line 667
    .local v0, "minutes":I
    mul-int/lit8 v2, v0, 0x3c

    sub-int/2addr v1, v2

    .line 668
    const/16 v2, 0x63

    if-le v0, v2, :cond_0

    .line 669
    const/16 v0, 0x63

    .line 671
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string/jumbo v3, "%02d:%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 766
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mApplicationContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    return-object v0
.end method

.method private getDesiredClipPosition()I
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    return v0
.end method

.method private handleCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v2, 0x0

    .line 576
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 577
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->stopPlaybackAtPosition(IIZ)V

    .line 575
    return-void
.end method

.method private handleError(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 570
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->playbackError(Ljava/lang/Exception;)V

    .line 571
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->stopUpdating()V

    .line 572
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 569
    return-void
.end method

.method private handlePrepared(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 581
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->disableInfoEnableTime()V

    .line 580
    return-void
.end method

.method private headphonesAttached(Z)V
    .locals 4
    .param p1, "attached"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1090
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mCanOnlyPlayOnSpeaker:Z

    .line 1091
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    .line 1092
    return-void

    :cond_0
    move v0, v2

    .line 1090
    goto :goto_0

    .line 1094
    :cond_1
    if-eqz p1, :cond_2

    :goto_1
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->setSpeakerPhoneOn(Z)V

    .line 1095
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1096
    if-eqz p1, :cond_3

    .line 1097
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$SpeakerphoneListener;

    invoke-direct {v1, p0, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$SpeakerphoneListener;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$SpeakerphoneListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1101
    :goto_2
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->setProximityForPhone()V

    .line 1089
    return-void

    :cond_2
    move v1, v2

    .line 1094
    goto :goto_1

    .line 1099
    :cond_3
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2
.end method

.method private isSpeakerPhoneOn()Z
    .locals 1

    .prologue
    .line 770
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method private makeRequestForContent()V
    .locals 4

    .prologue
    .line 435
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 436
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-direct {v1, p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    .line 437
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-direct {p0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->registerContentObserver(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 438
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->getTimeoutRunnable()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 439
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->sendFetchVoicemailRequest(Landroid/net/Uri;)V

    .line 440
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->enableInfoDisableTime()V

    .line 441
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mCurrentNotification:Landroid/widget/TextView;

    const v2, 0x7f090119

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 434
    return-void
.end method

.method private playbackError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 628
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->disableUiElements()V

    .line 629
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->enableInfoDisableTime()V

    .line 630
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mCurrentNotification:Landroid/widget/TextView;

    const v1, 0x7f090117

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 631
    const-string/jumbo v0, "VoicemailPlaybackPresenter"

    const-string/jumbo v1, "Could not play voicemail"

    invoke-static {v0, v1, p1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 627
    return-void
.end method

.method private playbackStarted()V
    .locals 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mStartStopButton:Landroid/widget/ImageView;

    const v1, 0x7f020059

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 616
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlaybackSeek:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 611
    return-void
.end method

.method private playbackStopped()V
    .locals 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mStartStopButton:Landroid/widget/ImageView;

    const v1, 0x7f02006a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 623
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlaybackSeek:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 619
    return-void
.end method

.method private postSuccessfulPrepareActions()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 499
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->enableUiElements()V

    .line 502
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->disableInfoEnableTime()V

    .line 504
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlaybackSeek:Landroid/widget/SeekBar;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$PlaybackPositionListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 505
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mStartStopButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$StartStopButtonListener;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$StartStopButtonListener;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$StartStopButtonListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mCanOnlyPlayOnSpeaker:Z

    if-nez v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$SpeakerphoneListener;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$SpeakerphoneListener;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$SpeakerphoneListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mIsPlayingVoiceMessageThroughSpeakerPhone:Z

    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->setSpeakerPhoneOn(Z)V

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$MediaPlayerErrorListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 511
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$MediaPlayerCompletionListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 512
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$MediaPlayerSeekListener;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$MediaPlayerSeekListener;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$MediaPlayerSeekListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 514
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$MediaPlayerReadyListener;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$MediaPlayerReadyListener;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$MediaPlayerReadyListener;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 516
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->playbackStopped()V

    .line 518
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mStartPlayingImmediately:Z

    if-eqz v0, :cond_2

    .line 519
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->requestFocusAndResetPlaying()V

    .line 497
    :cond_1
    :goto_0
    return-void

    .line 520
    :cond_2
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mInitialPlaybackPosition:I

    if-lez v0, :cond_1

    .line 521
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->configurePositionBeforePlay()I

    goto :goto_0
.end method

.method private postSuccessfullyFetchedContent()V
    .locals 4

    .prologue
    .line 457
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->setIsBuffering()V

    .line 458
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mAsyncTaskExecutor:Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutor;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$Tasks;->PREPARE_MEDIA_PLAYER:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$Tasks;

    .line 459
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$6;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$6;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;)V

    .line 458
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 486
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mOnSuccessfullyFetchedContentListener:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$onSuccessfullyFetchedContentListener;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mOnSuccessfullyFetchedContentListener:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$onSuccessfullyFetchedContentListener;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$onSuccessfullyFetchedContentListener;->onSuccessfullyFetchedContent()V

    .line 456
    :cond_0
    return-void
.end method

.method private queryHasContent(Landroid/net/Uri;)Z
    .locals 9
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 750
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 751
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    sget-object v2, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->HAS_CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 754
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 755
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-ne v1, v7, :cond_1

    move v1, v7

    .line 758
    :goto_0
    if-eqz v6, :cond_0

    .line 759
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 755
    :cond_0
    return v1

    :cond_1
    move v1, v8

    goto :goto_0

    .line 758
    :cond_2
    if-eqz v6, :cond_3

    .line 759
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 762
    :cond_3
    return v8

    .line 757
    :catchall_0
    move-exception v1

    .line 758
    if-eqz v6, :cond_4

    .line 759
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 757
    :cond_4
    throw v1
.end method

.method private registerContentObserver(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 635
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 634
    return-void
.end method

.method private registerHeadsetPlugIntentReceiver()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 222
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mHeadphoneStatusChangedReceiver:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$HeadphoneStatusChangedBroadcastReceiver;

    if-nez v1, :cond_0

    .line 223
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$HeadphoneStatusChangedBroadcastReceiver;

    invoke-direct {v1, p0, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$HeadphoneStatusChangedBroadcastReceiver;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$HeadphoneStatusChangedBroadcastReceiver;)V

    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mHeadphoneStatusChangedReceiver:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$HeadphoneStatusChangedBroadcastReceiver;

    .line 225
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 226
    .local v0, "headsetAttachedIntentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mAttachedActivity:Landroid/app/Activity;

    .line 227
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mHeadphoneStatusChangedReceiver:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$HeadphoneStatusChangedBroadcastReceiver;

    .line 226
    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 221
    .end local v0    # "headsetAttachedIntentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private requestFocusAndResetPlaying()V
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/sonyericsson/android/socialphonebook/util/AudioUtils;->requestAudioFocus(Landroid/content/Context;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->resetPrepareStartPlaying()V

    .line 538
    :cond_0
    return-void
.end method

.method private resetPrepareStartPlaying()V
    .locals 4

    .prologue
    .line 549
    :try_start_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->configurePositionBeforePlay()I

    move-result v1

    .line 550
    .local v1, "startPosition":I
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 551
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mStartStopButton:Landroid/widget/ImageView;

    const v3, 0x7f020059

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 552
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->playbackStarted()V

    .line 553
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mApplicationContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/util/AudioUtils;->isAudioStreamedOnEarphone(Landroid/content/Context;)Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->setProximitySensorEnabled(Z)V

    .line 554
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mActiveVoiceMailItemView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/ScreenUtil;->keepScreenOn(Landroid/view/View;Z)V

    .line 555
    iget-boolean v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mIsPlayingVoiceMessageThroughSpeakerPhone:Z

    invoke-direct {p0, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->setSpeakerPhoneOn(Z)V

    .line 558
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->startUpdating(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    .end local v1    # "startPosition":I
    :goto_0
    return-void

    .line 559
    :catch_0
    move-exception v0

    .line 560
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "VoicemailPlaybackPresenter"

    const-string/jumbo v3, "resetPrepareStartPlaying() cached exception"

    invoke-static {v2, v3}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->handleError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 606
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mAttachedActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mAttachedActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 605
    :cond_0
    return-void
.end method

.method private sendFetchVoicemailRequest(Landroid/net/Uri;)V
    .locals 4
    .param p1, "voicemailUri"    # Landroid/net/Uri;

    .prologue
    .line 744
    const-string/jumbo v1, "VoicemailPlaybackPresenter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendFetchVoicemailRequest:uri is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mVoicemailUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.FETCH_VOICEMAIL"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 746
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 743
    return-void
.end method

.method private setClipPosition(II)V
    .locals 4
    .param p1, "clipPositionInMillis"    # I
    .param p2, "clipLengthInMillis"    # I

    .prologue
    .line 643
    const/4 v2, 0x0

    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 645
    .local v1, "seekBarPosition":I
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 647
    .local v0, "seekBarMax":I
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getMax()I

    move-result v2

    if-eq v2, v0, :cond_0

    .line 648
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 650
    :cond_0
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 652
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlayPosition:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->formatAsMinutesAndSeconds(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 653
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlaybackDuration:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlaybackSeek:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getMax()I

    move-result v3

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->formatAsMinutesAndSeconds(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 642
    return-void
.end method

.method private setFetchContentTimeout()V
    .locals 2

    .prologue
    .line 682
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->disableUiElements()V

    .line 683
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->enableInfoDisableTime()V

    .line 684
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mCurrentNotification:Landroid/widget/TextView;

    const v1, 0x7f09011a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 681
    return-void
.end method

.method private setIsBuffering()V
    .locals 2

    .prologue
    .line 677
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->disableUiElements()V

    .line 678
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mCurrentNotification:Landroid/widget/TextView;

    const v1, 0x7f090118

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 674
    return-void
.end method

.method private setOverState(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;)V
    .locals 0
    .param p1, "OverallState"    # Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mOverallState:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    .line 308
    return-void
.end method

.method private setPlayerViewComponentFromLayout(Landroid/view/View;)V
    .locals 2
    .param p1, "playbackLayout"    # Landroid/view/View;

    .prologue
    .line 291
    if-eqz p1, :cond_1

    .line 292
    const v0, 0x7f0e01d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlaybackSeek:Landroid/widget/SeekBar;

    .line 293
    const v0, 0x7f0e01d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mStartStopButton:Landroid/widget/ImageView;

    .line 295
    const v0, 0x7f0e01d7

    .line 294
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    .line 296
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mCanOnlyPlayOnSpeaker:Z

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 298
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    const v1, 0x7f020075

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 300
    :cond_0
    const v0, 0x7f0e01d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlayPosition:Landroid/widget/TextView;

    .line 301
    const v0, 0x7f0e01d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlaybackDuration:Landroid/widget/TextView;

    .line 304
    const v0, 0x7f0e01d3

    .line 303
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mCurrentNotification:Landroid/widget/TextView;

    .line 290
    :cond_1
    return-void
.end method

.method private setProximityForPhone()V
    .locals 1

    .prologue
    .line 1136
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mIsDualPane:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->isVoicemailPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1138
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/AudioUtils;->isAudioStreamedOnEarphone(Landroid/content/Context;)Z

    move-result v0

    .line 1137
    invoke-direct {p0, v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->setProximitySensorEnabled(Z)V

    .line 1135
    :cond_0
    return-void
.end method

.method private setProximitySensorEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mProximityAware:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorAware;

    if-eqz v0, :cond_0

    .line 1144
    if-eqz p1, :cond_1

    .line 1145
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mProximityAware:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorAware;

    invoke-interface {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorAware;->enableProximitySensor()V

    .line 1142
    :cond_0
    :goto_0
    return-void

    .line 1147
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mProximityAware:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorAware;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorAware;->disableProximitySensor(Z)V

    goto :goto_0
.end method

.method private setSpeakerPhoneOn(Z)V
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 774
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 775
    if-eqz p1, :cond_0

    .line 776
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    const v1, 0x7f020075

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 773
    :goto_0
    return-void

    .line 778
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlaybackSpeakerphone:Landroid/widget/ImageButton;

    const v1, 0x7f020074

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method private setVolumeControlStream()V
    .locals 2

    .prologue
    .line 783
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mAttachedActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mAttachedActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 782
    :cond_0
    return-void
.end method

.method private showDialog(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;)V
    .locals 6
    .param p1, "action"    # Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;

    .prologue
    const/high16 v5, 0x1040000

    const v4, 0x104000a

    .line 349
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->cleanupDialog()V

    .line 351
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mAttachedActivity:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 353
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->-getcom_sonyericsson_android_socialphonebook_calllog_voicemail_VoicemailHelper$StatusActionSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$StatusAction;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 415
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mDialog:Landroid/app/Dialog;

    .line 416
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 348
    return-void

    .line 355
    :pswitch_0
    const v2, 0x7f090121

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 356
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mOverallState:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->getDetailedMessage()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 358
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$1;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$1;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;)V

    .line 357
    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 366
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$2;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$2;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;)V

    .line 365
    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 377
    :pswitch_1
    const v2, 0x7f090122

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 379
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mOverallState:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;

    invoke-virtual {v2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;->getDetailedMessage()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 381
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$3;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$3;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;)V

    .line 380
    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 389
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$4;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$4;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;)V

    .line 388
    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 400
    :pswitch_2
    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mAttachedActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 401
    .local v1, "mString":[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 402
    const v2, 0x7f090117

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 404
    new-instance v2, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$5;

    invoke-direct {v2, p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$5;-><init>(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;)V

    .line 403
    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 353
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private stopPlaybackAtPosition(II)V
    .locals 2
    .param p1, "clipPosition"    # I
    .param p2, "duration"    # I

    .prologue
    const/4 v1, 0x0

    .line 585
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mActiveVoiceMailItemView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/ScreenUtil;->keepScreenOn(Landroid/view/View;Z)V

    .line 586
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->stopUpdating()V

    .line 587
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->playbackStopped()V

    .line 588
    invoke-direct {p0, v1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->setProximitySensorEnabled(Z)V

    .line 590
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->setClipPosition(II)V

    .line 592
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 593
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 584
    :cond_0
    return-void
.end method

.method private stopPlaybackAtPosition(IIZ)V
    .locals 1
    .param p1, "clipPosition"    # I
    .param p2, "duration"    # I
    .param p3, "shouldAbandonFocus"    # Z

    .prologue
    .line 598
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->stopPlaybackAtPosition(II)V

    .line 600
    if-eqz p3, :cond_0

    .line 601
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/sonyericsson/android/socialphonebook/util/AudioUtils;->abandonAudioFocus(Landroid/content/Context;Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 597
    :cond_0
    return-void
.end method

.method private unregisterContentObserver(Landroid/database/ContentObserver;)V
    .locals 1
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .prologue
    .line 639
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 638
    return-void
.end method


# virtual methods
.method public fillActionView(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;Landroid/view/View;ZIZ)V
    .locals 0
    .param p1, "overallState"    # Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "isContentInVoicemail"    # Z
    .param p4, "initialPlaybackPosition"    # I
    .param p5, "startPlayingImmediately"    # Z

    .prologue
    .line 274
    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mActiveVoiceMailItemView:Landroid/view/View;

    .line 275
    iput p4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mInitialPlaybackPosition:I

    .line 276
    iput-boolean p5, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mStartPlayingImmediately:Z

    .line 277
    invoke-direct {p0, p1}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->setOverState(Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailHelper$OverallState;)V

    .line 278
    invoke-direct {p0, p2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->setPlayerViewComponentFromLayout(Landroid/view/View;)V

    .line 279
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->setVolumeControlStream()V

    .line 281
    if-eqz p3, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->enableUiElements()V

    .line 283
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->postSuccessfullyFetchedContent()V

    .line 273
    :goto_0
    return-void

    .line 285
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->disableUiElements()V

    .line 286
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->makeRequestForContent()V

    goto :goto_0
.end method

.method public isPlayingVoiceMessageThroughSpeakerPhone()Z
    .locals 1

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mIsPlayingVoiceMessageThroughSpeakerPhone:Z

    return v0
.end method

.method public isVoicemailPlaying()Z
    .locals 1

    .prologue
    .line 955
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAudioFocusChange(I)V
    .locals 3
    .param p1, "focusChange"    # I

    .prologue
    .line 1038
    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    .line 1039
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 1041
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1042
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->stopPlaybackAtPosition(IIZ)V

    .line 1037
    :cond_1
    :goto_0
    return-void

    .line 1044
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1046
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->resetPrepareStartPlaying()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 252
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->cleanupDialog()V

    .line 254
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 255
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 256
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mApplicationContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/sonyericsson/android/socialphonebook/util/AudioUtils;->abandonAudioFocus(Landroid/content/Context;Landroid/media/AudioManager$OnAudioFocusChangeListener;)V

    .line 257
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;->destroy()V

    .line 259
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mFetchResultHandler:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$FetchResultHandler;

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPositionUpdater:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$PositionUpdater;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$PositionUpdater;->stopUpdating()V

    .line 263
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mOnSuccessfullyFetchedContentListener:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$onSuccessfullyFetchedContentListener;

    .line 264
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mOnPositionChangedListener:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$OnPositionChangeListener;

    .line 265
    iput-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mAttachedActivity:Landroid/app/Activity;

    .line 250
    return-void
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 233
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mDuration:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->stopPlaybackAtPosition(IIZ)V

    .line 235
    const-string/jumbo v0, "VoicemailPlaybackPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPause() is called when playing at:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/util/SpbLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->isSpeakerPhoneOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mHeadphoneStatusChangedReceiver:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$HeadphoneStatusChangedBroadcastReceiver;

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mAttachedActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mHeadphoneStatusChangedReceiver:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$HeadphoneStatusChangedBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 244
    iput-object v4, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mHeadphoneStatusChangedReceiver:Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter$HeadphoneStatusChangedBroadcastReceiver;

    .line 246
    :cond_2
    invoke-direct {p0, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->setProximitySensorEnabled(Z)V

    .line 247
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mActiveVoiceMailItemView:Landroid/view/View;

    invoke-static {v0, v3}, Lcom/sonyericsson/android/socialphonebook/util/ScreenUtil;->keepScreenOn(Landroid/view/View;Z)V

    .line 232
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mIsDualPane:Z

    if-eqz v0, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->registerHeadsetPlugIntentReceiver()V

    .line 211
    :cond_0
    return-void
.end method

.method public setProximitySensorAware(Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorAware;)V
    .locals 0
    .param p1, "proximitySensorAware"    # Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorAware;

    .prologue
    .line 1153
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/calllog/voicemail/VoicemailPlaybackPresenter;->mProximityAware:Lcom/sonyericsson/android/socialphonebook/calllog/ProximitySensorAware;

    .line 1152
    return-void
.end method
