.class public Lcom/mediatek/settings/ClearMotionSettings;
.super Landroid/app/Activity;
.source "ClearMotionSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/ClearMotionSettings$1;,
        Lcom/mediatek/settings/ClearMotionSettings$2;
    }
.end annotation


# instance fields
.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mLineView:Landroid/view/View;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOffText:Landroid/widget/TextView;

.field private mOnText:Landroid/widget/TextView;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mUpdateClearMotionStatusReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0(Lcom/mediatek/settings/ClearMotionSettings;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/mediatek/settings/ClearMotionSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/settings/ClearMotionSettings;->prepareVideo()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/mediatek/settings/ClearMotionSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/settings/ClearMotionSettings;->releaseMediaPlayer()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/mediatek/settings/ClearMotionSettings;Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/settings/ClearMotionSettings;->updateClearMotionDemo(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/mediatek/settings/ClearMotionSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/settings/ClearMotionSettings;->updateClearMotionStatus()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 71
    new-instance v0, Lcom/mediatek/settings/ClearMotionSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/ClearMotionSettings$1;-><init>(Lcom/mediatek/settings/ClearMotionSettings;)V

    iput-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mUpdateClearMotionStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 218
    new-instance v0, Lcom/mediatek/settings/ClearMotionSettings$2;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/ClearMotionSettings$2;-><init>(Lcom/mediatek/settings/ClearMotionSettings;)V

    iput-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 48
    return-void
.end method

.method private initViews()V
    .locals 7

    .prologue
    const/16 v6, 0x9b

    const/16 v4, 0x14

    const/4 v5, -0x2

    const/4 v3, 0x0

    .line 94
    const v1, 0x7f130275

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/ClearMotionSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/ClearMotionSettings;->mLineView:Landroid/view/View;

    .line 95
    const v1, 0x7f130276

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/ClearMotionSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/settings/ClearMotionSettings;->mOnText:Landroid/widget/TextView;

    .line 96
    const v1, 0x7f130277

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/ClearMotionSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/settings/ClearMotionSettings;->mOffText:Landroid/widget/TextView;

    .line 97
    iget-object v1, p0, Lcom/mediatek/settings/ClearMotionSettings;->mOnText:Landroid/widget/TextView;

    invoke-static {v6, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 98
    iget-object v1, p0, Lcom/mediatek/settings/ClearMotionSettings;->mOffText:Landroid/widget/TextView;

    invoke-static {v6, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 100
    new-instance v1, Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/mediatek/settings/ClearMotionSettings;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/settings/ClearMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 101
    invoke-virtual {p0}, Lcom/mediatek/settings/ClearMotionSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 102
    .local v0, "padding":I
    iget-object v1, p0, Lcom/mediatek/settings/ClearMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3, v3, v0, v3}, Landroid/widget/Switch;->setPaddingRelative(IIII)V

    .line 103
    invoke-virtual {p0}, Lcom/mediatek/settings/ClearMotionSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 106
    invoke-virtual {p0}, Lcom/mediatek/settings/ClearMotionSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    .line 108
    iget-object v2, p0, Lcom/mediatek/settings/ClearMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 109
    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    .line 110
    const v4, 0x800015

    .line 109
    invoke-direct {v3, v5, v5, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 106
    invoke-virtual {v1, v2, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 112
    invoke-virtual {p0}, Lcom/mediatek/settings/ClearMotionSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const v2, 0x7f0b012b

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 113
    iget-object v1, p0, Lcom/mediatek/settings/ClearMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 114
    invoke-direct {p0}, Lcom/mediatek/settings/ClearMotionSettings;->updateClearMotionStatus()V

    .line 115
    const v1, 0x7f130274

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/ClearMotionSettings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/SurfaceView;

    iput-object v1, p0, Lcom/mediatek/settings/ClearMotionSettings;->mSurfaceView:Landroid/view/SurfaceView;

    .line 116
    iget-object v1, p0, Lcom/mediatek/settings/ClearMotionSettings;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/ClearMotionSettings;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 117
    iget-object v1, p0, Lcom/mediatek/settings/ClearMotionSettings;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 118
    iget-object v1, p0, Lcom/mediatek/settings/ClearMotionSettings;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 93
    return-void
.end method

.method private prepareVideo()V
    .locals 9

    .prologue
    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 232
    invoke-virtual {p0}, Lcom/mediatek/settings/ClearMotionSettings;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string/jumbo v1, "clear_motion_video.mp4"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 233
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    const-string/jumbo v0, "@M_ClearMotionSettingsLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "video path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 236
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 237
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 239
    const-string/jumbo v0, "@M_ClearMotionSettingsLog"

    const-string/jumbo v1, "mMediaPlayer prepare()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :cond_0
    :goto_0
    return-void

    .line 244
    :catch_0
    move-exception v8

    .line 245
    .local v8, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v0, "@M_ClearMotionSettingsLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "media player is in illegal state; error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    invoke-direct {p0}, Lcom/mediatek/settings/ClearMotionSettings;->releaseMediaPlayer()V

    goto :goto_0

    .line 241
    .end local v8    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v7

    .line 242
    .local v7, "e":Ljava/io/IOException;
    const-string/jumbo v0, "@M_ClearMotionSettingsLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unable to open file; error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    invoke-direct {p0}, Lcom/mediatek/settings/ClearMotionSettings;->releaseMediaPlayer()V

    goto :goto_0
.end method

.method private releaseMediaPlayer()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 251
    const-string/jumbo v0, "@M_ClearMotionSettingsLog"

    const-string/jumbo v1, "releaseMediaPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 254
    iput-object v2, p0, Lcom/mediatek/settings/ClearMotionSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 250
    :cond_0
    return-void
.end method

.method private updateClearMotionDemo(Z)V
    .locals 5
    .param p1, "status"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 156
    const-string/jumbo v0, "@M_ClearMotionSettingsLog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateClearMotionDemo status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v3, p0, Lcom/mediatek/settings/ClearMotionSettings;->mLineView:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 158
    iget-object v3, p0, Lcom/mediatek/settings/ClearMotionSettings;->mOnText:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mOffText:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    move v2, v1

    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    if-eqz p1, :cond_1

    const/4 v1, 0x3

    :cond_1
    invoke-static {v1}, Lcom/mediatek/galleryfeature/clearmotion/ClearMotionQualityJni;->nativeSetDemoMode(I)Z

    .line 155
    return-void

    :cond_2
    move v0, v2

    .line 157
    goto :goto_0

    :cond_3
    move v0, v2

    .line 158
    goto :goto_1
.end method

.method private updateClearMotionStatus()V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 147
    const-string/jumbo v0, "@M_ClearMotionSettingsLog"

    const-string/jumbo v1, "updateClearMotionStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    const-string/jumbo v1, "persist.sys.display.clearMotion"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    const-string/jumbo v2, "1"

    .line 148
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 150
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    const-string/jumbo v1, "sys.display.clearMotion.dimmed"

    const-string/jumbo v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    const-string/jumbo v2, "0"

    .line 150
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 145
    :cond_0
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 172
    const-string/jumbo v0, "@M_ClearMotionSettingsLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCheckedChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    const-string/jumbo v1, "persist.sys.display.clearMotion"

    if-eqz p2, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-direct {p0, p2}, Lcom/mediatek/settings/ClearMotionSettings;->updateClearMotionDemo(Z)V

    .line 175
    invoke-direct {p0}, Lcom/mediatek/settings/ClearMotionSettings;->prepareVideo()V

    .line 171
    return-void

    .line 173
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 209
    const-string/jumbo v0, "@M_ClearMotionSettingsLog"

    const-string/jumbo v1, "onCompletion "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 212
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 208
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v0, 0x7f040147

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/ClearMotionSettings;->setContentView(I)V

    .line 87
    invoke-direct {p0}, Lcom/mediatek/settings/ClearMotionSettings;->initViews()V

    .line 83
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/mediatek/settings/ClearMotionSettings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 132
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 124
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/mediatek/settings/ClearMotionSettings;->finish()V

    .line 126
    const/4 v0, 0x1

    return v0

    .line 128
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 165
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 166
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mUpdateClearMotionStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/ClearMotionSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 167
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/mediatek/galleryfeature/clearmotion/ClearMotionQualityJni;->nativeSetDemoMode(I)Z

    .line 164
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 203
    const-string/jumbo v0, "@M_ClearMotionSettingsLog"

    const-string/jumbo v1, "onPrepared "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 202
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 139
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 140
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/ClearMotionSettings;->updateClearMotionDemo(Z)V

    .line 141
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mUpdateClearMotionStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    .line 142
    const-string/jumbo v2, "com.mediatek.clearmotion.DIMMED_UPDATE"

    .line 141
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/settings/ClearMotionSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 192
    const-string/jumbo v0, "@M_ClearMotionSettingsLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "surfaceChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 180
    const-string/jumbo v0, "@M_ClearMotionSettingsLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "surfaceCreated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iput-object p1, p0, Lcom/mediatek/settings/ClearMotionSettings;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 182
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 183
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 184
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 185
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/mediatek/settings/ClearMotionSettings;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 186
    iget-object v0, p0, Lcom/mediatek/settings/ClearMotionSettings;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/mediatek/settings/ClearMotionSettings;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 187
    invoke-direct {p0}, Lcom/mediatek/settings/ClearMotionSettings;->prepareVideo()V

    .line 179
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 197
    const-string/jumbo v0, "@M_ClearMotionSettingsLog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "surfaceDestroyed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    invoke-direct {p0}, Lcom/mediatek/settings/ClearMotionSettings;->releaseMediaPlayer()V

    .line 196
    return-void
.end method
