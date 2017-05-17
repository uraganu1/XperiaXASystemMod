.class public Lcom/android/mms/ui/SlideView;
.super Landroid/widget/FrameLayout;
.source "SlideView.java"

# interfaces
.implements Lcom/android/mms/ui/AdaptableSlideViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SlideView$1;,
        Lcom/android/mms/ui/SlideView$2;
    }
.end annotation


# instance fields
.field private final mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioInfoView:Landroid/view/View;

.field private mAudioPlayer:Landroid/media/MediaPlayer;

.field private mImageView:Landroid/widget/ImageView;

.field private mIsPrepared:Z

.field private mPauseAfterStarted:Z

.field private mPausedByTransientLossOfFocus:Z

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mScrollText:Landroid/widget/ScrollView;

.field private mSeekWhenPrepared:I

.field private mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

.field private mStartWhenPrepared:Z

.field private mStopWhenPrepared:Z

.field private mTextView:Landroid/widget/TextView;

.field private mVideoView:Landroid/widget/VideoView;


# direct methods
.method static synthetic -get0(Lcom/android/mms/ui/SlideView;)Landroid/media/MediaPlayer;
    .locals 1

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/mms/ui/SlideView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mPauseAfterStarted:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/mms/ui/SlideView;)I
    .locals 1

    iget v0, p0, Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/mms/ui/SlideView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/mms/ui/SlideView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/mms/ui/SlideView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mPauseAfterStarted:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mPausedByTransientLossOfFocus:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/mms/ui/SlideView;I)I
    .locals 0

    iput p1, p0, Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    return p1
.end method

.method static synthetic -set6(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/mms/ui/SlideView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->displayAudioInfo()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/mms/ui/SlideView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->hideAudioInfo()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance v0, Lcom/android/mms/ui/SlideView$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$1;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 430
    new-instance v0, Lcom/android/mms/ui/SlideView$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$2;-><init>(Lcom/android/mms/ui/SlideView;)V

    .line 429
    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    new-instance v0, Lcom/android/mms/ui/SlideView$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$1;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 430
    new-instance v0, Lcom/android/mms/ui/SlideView$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$2;-><init>(Lcom/android/mms/ui/SlideView;)V

    .line 429
    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 108
    return-void
.end method

.method private abandonAudioFocus()V
    .locals 3

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 466
    .local v0, "am":Landroid/media/AudioManager;
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 464
    return-void
.end method

.method private displayAudioInfo()V
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    :cond_0
    return-void
.end method

.method private hideAudioInfo()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 193
    :cond_0
    return-void
.end method

.method private initAudioInfoView(Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InflateParams"
        }
    .end annotation

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 177
    .local v1, "factory":Landroid/view/LayoutInflater;
    const v2, 0x7f030035

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    .line 178
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const v3, 0x7f0d006f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 179
    .local v0, "audioName":Landroid/widget/TextView;
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/16 v5, 0x52

    const/16 v6, 0x50

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v2, v3}, Lcom/android/mms/ui/SlideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 184
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 175
    return-void
.end method

.method private requestAudioFocus()V
    .locals 5

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 457
    .local v0, "am":Landroid/media/AudioManager;
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 458
    const/4 v3, 0x3

    const/4 v4, 0x2

    .line 457
    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    .line 459
    .local v1, "result":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 460
    const-string/jumbo v2, "Failed to get Audio Focus."

    invoke-static {v2}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 455
    :cond_0
    return-void
.end method


# virtual methods
.method public getAudioInfoHeight()I
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 118
    const/4 v0, 0x0

    return v0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 423
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 424
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 425
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->abandonAudioFocus()V

    .line 422
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 407
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 409
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    add-int/lit8 v1, p2, -0x52

    invoke-interface {v0, p1, v1}, Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;->onSizeChanged(II)V

    .line 406
    :cond_0
    return-void
.end method

.method public pauseAudio()V
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 321
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    .line 322
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mPausedByTransientLossOfFocus:Z

    if-nez v0, :cond_1

    .line 323
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->abandonAudioFocus()V

    .line 315
    :cond_1
    return-void
