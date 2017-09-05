.class public Lcom/android/systemui/recents/Recents;
.super Lcom/android/systemui/SystemUI;
.source "Recents.java"

# interfaces
.implements Landroid/app/ActivityOptions$OnAnimationStartedListener;
.implements Lcom/android/systemui/RecentsComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/Recents$TaskStackListenerImpl;,
        Lcom/android/systemui/recents/Recents$RecentsOwnerEventProxyReceiver;
    }
.end annotation


# static fields
.field static sInstance:Lcom/android/systemui/recents/Recents;

.field static sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

.field static sRecentsComponentCallbacks:Lcom/android/systemui/RecentsComponent$Callbacks;


# instance fields
.field mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

.field mBootCompleted:Z

.field mCanReuseTaskStackViews:Z

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

.field mHandler:Landroid/os/Handler;

.field mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

.field final mHeaderBarLock:Ljava/lang/Object;

.field mInflater:Landroid/view/LayoutInflater;

.field mLastToggleTime:J

.field mNavBarHeight:I

.field mNavBarWidth:I

.field mProxyBroadcastReceiver:Lcom/android/systemui/recents/Recents$RecentsOwnerEventProxyReceiver;

.field mStartAnimationTriggered:Z

.field mStatusBarHeight:I

.field mSystemInsets:Landroid/graphics/Rect;

.field mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

.field mTaskStackBounds:Landroid/graphics/Rect;

.field mTaskStackListener:Lcom/android/systemui/recents/Recents$TaskStackListenerImpl;

.field mThumbnailTransitionBitmapCache:Landroid/graphics/Bitmap;

.field mThumbnailTransitionBitmapCacheKey:Lcom/android/systemui/recents/model/Task;

.field mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

.field mTriggeredFromAltTab:Z

.field mWindowRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/Recents;->mCanReuseTaskStackViews:Z

    .line 180
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mWindowRect:Landroid/graphics/Rect;

    .line 181
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 182
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mSystemInsets:Landroid/graphics/Rect;

    .line 183
    new-instance v0, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 190
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mHeaderBarLock:Ljava/lang/Object;

    .line 200
    return-void
.end method

.method public static consumeInstanceLoadPlan()Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    .locals 2

    .prologue
    .line 939
    sget-object v0, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 940
    .local v0, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/4 v1, 0x0

    sput-object v1, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 941
    return-object v0
.end method

.method static createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 220
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 224
    return-object v0
.end method

.method public static getInstanceAndStartIfNeeded(Landroid/content/Context;)Lcom/android/systemui/recents/Recents;
    .locals 1
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 209
    sget-object v0, Lcom/android/systemui/recents/Recents;->sInstance:Lcom/android/systemui/recents/Recents;

    if-nez v0, :cond_0

    .line 210
    new-instance v0, Lcom/android/systemui/recents/Recents;

    invoke-direct {v0}, Lcom/android/systemui/recents/Recents;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/Recents;->sInstance:Lcom/android/systemui/recents/Recents;

    .line 211
    sget-object v0, Lcom/android/systemui/recents/Recents;->sInstance:Lcom/android/systemui/recents/Recents;

    iput-object p0, v0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    .line 212
    sget-object v0, Lcom/android/systemui/recents/Recents;->sInstance:Lcom/android/systemui/recents/Recents;

    invoke-virtual {v0}, Lcom/android/systemui/recents/Recents;->start()V

    .line 213
    sget-object v0, Lcom/android/systemui/recents/Recents;->sInstance:Lcom/android/systemui/recents/Recents;

    invoke-virtual {v0}, Lcom/android/systemui/recents/Recents;->onBootCompleted()V

    .line 215
    :cond_0
    sget-object v0, Lcom/android/systemui/recents/Recents;->sInstance:Lcom/android/systemui/recents/Recents;

    return-object v0
.end method

