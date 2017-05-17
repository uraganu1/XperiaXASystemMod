.class Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$3;
.super Ljava/lang/Object;
.source "SmartSearchFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->onQueryComplete(Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

.field final synthetic val$cursor:Landroid/database/Cursor;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;Landroid/database/Cursor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;
    .param p2, "val$cursor"    # Landroid/database/Cursor;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    iput-object p2, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$3;->val$cursor:Landroid/database/Cursor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->-get3(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->-get7(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 552
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->-get2(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)Z

    move-result v0

    .line 551
    if-eqz v0, :cond_1

    .line 553
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->-wrap0(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)V

    .line 554
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$3;->val$cursor:Landroid/database/Cursor;

    invoke-static {v0, v1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->-wrap1(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;Landroid/database/Cursor;)V

    .line 555
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->-get7(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$3;->val$cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SearchContactsAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 556
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->-wrap3(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)V

    .line 557
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 559
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->-get3(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)Lcom/sonyericsson/android/socialphonebook/DialpadFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/DialpadFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isEnrichedCallingSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 561
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$3;->this$0:Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;->-wrap2(Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment;)V

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 563
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$3;->val$cursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/smartsearch/SmartSearchFragment$3;->val$cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
