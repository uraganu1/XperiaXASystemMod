.class Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$5;
.super Ljava/lang/Object;
.source "GroupDetailFragment.java"

# interfaces
.implements Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$5;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateGroupMemberDataSize()V
    .locals 9

    .prologue
    const v8, 0x7f0f0006

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 184
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$5;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-get9(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)[J

    move-result-object v1

    if-eqz v1, :cond_2

    .line 185
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$5;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-get9(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)[J

    move-result-object v1

    array-length v0, v1

    .line 187
    .local v0, "total":I
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$5;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-get14(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$5;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$5;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-get11(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;

    move-result-object v3

    .line 189
    const/4 v4, 0x3

    .line 188
    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->getAvailableMemberCount(I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-set3(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;I)I

    .line 190
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$5;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-get10(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$5;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    .line 192
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$5;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-get16(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 190
    invoke-virtual {v3, v8, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$5;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$5;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-get16(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 194
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$5;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-virtual {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/util/PhoneCapabilityChecker;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v1

    .line 193
    :goto_0
    invoke-static {v3, v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-wrap4(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;Z)V

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$5;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-get6(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 198
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$5;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$5;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-get11(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;

    move-result-object v3

    .line 199
    const/4 v4, 0x4

    .line 198
    invoke-virtual {v3, v4}, Lcom/sonyericsson/android/socialphonebook/group/GroupMessageHandler;->getAvailableMemberCount(I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-set0(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;I)I

    .line 200
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$5;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-static {v1}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-get5(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$5;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-virtual {v3}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/Object;

    .line 202
    iget-object v5, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$5;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-static {v5}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-get4(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 200
    invoke-virtual {v3, v8, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$5;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    iget-object v3, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$5;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-static {v3}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-get4(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment$5;->this$0:Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;

    invoke-static {v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-get13(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;)Z

    move-result v2

    :cond_1
    invoke-static {v1, v2}, Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;->-wrap3(Lcom/sonyericsson/android/socialphonebook/group/GroupDetailFragment;Z)V

    .line 183
    .end local v0    # "total":I
    :cond_2
    return-void

    .restart local v0    # "total":I
    :cond_3
    move v1, v2

    .line 193
    goto :goto_0
.end method
