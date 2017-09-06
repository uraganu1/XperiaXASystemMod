.class Lcom/android/incallui/CallCardFragment$11;
.super Ljava/lang/Object;
.source "CallCardFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardFragment;->updateFabPositionForSecondaryCallInfo()V
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
    .line 1769
    iput-object p1, p0, Lcom/android/incallui/CallCardFragment$11;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 1772
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment$11;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-static {v1}, Lcom/android/incallui/CallCardFragment;->-get9(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1773
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1774
    return-void

    .line 1776
    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1778
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment$11;->this$0:Lcom/android/incallui/CallCardFragment;

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment$11;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-static {v2}, Lcom/android/incallui/CallCardFragment;->-get5(Lcom/android/incallui/CallCardFragment;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallCardFragment;->onDialpadVisibilityChange(Z)V

    .line 1771
    return-void
.end method
