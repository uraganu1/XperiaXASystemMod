.class Lcom/android/incallui/CallCardFragment$10;
.super Ljava/lang/Object;
.source "CallCardFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardFragment;

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardFragment;Landroid/view/ViewTreeObserver;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/CallCardFragment;
    .param p2, "val$observer"    # Landroid/view/ViewTreeObserver;
    .param p3, "val$parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1748
    iput-object p1, p0, Lcom/android/incallui/CallCardFragment$10;->this$0:Lcom/android/incallui/CallCardFragment;

    iput-object p2, p0, Lcom/android/incallui/CallCardFragment$10;->val$observer:Landroid/view/ViewTreeObserver;

    iput-object p3, p0, Lcom/android/incallui/CallCardFragment$10;->val$parent:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/android/incallui/CallCardFragment$10;->val$observer:Landroid/view/ViewTreeObserver;

    .line 1752
    .local v0, "viewTreeObserver":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1753
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment$10;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1755
    :cond_0
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1756
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment$10;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-static {v1}, Lcom/android/incallui/CallCardFragment;->-get3(Lcom/android/incallui/CallCardFragment;)Lcom/android/contacts/common/widget/FloatingActionButtonController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/CallCardFragment$10;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->setScreenWidth(I)V

    .line 1757
    iget-object v1, p0, Lcom/android/incallui/CallCardFragment$10;->this$0:Lcom/android/incallui/CallCardFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/incallui/CallCardFragment;->-wrap2(Lcom/android/incallui/CallCardFragment;Z)V

    .line 1750
    return-void
.end method
