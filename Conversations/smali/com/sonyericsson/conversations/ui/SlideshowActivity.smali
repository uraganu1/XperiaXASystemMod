.class public Lcom/sonyericsson/conversations/ui/SlideshowActivity;
.super Landroid/app/Activity;
.source "SlideshowActivity.java"

# interfaces
.implements Lorg/w3c/dom/events/EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/SlideshowActivity$SmilPlayerController;,
        Lcom/sonyericsson/conversations/ui/SlideshowActivity$ScreenReceiver;,
        Lcom/sonyericsson/conversations/ui/SlideshowActivity$1;,
        Lcom/sonyericsson/conversations/ui/SlideshowActivity$2;
    }
.end annotation


# instance fields
.field private mBwNextListenr:Landroid/view/View$OnClickListener;

.field private mCreateSmilPlayerRunner:Ljava/lang/Runnable;

.field private mFwNextListenr:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mMediaController:Landroid/widget/MediaController;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

.field private mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;


# direct methods
.method static synthetic -get0(Lcom/sonyericsson/conversations/ui/SlideshowActivity;)Landroid/widget/MediaController;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sonyericsson/conversations/ui/SlideshowActivity;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sonyericsson/conversations/ui/SlideshowActivity;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sonyericsson/conversations/ui/SlideshowActivity;)Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sonyericsson/conversations/ui/SlideshowActivity;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p1
.end method

.method static synthetic -set1(Lcom/sonyericsson/conversations/ui/SlideshowActivity;Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    return-object p1
.end method

.method static synthetic -set2(Lcom/sonyericsson/conversations/ui/SlideshowActivity;Lcom/android/mms/dom/smil/SmilPlayer;)Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 0

    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sonyericsson/conversations/ui/SlideshowActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->initMediaController()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 173
    new-instance v0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$1;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/SlideshowActivity$1;-><init>(Lcom/sonyericsson/conversations/ui/SlideshowActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mFwNextListenr:Landroid/view/View$OnClickListener;

    .line 194
    new-instance v0, Lcom/sonyericsson/conversations/ui/SlideshowActivity$2;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/ui/SlideshowActivity$2;-><init>(Lcom/sonyericsson/conversations/ui/SlideshowActivity;)V

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mBwNextListenr:Landroid/view/View$OnClickListener;

    .line 65
    return-void
.end method

.method private initMediaController()V
    .locals 10

    .prologue
    .line 144
    new-instance v7, Landroid/widget/MediaController;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;Z)V

    iput-object v7, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    .line 145
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    new-instance v8, Lcom/sonyericsson/conversations/ui/SlideshowActivity$SmilPlayerController;

    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-direct {v8, v9}, Lcom/sonyericsson/conversations/ui/SlideshowActivity$SmilPlayerController;-><init>(Lcom/android/mms/dom/smil/SmilPlayer;)V

    invoke-virtual {v7, v8}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 146
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    const v8, 0x7f0d0091

    invoke-virtual {p0, v8}, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 147
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    iget-object v8, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mFwNextListenr:Landroid/view/View$OnClickListener;

    iget-object v9, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mBwNextListenr:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8, v9}, Landroid/widget/MediaController;->setPrevNextListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 153
    :try_start_0
    const-class v7, Landroid/widget/MediaController;

    const-string/jumbo v8, "mEndTime"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 154
    .local v6, "mEndTimeField":Ljava/lang/reflect/Field;
    const-class v7, Landroid/widget/MediaController;

    const-string/jumbo v8, "mCurrentTime"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    .line 155
    .local v4, "mCurrentTimeField":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 156
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 157
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 158
    .local v5, "mEndTime":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 159
    .local v3, "mCurrentTime":Landroid/widget/TextView;
    const v7, -0x777778

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    const v7, -0x777778

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .end local v3    # "mCurrentTime":Landroid/widget/TextView;
    .end local v4    # "mCurrentTimeField":Ljava/lang/reflect/Field;
    .end local v5    # "mEndTime":Landroid/widget/TextView;
    .end local v6    # "mEndTimeField":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v7, "Can not access mEndTime or mCurrentTime in MediaController"

    invoke-static {v7, v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 163
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 164
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v7, "Can not change mEndTime or mCurrentTime\'s color in MediaController"

    invoke-static {v7, v1}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 161
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v2

    .line 162
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v7, "Can not find mEndTime or mCurrentTime in MediaController"

    invoke-static {v7, v2}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 3
    .param p1, "evt"    # Lorg/w3c/dom/events/Event;

    .prologue
    .line 346
    move-object v0, p1

    .line 347
    .local v0, "event":Lorg/w3c/dom/events/Event;
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/sonyericsson/conversations/ui/SlideshowActivity$4;

    invoke-direct {v2, p0, v0}, Lcom/sonyericsson/conversations/ui/SlideshowActivity$4;-><init>(Lcom/sonyericsson/conversations/ui/SlideshowActivity;Lorg/w3c/dom/events/Event;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 345
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    .line 84
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->requestWindowFeature(I)Z

    .line 85
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, -0x3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setFormat(I)V

    .line 86
    const v4, 0x7f030034

    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->setContentView(I)V

    .line 88
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 89
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 91
    .local v3, "msg":Landroid/net/Uri;
    if-nez v3, :cond_0

    .line 92
    const-string/jumbo v4, "msg is null."

    invoke-static {v4}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->finish()V

    .line 94
    return-void

    .line 100
    :cond_0
    :try_start_0
    invoke-static {p0, v3}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 107
    .local v2, "model":Lcom/android/mms/model/SlideshowModel;
    new-instance v5, Lcom/android/mms/ui/SlideshowPresenter;

    const v4, 0x7f0d0091

    invoke-virtual {p0, v4}, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/SlideView;

    invoke-direct {v5, p0, v4, v2}, Lcom/android/mms/ui/SlideshowPresenter;-><init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V

    .line 109
    new-instance v4, Lcom/sonyericsson/conversations/ui/SlideshowActivity$3;

    invoke-direct {v4, p0, v2}, Lcom/sonyericsson/conversations/ui/SlideshowActivity$3;-><init>(Lcom/sonyericsson/conversations/ui/SlideshowActivity;Lcom/android/mms/model/SlideshowModel;)V

    iput-object v4, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mCreateSmilPlayerRunner:Ljava/lang/Runnable;

    .line 140
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mCreateSmilPlayerRunner:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    return-void

    .line 101
    .end local v2    # "model":Lcom/android/mms/model/SlideshowModel;
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Lcom/google/android/mms/MmsException;
    const-string/jumbo v4, "Cannot present the slide show."

    invoke-static {v4, v0}, Lcom/sonymobile/conversations/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 103
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->finish()V

    .line 104
    return-void
.end method

.method protected final onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 241
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 244
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0, v2}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mCreateSmilPlayerRunner:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mCreateSmilPlayerRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 249
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mCreateSmilPlayerRunner:Ljava/lang/Runnable;

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 254
    iput-object v2, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    if-eqz v0, :cond_3

    .line 258
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilDoc:Lorg/w3c/dom/smil/SMILDocument;

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    const-string/jumbo v1, "SimlDocumentEnd"

    .line 259
    const/4 v2, 0x0

    .line 258
    invoke-interface {v0, v1, p0, v2}, Lorg/w3c/dom/events/EventTarget;->removeEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 261
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 240
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 266
    sparse-switch p1, :sswitch_data_0

    .line 277
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 281
    :cond_0
    :sswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 266
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 221
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 222
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->stop()V

    .line 228
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 220
    :cond_0
    return-void

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilPlayer;->pause()V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/SlideshowActivity;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    .line 216
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
