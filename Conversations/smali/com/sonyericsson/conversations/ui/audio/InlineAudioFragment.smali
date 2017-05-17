.class public Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;
.super Landroid/app/Fragment;
.source "InlineAudioFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/media/MediaRecorder$OnErrorListener;
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;,
        Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$Callback;,
        Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$InlineAudioHandler;,
        Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$1;
    }
.end annotation


# static fields
.field private static synthetic -com_sonyericsson_conversations_ui_audio_InlineAudioFragment$AudioModeSwitchesValues:[I


# instance fields
.field private mAudioDeclineView:Landroid/widget/ImageButton;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioPlayView:Landroid/widget/ImageButton;

.field private mAudioPlayer:Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;

.field private mAudioPlayingView:Lcom/sonyericsson/conversations/ui/audio/ProgressButton;

.field private mAudioRecorder:Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;

.field private mAudioUri:Landroid/net/Uri;

.field private mCallback:Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$Callback;

.field private mCenterBtn:Landroid/widget/ImageButton;

.field private mChronometer:Landroid/widget/Chronometer;

.field private final mInlineAudioHandler:Landroid/os/Handler;

.field private mPlayAnimation:Landroid/animation/ObjectAnimator;

.field private mPrevAudioMode:Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;

.field private mSizeLimit:I

.field private mSoundLevels:Lcom/sonyericsson/conversations/ui/audio/SoundLevels;

.field private mStartAudioText:Landroid/widget/TextView;

.field private mTranslateDiff:F


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;)Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;)Landroid/media/AudioManager;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;)Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioPlayer:Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mInlineAudioHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static synthetic -getcom_sonyericsson_conversations_ui_audio_InlineAudioFragment$AudioModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->-com_sonyericsson_conversations_ui_audio_InlineAudioFragment$AudioModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->-com_sonyericsson_conversations_ui_audio_InlineAudioFragment$AudioModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;->values()[Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;->VIEW_MODE_PAUSE_AUDIO:Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;->VIEW_MODE_PLAYING_AUDIO:Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;->VIEW_MODE_RECORD_AUDIO:Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;->VIEW_MODE_START_AUDIO:Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->-com_sonyericsson_conversations_ui_audio_InlineAudioFragment$AudioModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;)V
    .locals 0
    .param p1, "mode"    # Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;

    .prologue
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->setupAudioRecordingViews(Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 70
    sget-object v0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;->VIEW_MODE_START_AUDIO:Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mPrevAudioMode:Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;

    .line 78
    new-instance v0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$InlineAudioHandler;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$InlineAudioHandler;-><init>(Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mInlineAudioHandler:Landroid/os/Handler;

    .line 412
    new-instance v0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$1;-><init>(Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 45
    return-void
.end method

.method private animateButtons()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xfa

    const/4 v6, 0x0

    .line 317
    invoke-static {}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->-getcom_sonyericsson_conversations_ui_audio_InlineAudioFragment$AudioModeSwitchesValues()[I

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mPrevAudioMode:Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;

    invoke-virtual {v5}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 344
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Animation mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mPrevAudioMode:Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not supported"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 343
    invoke-static {v4}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 316
    :goto_0
    :pswitch_0
    return-void

    .line 319
    :pswitch_1
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f040003

    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    .line 320
    .local v3, "scale":Landroid/view/animation/Animation;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mCenterBtn:Landroid/widget/ImageButton;

    invoke-virtual {v4, v3}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 324
    .end local v3    # "scale":Landroid/view/animation/Animation;
    :pswitch_2
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f040002

    .line 323
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 325
    .local v1, "modeScale":Landroid/view/animation/Animation;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mCenterBtn:Landroid/widget/ImageButton;

    invoke-virtual {v4, v1}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 327
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v4, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mTranslateDiff:F

    neg-float v4, v4

    invoke-direct {v0, v4, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 328
    .local v0, "decline":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 329
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 330
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioDeclineView:Landroid/widget/ImageButton;

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 332
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    iget v4, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mTranslateDiff:F

    invoke-direct {v2, v4, v6, v6, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 333
    .local v2, "play":Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v2, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 334
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 335
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioPlayView:Landroid/widget/ImageButton;

    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 340
    .end local v0    # "decline":Landroid/view/animation/TranslateAnimation;
    .end local v1    # "modeScale":Landroid/view/animation/Animation;
    .end local v2    # "play":Landroid/view/animation/TranslateAnimation;
    :pswitch_3
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioDeclineView:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mCenterBtn:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mTranslateDiff:F

    goto :goto_0

    .line 317
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private centerButtonClicked(Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;)V
    .locals 4
    .param p1, "mode"    # Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 121
    invoke-static {}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->-getcom_sonyericsson_conversations_ui_audio_InlineAudioFragment$AudioModeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Center button clicked unhandled in mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 120
    :goto_0
    return-void

    .line 123
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioRecorder:Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;

    iget v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mSizeLimit:I

    invoke-virtual {v0, p0, p0, v1}, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->startRecording(Landroid/media/MediaRecorder$OnErrorListener;Landroid/media/MediaRecorder$OnInfoListener;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mChronometer:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/widget/Chronometer;->setBase(J)V

    .line 125
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->start()V

    .line 126
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mSoundLevels:Lcom/sonyericsson/conversations/ui/audio/SoundLevels;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->setEnabled(Z)V

    .line 127
    sget-object v0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;->VIEW_MODE_RECORD_AUDIO:Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->setupAudioRecordingViews(Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;)V

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 130
    const v1, 0x7f0b02ac

    .line 129
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 136
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mCallback:Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$Callback;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioUri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$Callback;->attachAudio(Landroid/net/Uri;)V

    .line 140
    :cond_1
    iput-object v3, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioUri:Landroid/net/Uri;

    goto :goto_0

    .line 143
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 144
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioRecorder:Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->stopRecording()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioUri:Landroid/net/Uri;

    .line 145
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mSoundLevels:Lcom/sonyericsson/conversations/ui/audio/SoundLevels;

    invoke-virtual {v0, v2}, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->setEnabled(Z)V

    .line 146
    sget-object v0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;->VIEW_MODE_PAUSE_AUDIO:Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->setupAudioRecordingViews(Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;)V

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private setResources()V
    .locals 8

    .prologue
    .line 282
    const/4 v0, 0x0

    .line 283
    .local v0, "chronometerColor":I
    invoke-static {}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->-getcom_sonyericsson_conversations_ui_audio_InlineAudioFragment$AudioModeSwitchesValues()[I

    move-result-object v6

    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mPrevAudioMode:Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;

    invoke-virtual {v7}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 298
    const v3, 0x7f02012e

    .line 299
    .local v3, "iconResId":I
    const v5, 0x7f0e0079

    .line 300
    .local v5, "tintColor":I
    const v4, 0x7f0e007d

    .line 301
    .local v4, "rippleColor":I
    const v0, 0x7f0e007f

    .line 304
    :goto_0
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 305
    .local v1, "ctx":Landroid/content/Context;
    invoke-virtual {v1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 306
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    if-nez v2, :cond_0

    .line 307
    return-void

    .line 285
    .end local v1    # "ctx":Landroid/content/Context;
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "iconResId":I
    .end local v4    # "rippleColor":I
    .end local v5    # "tintColor":I
    :pswitch_0
    const v3, 0x7f020101

    .line 286
    .restart local v3    # "iconResId":I
    const v5, 0x7f0e0079

    .line 287
    .restart local v5    # "tintColor":I
    const v4, 0x7f0e007d

    .line 288
    .restart local v4    # "rippleColor":I
    const v0, 0x7f0e007d

    .line 289
    goto :goto_0

    .line 292
    .end local v3    # "iconResId":I
    .end local v4    # "rippleColor":I
    .end local v5    # "tintColor":I
    :pswitch_1
    const v3, 0x7f0200bc

    .line 293
    .restart local v3    # "iconResId":I
    const v5, 0x7f0e0079

    .line 294
    .restart local v5    # "tintColor":I
    const v4, 0x7f0e007e

    .line 295
    .restart local v4    # "rippleColor":I
    const v0, 0x7f0e007f

    .line 296
    goto :goto_0

    .line 310
    .restart local v1    # "ctx":Landroid/content/Context;
    .restart local v2    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {v1, v5}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 311
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mCenterBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 312
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mCenterBtn:Landroid/widget/ImageButton;

    invoke-virtual {v6, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 313
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Chronometer;->setTextColor(I)V

    .line 278
    return-void

    .line 283
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setupAndPlay()V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioPlayer:Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, p0, p0, p0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;->setupMediaPlayer(Landroid/net/Uri;Landroid/media/MediaPlayer$OnCompletionListener;Landroid/media/MediaPlayer$OnErrorListener;Landroid/media/MediaPlayer$OnPreparedListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 156
    const v1, 0x7f0b02ad

    .line 157
    const/4 v2, 0x0

    .line 155
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 153
    :cond_0
    return-void
.end method

.method private setupAudioRecordingViews(Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;)V
    .locals 6
    .param p1, "mode"    # Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 349
    invoke-static {}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->-getcom_sonyericsson_conversations_ui_audio_InlineAudioFragment$AudioModeSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p1}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Audio mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sonymobile/conversations/util/ErrorUtil;->handleUnsupportedCase(Ljava/lang/String;)V

    .line 385
    :goto_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mPrevAudioMode:Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;

    sget-object v2, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;->VIEW_MODE_PLAYING_AUDIO:Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 386
    .local v0, "wasPlayingAudio":Z
    :goto_1
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mPrevAudioMode:Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;

    .line 387
    if-nez v0, :cond_0

    .line 388
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->animateButtons()V

    .line 390
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->setResources()V

    .line 348
    return-void

    .line 351
    .end local v0    # "wasPlayingAudio":Z
    :pswitch_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mStartAudioText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 352
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioDeclineView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 353
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioPlayView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 354
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioPlayingView:Lcom/sonyericsson/conversations/ui/audio/ProgressButton;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/conversations/ui/audio/ProgressButton;->setVisibility(I)V

    .line 355
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v1, v5}, Landroid/widget/Chronometer;->setVisibility(I)V

    goto :goto_0

    .line 358
    :pswitch_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mStartAudioText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 359
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioDeclineView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 360
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioPlayView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 361
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioPlayingView:Lcom/sonyericsson/conversations/ui/audio/ProgressButton;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/conversations/ui/audio/ProgressButton;->setVisibility(I)V

    .line 362
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v1, v3}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 363
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mSoundLevels:Lcom/sonyericsson/conversations/ui/audio/SoundLevels;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->setVisibility(I)V

    goto :goto_0

    .line 366
    :pswitch_2
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mStartAudioText:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 367
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioDeclineView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 368
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioPlayView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 369
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioPlayingView:Lcom/sonyericsson/conversations/ui/audio/ProgressButton;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/conversations/ui/audio/ProgressButton;->setVisibility(I)V

    .line 370
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v1, v5}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 371
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mSoundLevels:Lcom/sonyericsson/conversations/ui/audio/SoundLevels;

    invoke-virtual {v1, v5}, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->setVisibility(I)V

    goto :goto_0

    .line 374
    :pswitch_3
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mStartAudioText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 375
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v1, v3}, Landroid/widget/Chronometer;->setVisibility(I)V

    .line 376
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioDeclineView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 377
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioPlayView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 378
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioPlayingView:Lcom/sonyericsson/conversations/ui/audio/ProgressButton;

    invoke-virtual {v1, v3}, Lcom/sonyericsson/conversations/ui/audio/ProgressButton;->setVisibility(I)V

    .line 379
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mSoundLevels:Lcom/sonyericsson/conversations/ui/audio/SoundLevels;

    invoke-virtual {v1, v4}, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->setVisibility(I)V

    goto/16 :goto_0

    .line 385
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "wasPlayingAudio":Z
    goto/16 :goto_1

    .line 349
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private stopPlayback()V
    .locals 4

    .prologue
    .line 264
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioPlayer:Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;->stopPlayback()V

    .line 266
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mPlayAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mPlayAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 268
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mPlayAnimation:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setCurrentFraction(F)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v0}, Landroid/widget/Chronometer;->stop()V

    .line 272
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mChronometer:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/widget/Chronometer;->setBase(J)V

    .line 273
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioPlayingView:Lcom/sonyericsson/conversations/ui/audio/ProgressButton;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/audio/ProgressButton;->clearAnimation()V

    .line 274
    sget-object v0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;->VIEW_MODE_PAUSE_AUDIO:Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->setupAudioRecordingViews(Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;)V

    .line 275
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 263
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 162
    :cond_0
    :goto_0
    return-void

    .line 165
    :pswitch_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mPrevAudioMode:Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->centerButtonClicked(Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;)V

    goto :goto_0

    .line 169
    :pswitch_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioPlayer:Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioPlayer:Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;->stopPlayback()V

    .line 171
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 173
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/sonyericsson/conversations/util/MediaUtil;->deleteFileUri(Landroid/net/Uri;)V

    .line 176
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mChronometer:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/widget/Chronometer;->setBase(J)V

    .line 177
    sget-object v0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;->VIEW_MODE_START_AUDIO:Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->setupAudioRecordingViews(Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;)V

    goto :goto_0

    .line 180
    :pswitch_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 181
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->setupAndPlay()V

    goto :goto_0

    .line 185
    :pswitch_3
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->stopPlayback()V

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x7f0d003a
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 215
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->stopPlayback()V

    .line 214
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 83
    const v1, 0x7f030013

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, "dialogContent":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 85
    :cond_0
    return-object v3

    .line 87
    :cond_1
    return-object v0
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 2
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Could not record Audio what "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " extra "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Could not Play Audio what "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " extra "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 3
    .param p1, "mediaRecorder"    # Landroid/media/MediaRecorder;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 199
    const/16 v0, 0x321

    if-ne p2, v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioRecorder:Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->stopRecording()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioUri:Landroid/net/Uri;

    .line 202
    sget-object v0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;->VIEW_MODE_PAUSE_AUDIO:Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->setupAudioRecordingViews(Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;)V

    .line 204
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 205
    const v1, 0x7f0b02ae

    .line 206
    const/4 v2, 0x0

    .line 204
    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 198
    :goto_0
    return-void

    .line 209
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Error while recording Audio what "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " extra "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sonymobile/conversations/util/LogUtil;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 254
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 256
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioRecorder:Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->stopRecording()Landroid/net/Uri;

    .line 257
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioPlayer:Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;->stopPlayback()V

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioUri:Landroid/net/Uri;

    .line 260
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 253
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 7
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 226
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioManager:Landroid/media/AudioManager;

    .line 227
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v4, 0x3

    .line 226
    invoke-virtual {v2, v3, v4, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .line 229
    .local v1, "result":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 231
    :try_start_0
    sget-object v2, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;->VIEW_MODE_PLAYING_AUDIO:Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;

    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->setupAudioRecordingViews(Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;)V

    .line 232
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mChronometer:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/widget/Chronometer;->setBase(J)V

    .line 233
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v2}, Landroid/widget/Chronometer;->start()V

    .line 234
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioPlayer:Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;->playAudio()V

    .line 235
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioPlayingView:Lcom/sonyericsson/conversations/ui/audio/ProgressButton;

    const-string/jumbo v3, "fraction"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mPlayAnimation:Landroid/animation/ObjectAnimator;

    .line 236
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mPlayAnimation:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioPlayer:Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;

    invoke-virtual {v3}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;->getDuration()I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 237
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mPlayAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mChronometer:Landroid/widget/Chronometer;

    invoke-virtual {v2}, Landroid/widget/Chronometer;->stop()V

    .line 240
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mChronometer:Landroid/widget/Chronometer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/widget/Chronometer;->setBase(J)V

    goto :goto_0

    .line 242
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    if-nez v1, :cond_0

    .line 243
    const-string/jumbo v2, "Audio focus request failed"

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 244
    sget-object v2, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;->VIEW_MODE_PAUSE_AUDIO:Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;

    invoke-direct {p0, v2}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->setupAudioRecordingViews(Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;)V

    .line 245
    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioPlayer:Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;

    invoke-virtual {v2}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;->stopPlayback()V

    .line 246
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 247
    const v3, 0x7f0b02ad

    .line 246
    invoke-static {v2, v3, v5}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    goto :goto_0

    .line 235
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 117
    sget-object v0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;->VIEW_MODE_START_AUDIO:Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;

    invoke-direct {p0, v0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->setupAudioRecordingViews(Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$AudioMode;)V

    .line 115
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 93
    const v0, 0x7f0d0037

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mStartAudioText:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f0d003a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mCenterBtn:Landroid/widget/ImageButton;

    .line 96
    const v0, 0x7f0d0038

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Chronometer;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mChronometer:Landroid/widget/Chronometer;

    .line 98
    const v0, 0x7f0d003b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioDeclineView:Landroid/widget/ImageButton;

    .line 99
    const v0, 0x7f0d003c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioPlayView:Landroid/widget/ImageButton;

    .line 101
    const v0, 0x7f0d003d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/audio/ProgressButton;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioPlayingView:Lcom/sonyericsson/conversations/ui/audio/ProgressButton;

    .line 102
    new-instance v0, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioRecorder:Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;

    .line 103
    new-instance v0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioPlayer:Lcom/sonyericsson/conversations/ui/audio/InlineAudioPlayer;

    .line 104
    const v0, 0x7f0d0039

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mSoundLevels:Lcom/sonyericsson/conversations/ui/audio/SoundLevels;

    .line 105
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mSoundLevels:Lcom/sonyericsson/conversations/ui/audio/SoundLevels;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioRecorder:Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/audio/LevelTrackingMediaRecorder;->getLevelSource()Lcom/sonyericsson/conversations/ui/audio/AudioLevelSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonyericsson/conversations/ui/audio/SoundLevels;->setLevelSource(Lcom/sonyericsson/conversations/ui/audio/AudioLevelSource;)V

    .line 107
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mCenterBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioDeclineView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioPlayView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioPlayingView:Lcom/sonyericsson/conversations/ui/audio/ProgressButton;

    invoke-virtual {v0, p0}, Lcom/sonyericsson/conversations/ui/audio/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mAudioManager:Landroid/media/AudioManager;

    .line 91
    return-void
.end method

.method public setCallback(Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$Callback;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mCallback:Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment$Callback;

    .line 408
    return-void
.end method

.method public setSizeLimit(I)V
    .locals 0
    .param p1, "sizeLimit"    # I

    .prologue
    .line 419
    iput p1, p0, Lcom/sonyericsson/conversations/ui/audio/InlineAudioFragment;->mSizeLimit:I

    .line 418
    return-void
.end method
