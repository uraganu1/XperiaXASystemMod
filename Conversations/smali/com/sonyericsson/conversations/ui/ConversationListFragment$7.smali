.class Lcom/sonyericsson/conversations/ui/ConversationListFragment$7;
.super Ljava/lang/Object;
.source "ConversationListFragment.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/ConversationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$7;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getSystemService()Landroid/view/inputmethod/InputMethodManager;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 363
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$7;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 364
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 365
    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    return-object v1

    .line 367
    :cond_0
    return-object v2
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4
    .param p1, "newQueryString"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 386
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$7;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get10(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->isActionViewExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 387
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$7;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get8(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    return v1

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$7;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v0, p1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-set2(Lcom/sonyericsson/conversations/ui/ConversationListFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 395
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$7;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get3(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;->onOpenSearchMode(Ljava/lang/String;)V

    .line 400
    :goto_0
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$7;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$7;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get9(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 401
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$7;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    iget-object v0, v0, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$7;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get9(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 402
    const/4 v0, 0x1

    return v0

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$7;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get3(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$ConversationEventListener;->onCloseSearchModeInConversationList()V

    goto :goto_0

    .line 404
    :cond_2
    return v1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 374
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$7;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get12(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Landroid/widget/SearchView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 375
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationListFragment$7;->getSystemService()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 376
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 377
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$7;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get12(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/ConversationListFragment$7;->this$0:Lcom/sonyericsson/conversations/ui/ConversationListFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/ConversationListFragment;->-get12(Lcom/sonyericsson/conversations/ui/ConversationListFragment;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 381
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
