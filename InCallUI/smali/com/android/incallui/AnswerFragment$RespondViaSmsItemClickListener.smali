.class public Lcom/android/incallui/AnswerFragment$RespondViaSmsItemClickListener;
.super Ljava/lang/Object;
.source "AnswerFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/AnswerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RespondViaSmsItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/AnswerFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/AnswerFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/AnswerFragment;

    .prologue
    .line 733
    iput-object p1, p0, Lcom/android/incallui/AnswerFragment$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 742
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RespondViaSmsItemClickListener.onItemClick("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 743
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;

    .line 744
    .local v0, "item":Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;
    invoke-virtual {v0}, Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;->toString()Ljava/lang/String;

    move-result-object v1

    .line 745
    .local v1, "message":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "- message: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 746
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-static {v2}, Lcom/android/incallui/AnswerFragment;->-wrap0(Lcom/android/incallui/AnswerFragment;)V

    .line 750
    invoke-virtual {v0}, Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;->isCustomMsgItem()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 752
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v2}, Lcom/android/incallui/AnswerFragment;->showCustomMessageDialog()V

    .line 741
    :goto_0
    return-void

    .line 753
    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/SomcRejectWithMsgAdapter$SomcItemWithIcon;->getOption()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 754
    invoke-static {}, Lcom/android/incallui/SomcAmUtils;->setAmActivateByUser()V

    goto :goto_0

    .line 756
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/AnswerFragment$RespondViaSmsItemClickListener;->this$0:Lcom/android/incallui/AnswerFragment;

    invoke-virtual {v2}, Lcom/android/incallui/AnswerFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v2, v1}, Lcom/android/incallui/AnswerPresenter;->rejectCallWithMessage(Ljava/lang/String;)V

    goto :goto_0
.end method
