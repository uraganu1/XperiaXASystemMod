.class Lcom/sonyericsson/conversations/ui/EditorFragment$4;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;->setKeyboardState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

.field final synthetic val$isVisible:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/EditorFragment;ZLandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;
    .param p2, "val$isVisible"    # Z
    .param p3, "val$view"    # Landroid/view/View;

    .prologue
    .line 491
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$4;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iput-boolean p2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$4;->val$isVisible:Z

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$4;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 494
    iget-boolean v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$4;->val$isVisible:Z

    if-eqz v1, :cond_1

    .line 495
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$4;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-get5(Lcom/sonyericsson/conversations/ui/EditorFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$4;->val$view:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 496
    :cond_1
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$4;->val$view:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 497
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$4;->val$view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 498
    .local v0, "windowToken":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 499
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$4;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-get5(Lcom/sonyericsson/conversations/ui/EditorFragment;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 500
    const/4 v2, 0x2

    .line 499
    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method