.method private isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 931
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 932
    const-string/jumbo v2, "device_provisioned"

    .line 931
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static notifyVisibilityChanged(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .param p2, "visible"    # Z
    .annotation build Lcom/android/systemui/recents/ProxyFromAnyToPrimaryUser;
    .end annotation

    .prologue
    .line 891
    invoke-virtual {p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isForegroundUserOwner()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 892
    invoke-static {p2}, Lcom/android/systemui/recents/Recents;->visibilityChanged(Z)V

    .line 890
    :goto_0
    return-void

    .line 895
    :cond_0
    const-string/jumbo v1, "action_notify_recents_visibility_change"

    .line 894
    invoke-static {p0, v1}, Lcom/android/systemui/recents/Recents;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 896
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "recentsVisibility"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 897
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method static onStartScreenPinning(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 920
    invoke-static {p0}, Lcom/android/systemui/recents/Recents;->getInstanceAndStartIfNeeded(Landroid/content/Context;)Lcom/android/systemui/recents/Recents;

    move-result-object v2

    iget-object v0, v2, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    .line 919
    check-cast v0, Lcom/android/systemui/SystemUIApplication;

    .line 921
    .local v0, "app":Lcom/android/systemui/SystemUIApplication;
    const-class v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v2}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 922
    .local v1, "statusBar":Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    if-eqz v1, :cond_0

    .line 923
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showScreenPinningRequest(Z)V

    .line 917
    :cond_0
    return-void
.end method

.method public static startScreenPinning(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ssp"    # Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .annotation build Lcom/android/systemui/recents/ProxyFromAnyToPrimaryUser;
    .end annotation

    .prologue
    .line 909
    invoke-virtual {p1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isForegroundUserOwner()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 910
    invoke-static {p0}, Lcom/android/systemui/recents/Recents;->onStartScreenPinning(Landroid/content/Context;)V

    .line 908
    :goto_0
    return-void

    .line 913
    :cond_0
    const-string/jumbo v1, "action_screen_pinning_request"

    .line 912
    invoke-static {p0, v1}, Lcom/android/systemui/recents/Recents;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 914
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method static visibilityChanged(Z)V
    .locals 1
    .param p0, "visible"    # Z

    .prologue
    .line 901
    sget-object v0, Lcom/android/systemui/recents/Recents;->sRecentsComponentCallbacks:Lcom/android/systemui/RecentsComponent$Callbacks;

    if-eqz v0, :cond_0

    .line 902
    sget-object v0, Lcom/android/systemui/recents/Recents;->sRecentsComponentCallbacks:Lcom/android/systemui/RecentsComponent$Callbacks;

    invoke-interface {v0, p0}, Lcom/android/systemui/RecentsComponent$Callbacks;->onVisibilityChanged(Z)V

    .line 900
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelPreloadingRecents()V
    .locals 0

    .prologue
    .line 409
    return-void
.end method

.method configurationChanged()V
    .locals 1

    .prologue
    .line 534
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/Recents;->mCanReuseTaskStackViews:Z

    .line 536
    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents;->reloadHeaderBarLayout()V

    .line 532
    return-void
.end method

.method drawThumbnailTransitionBitmap(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "toTask"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "toTransform"    # Lcom/android/systemui/recents/views/TaskViewTransform;

    .prologue
    const/4 v5, 0x0

    .line 724
    if-eqz p2, :cond_0

    iget-object v4, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    if-eqz v4, :cond_0

    .line 726
    iget-object v5, p0, Lcom/android/systemui/recents/Recents;->mHeaderBarLock:Ljava/lang/Object;

    monitor-enter v5

    .line 727
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    iget v6, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    mul-float/2addr v4, v6

    float-to-int v3, v4

    .line 728
    .local v3, "toHeaderWidth":I
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskViewHeader;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    iget v6, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    mul-float/2addr v4, v6

    float-to-int v2, v4

    .line 730
    .local v2, "toHeaderHeight":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 729
    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 734
    .local v1, "thumbnail":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 735
    .local v0, "c":Landroid/graphics/Canvas;
    iget v4, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    iget v6, p2, Lcom/android/systemui/recents/views/TaskViewTransform;->scale:F

    invoke-virtual {v0, v4, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 736
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v4, p1}, Lcom/android/systemui/recents/views/TaskViewHeader;->rebindToTask(Lcom/android/systemui/recents/model/Task;)V

    .line 737
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/views/TaskViewHeader;->draw(Landroid/graphics/Canvas;)V

    .line 738
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 741
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4

    .line 726
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v1    # "thumbnail":Landroid/graphics/Bitmap;
    .end local v2    # "toHeaderHeight":I
    .end local v3    # "toHeaderWidth":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 743
    :cond_0
    return-object v5
.end method

.method getHomeTransitionActivityOptions(Z)Landroid/app/ActivityOptions;
    .locals 4
    .param p1, "fromSearchHome"    # Z

    .prologue
    .line 634
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/Recents;->mStartAnimationTriggered:Z

    .line 635
    if-eqz p1, :cond_0

    .line 636
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    .line 639
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    .line 637
    const v2, 0x7f050093

    .line 638
    const v3, 0x7f050094

    .line 636
    invoke-static {v0, v2, v3, v1, p0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    .line 644
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    .line 642
    const v2, 0x7f050091

    .line 643
    const v3, 0x7f050092

    .line 641
    invoke-static {v0, v2, v3, v1, p0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/views/TaskStackView;)Landroid/app/ActivityOptions;
    .locals 11
    .param p1, "topTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p3, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;

    .prologue
    const/4 v3, 0x0

    .line 654
    new-instance v8, Lcom/android/systemui/recents/model/Task;

    invoke-direct {v8}, Lcom/android/systemui/recents/model/Task;-><init>()V

    .line 656
    .local v8, "toTask":Lcom/android/systemui/recents/model/Task;
    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 655
    invoke-virtual {p0, p2, p3, v0, v8}, Lcom/android/systemui/recents/Recents;->getThumbnailTransitionTransform(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/views/TaskStackView;ILcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v10

    .line 657
    .local v10, "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    iget-object v9, v10, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    .line 659
    .local v9, "toTaskRect":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mThumbnailTransitionBitmapCacheKey:Lcom/android/systemui/recents/model/Task;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mThumbnailTransitionBitmapCacheKey:Lcom/android/systemui/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mThumbnailTransitionBitmapCacheKey:Lcom/android/systemui/recents/model/Task;

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v2, v8, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/model/Task$TaskKey;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 659
    if-eqz v0, :cond_0

    .line 662
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mThumbnailTransitionBitmapCache:Landroid/graphics/Bitmap;

    .line 663
    .local v1, "thumbnail":Landroid/graphics/Bitmap;
    iput-object v3, p0, Lcom/android/systemui/recents/Recents;->mThumbnailTransitionBitmapCacheKey:Lcom/android/systemui/recents/model/Task;

    .line 664
    iput-object v3, p0, Lcom/android/systemui/recents/Recents;->mThumbnailTransitionBitmapCache:Landroid/graphics/Bitmap;

    .line 669
    :goto_0
    if-eqz v1, :cond_1

    .line 670
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/Recents;->mStartAnimationTriggered:Z

    .line 671
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 672
    iget v2, v9, Landroid/graphics/Rect;->left:I

    iget v3, v9, Landroid/graphics/Rect;->top:I

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 673
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    move-object v7, p0

    .line 671
    invoke-static/range {v0 .. v7}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleDownAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0

    .line 666
    .end local v1    # "thumbnail":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/Recents;->preloadIcon(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 667
    invoke-virtual {p0, v8, v10}, Lcom/android/systemui/recents/Recents;->drawThumbnailTransitionBitmap(Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;)Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1    # "thumbnail":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 677
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method getThumbnailTransitionTransform(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/views/TaskStackView;ILcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskViewTransform;
    .locals 9
    .param p1, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p2, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p3, "runningTaskId"    # I
    .param p4, "runningTaskOut"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v8, 0x0

    .line 750
    const/4 v2, 0x0

    .line 751
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p1}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v4

    .line 752
    .local v4, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    const/4 v5, -0x1

    if-eq p3, v5, :cond_0

    .line 754
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 755
    .local v3, "taskCount":I
    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 756
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    .line 757
    .local v1, "t":Lcom/android/systemui/recents/model/Task;
    iget-object v5, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    if-ne v5, p3, :cond_2

    .line 758
    move-object v2, v1

    .line 759
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p4, v1}, Lcom/android/systemui/recents/model/Task;->copyFrom(Lcom/android/systemui/recents/model/Task;)V

    .line 764
    .end local v0    # "i":I
    .end local v1    # "t":Lcom/android/systemui/recents/model/Task;
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v3    # "taskCount":I
    :cond_0
    if-nez v2, :cond_1

    .line 766
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    .line 767
    .restart local v2    # "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {p4, v2}, Lcom/android/systemui/recents/model/Task;->copyFrom(Lcom/android/systemui/recents/model/Task;)V

    .line 771
    .end local v2    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_1
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->setStackScrollToInitialState()Z

    .line 772
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v5

    .line 773
    invoke-virtual {p2}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/recents/Recents;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 772
    invoke-virtual {v5, v2, v6, v7, v8}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/recents/Recents;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    .line 774
    iget-object v5, p0, Lcom/android/systemui/recents/Recents;->mTmpTransform:Lcom/android/systemui/recents/views/TaskViewTransform;

    return-object v5

    .line 755
    .restart local v0    # "i":I
    .restart local v1    # "t":Lcom/android/systemui/recents/model/Task;
    .local v2, "task":Lcom/android/systemui/recents/model/Task;
    .restart local v3    # "taskCount":I
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;
    .locals 4

    .prologue
    .line 623
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recents/Recents;->mStartAnimationTriggered:Z

    .line 624
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    .line 627
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    .line 625
    const v2, 0x7f050095

    .line 626
    const v3, 0x7f050096

    .line 624
    invoke-static {v0, v2, v3, v1, p0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v0

    return-object v0
.end method

.method public hideRecents(ZZ)V
    .locals 3
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z
    .annotation build Lcom/android/systemui/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    .prologue
    .line 316
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    .line 317
    return-void

    .line 320
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isForegroundUserOwner()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/Recents;->hideRecentsInternal(ZZ)V

    .line 313
    :goto_0
    return-void

    .line 323
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    .line 324
    const-string/jumbo v2, "com.android.systemui.recents.action.HIDE_RECENTS_FOR_USER"

    .line 323
    invoke-static {v1, v2}, Lcom/android/systemui/recents/Recents;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 325
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "triggeredFromAltTab"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 326
    const-string/jumbo v1, "triggeredFromHomeKey"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 327
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method hideRecentsInternal(ZZ)V
    .locals 3
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "triggeredFromHomeKey"    # Z

    .prologue
    .line 332
    iget-boolean v1, p0, Lcom/android/systemui/recents/Recents;->mBootCompleted:Z

    if-eqz v1, :cond_0

    .line 335
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "action_hide_recents_activity"

    invoke-static {v1, v2}, Lcom/android/systemui/recents/Recents;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 336
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "triggeredFromAltTab"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 337
    const-string/jumbo v1, "triggeredFromHomeKey"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 338
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 331
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onAnimationStarted()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 949
    iget-boolean v0, p0, Lcom/android/systemui/recents/Recents;->mStartAnimationTriggered:Z

    if-nez v0, :cond_0

    .line 954
    new-instance v4, Lcom/android/systemui/recents/Recents$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/recents/Recents$2;-><init>(Lcom/android/systemui/recents/Recents;)V

    .line 973
    .local v4, "fallbackReceiver":Landroid/content/BroadcastReceiver;
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "action_start_enter_animation"

    invoke-static {v0, v2}, Lcom/android/systemui/recents/Recents;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 974
    .local v1, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 975
    const/4 v6, 0x0

    move-object v5, v3

    move-object v7, v3

    move-object v8, v3

    .line 974
    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 947
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v4    # "fallbackReceiver":Landroid/content/BroadcastReceiver;
    :cond_0
    return-void
.end method

.method public onBootCompleted()V
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/Recents;->mBootCompleted:Z

    .line 276
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .annotation build Lcom/android/systemui/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    .prologue
    .line 524
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isForegroundUserOwner()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 525
    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents;->configurationChanged()V

    .line 523
    :goto_0
    return-void

    .line 527
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    .line 528
    const-string/jumbo v2, "com.android.systemui.recents.action.CONFIG_CHANGED_FOR_USER"

    .line 527
    invoke-static {v1, v2}, Lcom/android/systemui/recents/Recents;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 529
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method preCacheThumbnailTransitionBitmapAsync(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/views/TaskStackView;Z)V
    .locals 4
    .param p1, "topTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p3, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p4, "isTopTaskHome"    # Z

    .prologue
    .line 699
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/Recents;->preloadIcon(Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 702
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iget-boolean v3, p0, Lcom/android/systemui/recents/Recents;->mTriggeredFromAltTab:Z

    invoke-virtual {v2, p2, v3, p4}, Lcom/android/systemui/recents/views/TaskStackView;->updateMinMaxScrollForStack(Lcom/android/systemui/recents/model/TaskStack;ZZ)V

    .line 703
    new-instance v0, Lcom/android/systemui/recents/model/Task;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/Task;-><init>()V

    .line 705
    .local v0, "toTask":Lcom/android/systemui/recents/model/Task;
    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 704
    invoke-virtual {p0, p2, p3, v2, v0}, Lcom/android/systemui/recents/Recents;->getThumbnailTransitionTransform(Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/views/TaskStackView;ILcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v1

    .line 706
    .local v1, "toTransform":Lcom/android/systemui/recents/views/TaskViewTransform;
    new-instance v2, Lcom/android/systemui/recents/Recents$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/systemui/recents/Recents$1;-><init>(Lcom/android/systemui/recents/Recents;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskViewTransform;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/Recents$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 698
    return-void
.end method

.method preloadIcon(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 4
    .param p1, "task"    # Landroid/app/ActivityManager$RunningTaskInfo;

    .prologue
    .line 686
    new-instance v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 687
    .local v0, "launchOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iput v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->runningTaskId:I

    .line 688
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->loadThumbnails:Z

    .line 689
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 690
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 683
    return-void
.end method

.method public preloadRecents()V
    .locals 3
    .annotation build Lcom/android/systemui/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    .prologue
    .line 377
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    .line 378
    return-void

    .line 381
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isForegroundUserOwner()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 382
    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents;->preloadRecentsInternal()V

    .line 374
    :goto_0
    return-void

    .line 384
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    .line 385
    const-string/jumbo v2, "com.android.systemui.recents.action.PRELOAD_RECENTS_FOR_USER"

    .line 384
    invoke-static {v1, v2}, Lcom/android/systemui/recents/Recents;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 386
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method preloadRecentsInternal()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 393
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    .line 394
    .local v2, "topTask":Landroid/app/ActivityManager$RunningTaskInfo;
    new-instance v3, Landroid/util/MutableBoolean;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 395
    .local v3, "topTaskHome":Landroid/util/MutableBoolean;
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 396
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v4

    sput-object v4, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 397
    if-eqz v2, :cond_0

    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v4, v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/util/MutableBoolean;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    sget-object v4, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    iget-boolean v5, v3, Landroid/util/MutableBoolean;->value:Z

    invoke-virtual {v4, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->preloadRawTasks(Z)V

    .line 399
    sget-object v4, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    iget-boolean v5, v3, Landroid/util/MutableBoolean;->value:Z

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Z)V

    .line 400
    sget-object v4, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getAllTaskStacks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/TaskStack;

    .line 401
    .local v1, "top":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v1}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 402
    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 403
    iget-boolean v5, v3, Landroid/util/MutableBoolean;->value:Z

    .line 402
    invoke-virtual {p0, v2, v1, v4, v5}, Lcom/android/systemui/recents/Recents;->preCacheThumbnailTransitionBitmapAsync(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/views/TaskStackView;Z)V

    goto :goto_0
.end method

.method reloadHeaderBarLayout()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 541
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 542
    .local v8, "res":Landroid/content/res/Resources;
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getWindowRect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mWindowRect:Landroid/graphics/Rect;

    .line 543
    const v0, 0x1050017

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/Recents;->mStatusBarHeight:I

    .line 544
    const v0, 0x1050018

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/Recents;->mNavBarHeight:I

    .line 545
    const v0, 0x105001a

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/Recents;->mNavBarWidth:I

    .line 546
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v0, v1}, Lcom/android/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 547
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsConfiguration;->updateOnConfigurationChange()V

    .line 548
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 552
    .local v5, "searchBarBounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getOrBindSearchAppWidget(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 554
    iget v3, p0, Lcom/android/systemui/recents/Recents;->mStatusBarHeight:I

    .line 553
    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/systemui/recents/RecentsConfiguration;->getSearchBarBounds(IIILandroid/graphics/Rect;)V

    .line 556
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 557
    iget v3, p0, Lcom/android/systemui/recents/Recents;->mStatusBarHeight:I

    iget-object v4, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedNavBar:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/systemui/recents/Recents;->mNavBarWidth:I

    .line 558
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/recents/Recents;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 556
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/RecentsConfiguration;->getAvailableTaskStackBounds(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 559
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->isLandscape:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->hasTransposedNavBar:Z

    if-eqz v0, :cond_2

    .line 560
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/recents/Recents;->mStatusBarHeight:I

    iget v2, p0, Lcom/android/systemui/recents/Recents;->mNavBarWidth:I

    invoke-virtual {v0, v13, v1, v2, v13}, Landroid/graphics/Rect;->set(IIII)V

    .line 566
    :goto_1
    new-instance v9, Lcom/android/systemui/recents/model/TaskStack;

    invoke-direct {v9}, Lcom/android/systemui/recents/model/TaskStack;-><init>()V

    .line 567
    .local v9, "stack":Lcom/android/systemui/recents/model/TaskStack;
    new-instance v0, Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v9}, Lcom/android/systemui/recents/views/TaskStackView;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/model/TaskStack;)V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 568
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v7

    .line 569
    .local v7, "algo":Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;
    new-instance v11, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mTaskStackBounds:Landroid/graphics/Rect;

    invoke-direct {v11, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 570
    .local v11, "taskStackBounds":Landroid/graphics/Rect;
    iget v0, v11, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, v11, Landroid/graphics/Rect;->bottom:I

    .line 571
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mWindowRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v7, v0, v1, v11}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->computeRects(IILandroid/graphics/Rect;)V

    .line 572
    invoke-virtual {v7}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getUntransformedTaskViewSize()Landroid/graphics/Rect;

    move-result-object v12

    .line 573
    .local v12, "taskViewSize":Landroid/graphics/Rect;
    const v0, 0x7f0a0063

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 574
    .local v10, "taskBarHeight":I
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mHeaderBarLock:Ljava/lang/Object;

    monitor-enter v1

    .line 575
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040039

    const/4 v3, 0x0

    .line 576
    const/4 v4, 0x0

    .line 575
    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskViewHeader;

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 577
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    .line 578
    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 579
    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v10, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 577
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/recents/views/TaskViewHeader;->measure(II)V

    .line 580
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mHeaderBar:Lcom/android/systemui/recents/views/TaskViewHeader;

    invoke-virtual {v12}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2, v10}, Lcom/android/systemui/recents/views/TaskViewHeader;->layout(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 540
    return-void

    .end local v7    # "algo":Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;
    .end local v9    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v10    # "taskBarHeight":I
    .end local v11    # "taskStackBounds":Landroid/graphics/Rect;
    .end local v12    # "taskViewSize":Landroid/graphics/Rect;
    :cond_1
    move v4, v13

    .line 557
    goto/16 :goto_0

    .line 562
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mSystemInsets:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/systemui/recents/Recents;->mStatusBarHeight:I

    iget v2, p0, Lcom/android/systemui/recents/Recents;->mNavBarHeight:I

    invoke-virtual {v0, v13, v1, v13, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 574
    .restart local v7    # "algo":Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;
    .restart local v9    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v10    # "taskBarHeight":I
    .restart local v11    # "taskStackBounds":Landroid/graphics/Rect;
    .restart local v12    # "taskViewSize":Landroid/graphics/Rect;
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setCallback(Lcom/android/systemui/RecentsComponent$Callbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/systemui/RecentsComponent$Callbacks;

    .prologue
    .line 884
    sput-object p1, Lcom/android/systemui/recents/Recents;->sRecentsComponentCallbacks:Lcom/android/systemui/RecentsComponent$Callbacks;

    .line 883
    return-void
.end method

.method public showNextAffiliatedTask()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 499
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 500
    return-void

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "overview_affiliated_task_next"

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 505
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/Recents;->showRelativeAffiliatedTask(Z)V

    .line 496
    return-void
.end method

.method public showPrevAffiliatedTask()V
    .locals 3

    .prologue
    .line 512
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_0

    .line 513
    return-void

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "overview_affiliated_task_prev"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 518
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/Recents;->showRelativeAffiliatedTask(Z)V

    .line 509
    return-void
.end method

.method public showRecents(ZLandroid/view/View;)V
    .locals 3
    .param p1, "triggeredFromAltTab"    # Z
    .param p2, "statusBarView"    # Landroid/view/View;
    .annotation build Lcom/android/systemui/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    .line 287
    return-void

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isForegroundUserOwner()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/Recents;->showRecentsInternal(Z)V

    .line 283
    :goto_0
    return-void

    .line 293
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    .line 294
    const-string/jumbo v2, "com.android.systemui.recents.action.SHOW_RECENTS_FOR_USER"

    .line 293
    invoke-static {v1, v2}, Lcom/android/systemui/recents/Recents;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 295
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "triggeredFromAltTab"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 296
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method showRecentsInternal(Z)V
    .locals 2
    .param p1, "triggeredFromAltTab"    # Z

    .prologue
    .line 301
    iput-boolean p1, p0, Lcom/android/systemui/recents/Recents;->mTriggeredFromAltTab:Z

    .line 304
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents;->startRecentsActivity()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v1, "Failed to launch RecentAppsIntent"

    invoke-static {v1, v0}, Lcom/android/systemui/recents/misc/Console;->logRawError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method showRelativeAffiliatedTask(Z)V
    .locals 22
    .param p1, "showNextTask"    # Z

    .prologue
    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getFocusedStack()I

    move-result v5

    .line 416
    .local v5, "focusedStackId":I
    const/4 v4, 0x0

    .line 417
    .local v4, "focusedStack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v9

    .line 418
    .local v9, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v11

    .line 419
    .local v11, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v9, v11, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Z)V

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/systemui/recents/RecentsConfiguration;->multiStackEnabled:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 421
    if-gez v5, :cond_0

    return-void

    .line 422
    :cond_0
    invoke-virtual {v11, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getTaskStack(I)Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v4

    .line 428
    .local v4, "focusedStack":Lcom/android/systemui/recents/model/TaskStack;
    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v18

    if-nez v18, :cond_3

    :cond_1
    return-void

    .line 424
    .local v4, "focusedStack":Lcom/android/systemui/recents/model/TaskStack;
    :cond_2
    invoke-virtual {v11}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getAllTaskStacks()Ljava/util/ArrayList;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "focusedStack":Lcom/android/systemui/recents/model/TaskStack;
    check-cast v4, Lcom/android/systemui/recents/model/TaskStack;

    .local v4, "focusedStack":Lcom/android/systemui/recents/model/TaskStack;
    goto :goto_0

    .line 430
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v12

    .line 432
    .local v12, "runningTask":Landroid/app/ActivityManager$RunningTaskInfo;
    if-nez v12, :cond_4

    return-void

    .line 434
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v18, v0

    iget v0, v12, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isInHomeStack(I)Z

    move-result v18

    if-eqz v18, :cond_5

    return-void

    .line 437
    :cond_5
    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v15

    .line 438
    .local v15, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    const/16 v16, 0x0

    .line 439
    .local v16, "toTask":Lcom/android/systemui/recents/model/Task;
    const/4 v8, 0x0

    .line 440
    .local v8, "launchOpts":Landroid/app/ActivityOptions;
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 441
    .local v14, "taskCount":I
    const/4 v10, 0x0

    .line 442
    .local v10, "numAffiliatedTasks":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v14, :cond_7

    .line 443
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/recents/model/Task;

    .line 444
    .local v13, "task":Lcom/android/systemui/recents/model/Task;
    iget-object v0, v13, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v18, v0

    iget v0, v12, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 445
    iget-object v6, v13, Lcom/android/systemui/recents/model/Task;->group:Lcom/android/systemui/recents/model/TaskGrouping;

    .line 447
    .local v6, "group":Lcom/android/systemui/recents/model/TaskGrouping;
    if-eqz p1, :cond_9

    .line 448
    invoke-virtual {v6, v13}, Lcom/android/systemui/recents/model/TaskGrouping;->getNextTaskInGroup(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task$TaskKey;

    move-result-object v17

    .line 449
    .local v17, "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 450
    const v19, 0x7f05009b

    .line 451
    const v20, 0x7f05009a

    .line 449
    invoke-static/range {v18 .. v20}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v8

    .line 458
    .local v8, "launchOpts":Landroid/app/ActivityOptions;
    :goto_2
    if-eqz v17, :cond_6

    .line 459
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v18, v0

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/android/systemui/recents/model/TaskStack;->findTaskWithId(I)Lcom/android/systemui/recents/model/Task;

    move-result-object v16

    .line 461
    .end local v16    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_6
    invoke-virtual {v6}, Lcom/android/systemui/recents/model/TaskGrouping;->getTaskCount()I

    move-result v10

    .line 467
    .end local v6    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v8    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v13    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v17    # "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    :cond_7
    if-nez v16, :cond_c

    .line 468
    const/16 v18, 0x1

    move/from16 v0, v18

    if-le v10, v0, :cond_8

    .line 469
    if-eqz p1, :cond_b

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v18, v0

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    .line 472
    const v20, 0x7f050099

    .line 471
    invoke-static/range {v19 .. v20}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v19

    .line 470
    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    .line 479
    :cond_8
    :goto_3
    return-void

    .line 453
    .restart local v6    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .local v8, "launchOpts":Landroid/app/ActivityOptions;
    .restart local v13    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v16    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_9
    invoke-virtual {v6, v13}, Lcom/android/systemui/recents/model/TaskGrouping;->getPrevTaskInGroup(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task$TaskKey;

    move-result-object v17

    .line 454
    .restart local v17    # "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    .line 455
    const v19, 0x7f05009e

    .line 456
    const v20, 0x7f05009d

    .line 454
    invoke-static/range {v18 .. v20}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v8

    .local v8, "launchOpts":Landroid/app/ActivityOptions;
    goto :goto_2

    .line 442
    .end local v6    # "group":Lcom/android/systemui/recents/model/TaskGrouping;
    .end local v17    # "toTaskKey":Lcom/android/systemui/recents/model/Task$TaskKey;
    .local v8, "launchOpts":Landroid/app/ActivityOptions;
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 474
    .end local v8    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v13    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v16    # "toTask":Lcom/android/systemui/recents/model/Task;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v18, v0

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    .line 476
    const v20, 0x7f05009c

    .line 475
    invoke-static/range {v19 .. v20}, Landroid/app/ActivityOptions;->makeCustomInPlaceAnimation(Landroid/content/Context;I)Landroid/app/ActivityOptions;

    move-result-object v19

    .line 474
    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startInPlaceAnimationOnFrontMostApplication(Landroid/app/ActivityOptions;)V

    goto :goto_3

    .line 483
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const-string/jumbo v19, "overview_affiliated_task_launch"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 486
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/android/systemui/recents/model/Task;->isActive:Z

    move/from16 v18, v0

    if-eqz v18, :cond_d

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v19, v0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->moveTaskToFront(ILandroid/app/ActivityOptions;)V

    .line 413
    :goto_4
    return-void

    .line 490
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    move/from16 v20, v0

    .line 491
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/recents/model/Task;->activityLabel:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 490
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v8}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->startActivityFromRecents(Landroid/content/Context;ILjava/lang/String;Landroid/app/ActivityOptions;)Z

    goto :goto_4
.end method

.method public start()V
    .locals 10
    .annotation build Lcom/android/systemui/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 231
    sget-object v0, Lcom/android/systemui/recents/Recents;->sInstance:Lcom/android/systemui/recents/Recents;

    if-nez v0, :cond_0

    .line 232
    sput-object p0, Lcom/android/systemui/recents/Recents;->sInstance:Lcom/android/systemui/recents/Recents;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->initialize(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoader;

    .line 235
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mInflater:Landroid/view/LayoutInflater;

    .line 236
    new-instance v0, Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    .line 237
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    .line 238
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mTaskStackBounds:Landroid/graphics/Rect;

    .line 239
    new-instance v0, Lcom/android/systemui/recents/RecentsAppWidgetHost;

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/recents/Constants$Values$App;->AppWidgetHostId:I

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/recents/RecentsAppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mAppWidgetHost:Lcom/android/systemui/recents/RecentsAppWidgetHost;

    .line 242
    new-instance v0, Lcom/android/systemui/recents/Recents$TaskStackListenerImpl;

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recents/Recents$TaskStackListenerImpl;-><init>(Lcom/android/systemui/recents/Recents;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mTaskStackListener:Lcom/android/systemui/recents/Recents$TaskStackListenerImpl;

    .line 243
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mTaskStackListener:Lcom/android/systemui/recents/Recents$TaskStackListenerImpl;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 248
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isForegroundUserOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    new-instance v0, Lcom/android/systemui/recents/Recents$RecentsOwnerEventProxyReceiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/Recents$RecentsOwnerEventProxyReceiver;-><init>(Lcom/android/systemui/recents/Recents;)V

    iput-object v0, p0, Lcom/android/systemui/recents/Recents;->mProxyBroadcastReceiver:Lcom/android/systemui/recents/Recents$RecentsOwnerEventProxyReceiver;

    .line 250
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 251
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "action_notify_recents_visibility_change"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string/jumbo v0, "action_screen_pinning_request"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mProxyBroadcastReceiver:Lcom/android/systemui/recents/Recents$RecentsOwnerEventProxyReceiver;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 254
    iget-object v5, p0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    .line 253
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 258
    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->initializeCurve()V

    .line 260
    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents;->reloadHeaderBarLayout()V

    .line 264
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v7

    .line 265
    .local v7, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v8

    .line 266
    .local v8, "plan":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;
    invoke-virtual {v7, v8, v9}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Z)V

    .line 267
    new-instance v6, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;

    invoke-direct {v6}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;-><init>()V

    .line 268
    .local v6, "launchOpts":Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;
    invoke-virtual {v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getApplicationIconCacheSize()I

    move-result v0

    iput v0, v6, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTasks:I

    .line 269
    invoke-virtual {v7}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getThumbnailCacheSize()I

    move-result v0

    iput v0, v6, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->numVisibleTaskThumbnails:I

    .line 270
    iput-boolean v9, v6, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;->onlyLoadForCache:Z

    .line 271
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v0, v8, v6}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->loadTasks(Landroid/content/Context;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Lcom/android/systemui/recents/model/RecentsTaskLoadPlan$Options;)V

    .line 272
    const-class v0, Lcom/android/systemui/recents/Recents;

    invoke-virtual {p0, v0, p0}, Lcom/android/systemui/recents/Recents;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 230
    return-void
.end method

.method startAlternateRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;ZZZLcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;)V
    .locals 5
    .param p1, "topTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "opts"    # Landroid/app/ActivityOptions;
    .param p3, "fromHome"    # Z
    .param p4, "fromSearchHome"    # Z
    .param p5, "fromThumbnail"    # Z
    .param p6, "vr"    # Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;

    .prologue
    const/4 v1, 0x1

    .line 858
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    if-nez p4, :cond_0

    .end local p3    # "fromHome":Z
    :goto_0
    iput-boolean p3, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromHome:Z

    .line 859
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean p4, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromSearchHome:Z

    .line 860
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-boolean p5, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedFromAppWithThumbnail:Z

    .line 861
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    if-eqz p1, :cond_1

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    :goto_1
    iput v2, v3, Lcom/android/systemui/recents/RecentsConfiguration;->launchedToTaskId:I

    .line 862
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, p0, Lcom/android/systemui/recents/Recents;->mTriggeredFromAltTab:Z

    iput-boolean v3, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithAltTab:Z

    .line 863
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v3, p0, Lcom/android/systemui/recents/Recents;->mCanReuseTaskStackViews:Z

    iput-boolean v3, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedReuseTaskStackViews:Z

    .line 864
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, p6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;->numVisibleTasks:I

    iput v3, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleTasks:I

    .line 865
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v3, p6, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;->numVisibleThumbnails:I

    iput v3, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedNumVisibleThumbnails:I

    .line 866
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedHasConfigurationChanged:Z

    .line 868
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.systemui.recents.SHOW_RECENTS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 869
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.android.systemui"

    const-string/jumbo v3, "com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 870
    const v2, 0x10804000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 873
    if-eqz p2, :cond_2

    .line 874
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 878
    :goto_2
    iput-boolean v1, p0, Lcom/android/systemui/recents/Recents;->mCanReuseTaskStackViews:Z

    .line 856
    return-void

    .end local v0    # "intent":Landroid/content/Intent;
    .restart local p3    # "fromHome":Z
    :cond_0
    move p3, v1

    .line 858
    goto :goto_0

    .line 861
    .end local p3    # "fromHome":Z
    :cond_1
    const/4 v2, -0x1

    goto :goto_1

    .line 876
    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2
.end method

.method startRecentsActivity()V
    .locals 3

    .prologue
    .line 612
    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    .line 613
    .local v1, "topTask":Landroid/app/ActivityManager$RunningTaskInfo;
    new-instance v0, Landroid/util/MutableBoolean;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 614
    .local v0, "isTopTaskHome":Landroid/util/MutableBoolean;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v2, v1, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/util/MutableBoolean;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 610
    :goto_0
    return-void

    .line 615
    :cond_0
    iget-boolean v2, v0, Landroid/util/MutableBoolean;->value:Z

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/Recents;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    goto :goto_0
.end method

.method startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Z)V
    .locals 25
    .param p1, "topTask"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "isTopTaskHome"    # Z

    .prologue
    .line 779
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v20

    .line 780
    .local v20, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-static {v4, v5}, Lcom/android/systemui/recents/RecentsConfiguration;->reinitialize(Landroid/content/Context;Lcom/android/systemui/recents/misc/SystemServicesProxy;)Lcom/android/systemui/recents/RecentsConfiguration;

    .line 782
    sget-object v4, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    if-nez v4, :cond_0

    .line 784
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->createLoadPlan(Landroid/content/Context;)Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-result-object v4

    sput-object v4, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    .line 789
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/Recents;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->multiStackEnabled:Z

    if-eqz v4, :cond_1

    .line 790
    sget-object v4, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    const/4 v5, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Z)V

    .line 791
    sget-object v4, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getAllTaskStacks()Ljava/util/ArrayList;

    move-result-object v23

    .line 792
    .local v23, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/systemui/recents/model/TaskStack;

    .line 793
    .local v22, "stack":Lcom/android/systemui/recents/model/TaskStack;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/Recents;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/recents/Recents;->mTriggeredFromAltTab:Z

    const/4 v7, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v4, v0, v5, v7}, Lcom/android/systemui/recents/views/TaskStackView;->updateMinMaxScrollForStack(Lcom/android/systemui/recents/model/TaskStack;ZZ)V

    .line 795
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/Recents;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->computeStackVisibilityReport()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;

    move-result-object v10

    .line 796
    .local v10, "stackVr":Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/Recents;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v6

    .line 797
    .local v6, "opts":Landroid/app/ActivityOptions;
    const/4 v7, 0x1

    .line 798
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 797
    invoke-virtual/range {v4 .. v10}, Lcom/android/systemui/recents/Recents;->startAlternateRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;ZZZLcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;)V

    .line 799
    return-void

    .line 802
    .end local v6    # "opts":Landroid/app/ActivityOptions;
    .end local v10    # "stackVr":Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;
    .end local v22    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v23    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    :cond_1
    sget-object v4, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->hasTasks()Z

    move-result v4

    if-nez v4, :cond_2

    .line 803
    sget-object v4, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->preloadTasks(Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;Z)V

    .line 805
    :cond_2
    sget-object v4, Lcom/android/systemui/recents/Recents;->sInstanceLoadPlan:Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/RecentsTaskLoadPlan;->getAllTaskStacks()Ljava/util/ArrayList;

    move-result-object v23

    .line 806
    .restart local v23    # "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/systemui/recents/model/TaskStack;

    .line 809
    .restart local v22    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/Recents;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/recents/Recents;->mTriggeredFromAltTab:Z

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v4, v0, v5, v1}, Lcom/android/systemui/recents/views/TaskStackView;->updateMinMaxScrollForStack(Lcom/android/systemui/recents/model/TaskStack;ZZ)V

    .line 811
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/Recents;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->computeStackVisibilityReport()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;

    move-result-object v10

    .line 812
    .restart local v10    # "stackVr":Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;
    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    if-lez v4, :cond_6

    const/16 v18, 0x1

    .line 813
    .local v18, "hasRecentTasks":Z
    :goto_0
    if-eqz p1, :cond_3

    if-eqz p2, :cond_7

    :cond_3
    const/16 v24, 0x0

    .line 815
    :goto_1
    if-eqz v24, :cond_4

    .line 819
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/Recents;->mDummyStackView:Lcom/android/systemui/recents/views/TaskStackView;

    .line 818
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/systemui/recents/Recents;->getThumbnailTransitionActivityOptions(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/views/TaskStackView;)Landroid/app/ActivityOptions;

    move-result-object v6

    .line 820
    .restart local v6    # "opts":Landroid/app/ActivityOptions;
    if-eqz v6, :cond_8

    .line 821
    const/4 v7, 0x0

    .line 822
    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 821
    invoke-virtual/range {v4 .. v10}, Lcom/android/systemui/recents/Recents;->startAlternateRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;ZZZLcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;)V

    .line 829
    .end local v6    # "opts":Landroid/app/ActivityOptions;
    :cond_4
    :goto_2
    if-nez v24, :cond_5

    .line 832
    if-eqz v18, :cond_a

    .line 833
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getHomeActivityPackageName()Ljava/lang/String;

    move-result-object v19

    .line 835
    .local v19, "homeActivityPackage":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "searchAppWidgetPackage"

    const/4 v7, 0x0

    invoke-static {v4, v5, v7}, Lcom/android/systemui/Prefs;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 838
    .local v21, "searchWidgetPackage":Ljava/lang/String;
    if-eqz v19, :cond_9

    .line 839
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 840
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/systemui/recents/Recents;->getHomeTransitionActivityOptions(Z)Landroid/app/ActivityOptions;

    move-result-object v6

    .line 841
    .restart local v6    # "opts":Landroid/app/ActivityOptions;
    const/4 v7, 0x1

    .line 842
    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    .line 841
    invoke-virtual/range {v4 .. v10}, Lcom/android/systemui/recents/Recents;->startAlternateRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;ZZZLcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;)V

    .line 850
    .end local v6    # "opts":Landroid/app/ActivityOptions;
    .end local v19    # "homeActivityPackage":Ljava/lang/String;
    .end local v21    # "searchWidgetPackage":Ljava/lang/String;
    :cond_5
    :goto_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/systemui/recents/Recents;->mLastToggleTime:J

    .line 778
    return-void

    .line 812
    .end local v18    # "hasRecentTasks":Z
    :cond_6
    const/16 v18, 0x0

    .restart local v18    # "hasRecentTasks":Z
    goto :goto_0

    .line 813
    :cond_7
    move/from16 v24, v18

    .local v24, "useThumbnailTransition":Z
    goto :goto_1

    .line 825
    .end local v24    # "useThumbnailTransition":Z
    .restart local v6    # "opts":Landroid/app/ActivityOptions;
    :cond_8
    const/16 v24, 0x0

    .local v24, "useThumbnailTransition":Z
    goto :goto_2

    .line 838
    .end local v6    # "opts":Landroid/app/ActivityOptions;
    .end local v24    # "useThumbnailTransition":Z
    .restart local v19    # "homeActivityPackage":Ljava/lang/String;
    .restart local v21    # "searchWidgetPackage":Ljava/lang/String;
    :cond_9
    const/4 v8, 0x0

    .local v8, "fromSearchHome":Z
    goto :goto_3

    .line 845
    .end local v8    # "fromSearchHome":Z
    .end local v19    # "homeActivityPackage":Ljava/lang/String;
    .end local v21    # "searchWidgetPackage":Ljava/lang/String;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/Recents;->getUnknownTransitionActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v6

    .line 846
    .restart local v6    # "opts":Landroid/app/ActivityOptions;
    const/4 v14, 0x1

    .line 847
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object v13, v6

    move-object/from16 v17, v10

    .line 846
    invoke-virtual/range {v11 .. v17}, Lcom/android/systemui/recents/Recents;->startAlternateRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityOptions;ZZZLcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm$VisibilityReport;)V

    goto :goto_4
.end method

.method public toggleRecents(Landroid/view/Display;ILandroid/view/View;)V
    .locals 3
    .param p1, "display"    # Landroid/view/Display;
    .param p2, "layoutDirection"    # I
    .param p3, "statusBarView"    # Landroid/view/View;
    .annotation build Lcom/android/systemui/recents/ProxyFromPrimaryToCurrentUser;
    .end annotation

    .prologue
    .line 348
    invoke-direct {p0}, Lcom/android/systemui/recents/Recents;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    .line 349
    return-void

    .line 352
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isForegroundUserOwner()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 353
    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents;->toggleRecentsInternal()V

    .line 345
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    .line 356
    const-string/jumbo v2, "com.android.systemui.recents.action.TOGGLE_RECENTS_FOR_USER"

    .line 355
    invoke-static {v1, v2}, Lcom/android/systemui/recents/Recents;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 357
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method toggleRecentsActivity()V
    .locals 8

    .prologue
    .line 589
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/systemui/recents/Recents;->mLastToggleTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x15e

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 590
    return-void

    .line 595
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getTopMostTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    .line 596
    .local v2, "topTask":Landroid/app/ActivityManager$RunningTaskInfo;
    new-instance v1, Landroid/util/MutableBoolean;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 597
    .local v1, "isTopTaskHome":Landroid/util/MutableBoolean;
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mSystemServicesProxy:Lcom/android/systemui/recents/misc/SystemServicesProxy;

    invoke-virtual {v3, v2, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isRecentsTopMost(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/util/MutableBoolean;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 599
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "action_toggle_recents_activity"

    invoke-static {v3, v4}, Lcom/android/systemui/recents/Recents;->createLocalBroadcastIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 600
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 601
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/systemui/recents/Recents;->mLastToggleTime:J

    .line 602
    return-void

    .line 605
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-boolean v3, v1, Landroid/util/MutableBoolean;->value:Z

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/recents/Recents;->startRecentsActivity(Landroid/app/ActivityManager$RunningTaskInfo;Z)V

    .line 585
    return-void
.end method

.method toggleRecentsInternal()V
    .locals 2

    .prologue
    .line 362
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/recents/Recents;->mTriggeredFromAltTab:Z

    .line 365
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents;->toggleRecentsActivity()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v1, "Failed to launch RecentAppsIntent"

    invoke-static {v1, v0}, Lcom/android/systemui/recents/misc/Console;->logRawError(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
