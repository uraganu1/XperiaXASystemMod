.class Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardHostView$OnDismissAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

.field final synthetic val$afterKeyguardGone:Z

.field final synthetic val$intent:Landroid/app/PendingIntent;

.field final synthetic val$keyguardShowing:Z

.field final synthetic val$notificationKey:Ljava/lang/String;

.field final synthetic val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;Ljava/lang/String;Lcom/android/systemui/statusbar/ExpandableNotificationRow;ZZLandroid/app/PendingIntent;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;
    .param p2, "val$notificationKey"    # Ljava/lang/String;
    .param p3, "val$row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p4, "val$keyguardShowing"    # Z
    .param p5, "val$afterKeyguardGone"    # Z
    .param p6, "val$intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1607
    iput-object p1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iput-object p2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->val$notificationKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->val$keyguardShowing:Z

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->val$afterKeyguardGone:Z

    iput-object p6, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->val$intent:Landroid/app/PendingIntent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1609
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->val$notificationKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isHeadsUp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1614
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->val$row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v0, v6}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->setIsClickedNotification(Landroid/view/View;Z)V

    .line 1615
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->val$notificationKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->releaseImmediately(Ljava/lang/String;)V

    .line 1617
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->val$keyguardShowing:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->val$afterKeyguardGone:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->val$intent:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->val$notificationKey:Ljava/lang/String;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;-><init>(Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;ZZLandroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1$1;->start()V

    .line 1660
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v6, v6}, Lcom/android/systemui/statusbar/BaseStatusBar;->animateCollapsePanels(IZZ)V

    .line 1662
    iget-object v0, p0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker$1;->this$1:Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;

    iget-object v0, v0, Lcom/android/systemui/statusbar/BaseStatusBar$NotificationClicker;->this$0:Lcom/android/systemui/statusbar/BaseStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/BaseStatusBar;->visibilityChanged(Z)V

    .line 1664
    return v6
.end method