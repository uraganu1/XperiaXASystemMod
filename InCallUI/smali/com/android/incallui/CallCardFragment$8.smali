.class Lcom/android/incallui/CallCardFragment$8;
.super Ljava/lang/Object;
.source "CallCardFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardFragment;->sendAccessibilityAnnouncement()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/CallCardFragment;

    .prologue
    .line 1493
    iput-object p1, p0, Lcom/android/incallui/CallCardFragment$8;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1496
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment$8;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallCardFragment$8;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1498
    const/16 v1, 0x4000

    .line 1497
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 1499
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment$8;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v1, v0}, Lcom/android/incallui/CallCardFragment;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1500
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment$8;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment$8;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1495
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method
