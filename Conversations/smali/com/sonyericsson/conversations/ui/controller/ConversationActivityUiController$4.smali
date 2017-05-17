.class Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$4;
.super Ljava/lang/Object;
.source "ConversationActivityUiController.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/Composer$MessageEncodingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    .prologue
    .line 584
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$4;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEncodingChanged(III)V
    .locals 11
    .param p1, "oldEncoding"    # I
    .param p2, "newEncoding"    # I
    .param p3, "newMessageSize"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x3

    .line 589
    if-ne p2, v6, :cond_1

    const/4 v4, 0x1

    .line 590
    .local v4, "turned16bit":Z
    :goto_0
    if-ne p1, v6, :cond_3

    .line 591
    if-eq p2, v6, :cond_2

    const/4 v5, 0x1

    .line 593
    .local v5, "turnedFrom16bit":Z
    :goto_1
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$4;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-wrap0(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Landroid/app/Activity;

    move-result-object v0

    .line 595
    .local v0, "activity":Landroid/app/Activity;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isEncodingChangedNotificationEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$4;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get5(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Landroid/app/FragmentManager;

    move-result-object v6

    if-nez v6, :cond_4

    .line 598
    :cond_0
    return-void

    .line 589
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v4    # "turned16bit":Z
    .end local v5    # "turnedFrom16bit":Z
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "turned16bit":Z
    goto :goto_0

    .line 591
    :cond_2
    const/4 v5, 0x0

    .restart local v5    # "turnedFrom16bit":Z
    goto :goto_1

    .line 590
    .end local v5    # "turnedFrom16bit":Z
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "turnedFrom16bit":Z
    goto :goto_1

    .line 596
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_4
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$4;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get5(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v6

    .line 595
    if-nez v6, :cond_0

    .line 596
    if-eqz v0, :cond_0

    .line 597
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    .line 595
    if-nez v6, :cond_0

    .line 601
    if-eqz v4, :cond_7

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EncodingChangeDialog;->shouldDisplayDialog(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 603
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$4;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get5(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Landroid/app/FragmentManager;

    move-result-object v6

    .line 604
    const-string/jumbo v7, "EncodingChangeDialog"

    .line 603
    invoke-virtual {v6, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/ui/EncodingChangeDialog;

    .line 605
    .local v1, "encodingChangeDialog":Lcom/sonyericsson/conversations/ui/EncodingChangeDialog;
    if-nez v1, :cond_5

    .line 606
    invoke-static {p3}, Lcom/sonyericsson/conversations/ui/EncodingChangeDialog;->newInstance(I)Lcom/sonyericsson/conversations/ui/EncodingChangeDialog;

    move-result-object v1

    .line 608
    :cond_5
    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/EncodingChangeDialog;->isAdded()Z

    move-result v6

    if-nez v6, :cond_6

    .line 609
    iget-object v6, p0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$4;->this$0:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;

    invoke-static {v6}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;->-get5(Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;)Landroid/app/FragmentManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 610
    .local v2, "ft":Landroid/app/FragmentTransaction;
    const-string/jumbo v6, "EncodingChangeDialog"

    invoke-virtual {v2, v1, v6}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 611
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 588
    .end local v1    # "encodingChangeDialog":Lcom/sonyericsson/conversations/ui/EncodingChangeDialog;
    .end local v2    # "ft":Landroid/app/FragmentTransaction;
    :cond_6
    :goto_2
    return-void

    .line 613
    :cond_7
    if-nez v4, :cond_8

    if-eqz v5, :cond_6

    .line 614
    :cond_8
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    .line 616
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    .line 615
    const v8, 0x7f0b00c8

    .line 614
    invoke-virtual {v6, v8, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 618
    .local v3, "toastText":Ljava/lang/String;
    invoke-static {v0, v3, v10}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    goto :goto_2
.end method
