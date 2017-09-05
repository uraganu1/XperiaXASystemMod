.class Lcom/android/systemui/statusbar/BaseStatusBar$12;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/systemui/SwipeHelper$LongPressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar;->getNotificationLongClicker()Lcom/android/systemui/SwipeHelper$LongPressListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/BaseStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/BaseStatusBar;

    .prologue
    .line 995
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/View;II)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v10, 0x0

    .line 998
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->dismissPopups()V

    .line 1000
    instance-of v8, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v8, :cond_0

    .line 1001
    return v10

    .line 1003
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    if-nez v8, :cond_1

    .line 1004
    const-string/jumbo v8, "StatusBar"

    const-string/jumbo v9, "Trying to show notification guts, but not attached to window"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    return v10

    :cond_1
    move-object v5, p1

    .line 1008
    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 1009
    .local v5, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v8, v5}, Lcom/android/systemui/statusbar/BaseStatusBar;->-wrap0(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 1012
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getGuts()Lcom/android/systemui/statusbar/NotificationGuts;

    move-result-object v1

    .line 1013
    .local v1, "guts":Lcom/android/systemui/statusbar/NotificationGuts;
    if-nez v1, :cond_2

    .line 1015
    return v10

    .line 1019
    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getVisibility()I

    move-result v8

    if-nez v8, :cond_3

    .line 1020
    const-string/jumbo v8, "StatusBar"

    const-string/jumbo v9, "Trying to show notification guts, but already visible"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    return v10

    .line 1024
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v8, v8, Lcom/android/systemui/statusbar/BaseStatusBar;->mContext:Landroid/content/Context;

    const/16 v9, 0xcc

    invoke-static {v8, v9}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 1025
    invoke-virtual {v1, v10}, Lcom/android/systemui/statusbar/NotificationGuts;->setVisibility(I)V

    .line 1026
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getWidth()I

    move-result v8

    sub-int/2addr v8, p2

    invoke-static {v8, p2}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-double v2, v8

    .line 1027
    .local v2, "horz":D
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->getActualHeight()I

    move-result v8

    sub-int/2addr v8, p3

    invoke-static {v8, p3}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-double v6, v8

    .line 1028
    .local v6, "vert":D
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v4, v8

    .line 1030
    .local v4, "r":F
    const/4 v8, 0x0

    invoke-static {v1, p2, p3, v8, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 1031
    .local v0, "a":Landroid/animation/Animator;
    const-wide/16 v8, 0x190

    invoke-virtual {v0, v8, v9}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1032
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v8}, Lcom/android/systemui/statusbar/BaseStatusBar;->-get1(Lcom/android/systemui/statusbar/BaseStatusBar;)Landroid/animation/TimeInterpolator;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1033
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1035
    iget-object v8, p0, Lcom/android/systemui/statusbar/BaseStatusBar$12;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    invoke-static {v8, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->-set1(Lcom/android/systemui/statusbar/BaseStatusBar;Lcom/android/systemui/statusbar/NotificationGuts;)Lcom/android/systemui/statusbar/NotificationGuts;

    .line 1037
    const/4 v8, 0x1

    return v8
.end method