.end method

.method public pauseVideo()V
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 357
    :goto_0
    return-void

    .line 364
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mPauseAfterStarted:Z

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 382
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 390
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 391
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->stopAudio()V

    .line 394
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_3

    .line 395
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->stopVideo()V

    .line 396
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 381
    :cond_3
    return-void
.end method

.method public seekAudio(I)V
    .locals 1
    .param p1, "seekTo"    # I

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 327
    :goto_0
    return-void

    .line 331
    :cond_0
    iput p1, p0, Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public seekVideo(I)V
    .locals 1
    .param p1, "seekTo"    # I

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_1

    .line 370
    if-lez p1, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 368
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    iput p1, p0, Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "audio"    # Landroid/net/Uri;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .local p3, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 200
    if-nez p1, :cond_0

    .line 201
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Audio URI may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 210
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 211
    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 213
    :cond_1
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    .line 214
    iput-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    .line 217
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 218
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 219
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 220
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/mms/ui/SlideView;->initAudioInfoView(Ljava/lang/String;)V

    .line 199
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "Unexpected IOException."

    invoke-static {v1, v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    .line 224
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 226
    :cond_2
    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method public setImage(Ljava/lang/String;Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "image"    # Landroid/net/Uri;
    .param p3, "thumbnail"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v3, -0x2

    .line 126
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    .line 128
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    const-string/jumbo v1, "SlideViewImage"

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 130
    const/4 v2, 0x1

    .line 129
    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    :cond_0
    if-eqz p3, :cond_1

    .line 136
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 125
    :goto_0
    return-void

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public setImageRegion(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 143
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 144
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 145
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 146
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 147
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0
    .param p1, "fit"    # Ljava/lang/String;

    .prologue
    .line 151
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 276
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 274
    :cond_0
    return-void

    .line 276
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setOnSizeChangedListener(Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    .line 417
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x2

    .line 232
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    if-nez v1, :cond_0

    .line 233
    new-instance v1, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    .line 234
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    const/high16 v2, 0x3000000

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setScrollBarStyle(I)V

    .line 235
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 236
    const/4 v3, 0x1

    .line 235
    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/SlideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 243
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    .line 244
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 245
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 246
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 250
    :cond_1
    invoke-static {}, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->getInstance()Lcom/sonyericsson/conversations/ui/util/SmileyParser;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/sonyericsson/conversations/ui/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 251
    .local v0, "smilifiedText":Ljava/lang/CharSequence;
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const/16 v2, 0xf

    invoke-static {v1, v2}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 253
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->requestFocus()Z

    .line 231
    return-void
.end method

.method public setTextRegion(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 257
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    if-eqz v1, :cond_0

    .line 258
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 259
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 260
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 261
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 256
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 282
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 280
    :cond_0
    return-void

    .line 282
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "video"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 156
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Landroid/widget/VideoView;

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    .line 158
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, 0x1

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    :cond_0
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    .line 168
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    .line 169
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 170
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 155
    return-void
.end method

.method public setVideoRegion(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 266
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v1, :cond_0

    .line 267
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x1

    invoke-direct {v0, p3, p4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 268
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 269
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 270
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    .end local v0    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public setVideoVisibility(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 288
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 286
    :cond_0
    return-void

    .line 288
    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public startAudio()V
    .locals 1

    .prologue
    .line 293
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->requestAudioFocus()V

    .line 294
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    .line 297
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->displayAudioInfo()V

    .line 292
    :goto_0
    return-void

    .line 299
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    goto :goto_0
.end method

.method public startVideo()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 335
    :goto_0
    return-void

    .line 342
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    goto :goto_0
.end method

.method public stopAudio()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 304
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 306
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 307
    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 308
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->hideAudioInfo()V

    .line 309
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->abandonAudioFocus()V

    .line 303
    :goto_0
    return-void

    .line 311
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    goto :goto_0
.end method

.method public stopVideo()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 346
    :goto_0
    return-void

    .line 353
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    goto :goto_0
.end method
