.class Lcom/sonyericsson/conversations/ui/util/MessageActionsController$3;
.super Ljava/lang/Thread;
.source "MessageActionsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->copySMSToSimCard(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$simCardSlotIndex:I


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Ljava/lang/String;Landroid/app/Activity;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/util/MessageActionsController;
    .param p2, "$anonymous0"    # Ljava/lang/String;
    .param p3, "val$activity"    # Landroid/app/Activity;
    .param p4, "val$simCardSlotIndex"    # I

    .prologue
    .line 848
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$3;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$3;->val$activity:Landroid/app/Activity;

    iput p4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$3;->val$simCardSlotIndex:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v3, 0x0

    .line 850
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$3;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->-get2(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sonyericsson/conversations/model/Message;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 851
    .local v1, "uri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$3;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-static {v4}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->-get0(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 852
    .local v0, "mContentResolver":Landroid/content/ContentResolver;
    const/4 v4, 0x1

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v4, "address"

    aput-object v4, v2, v12

    .local v2, "projection":[Ljava/lang/String;
    move-object v4, v3

    move-object v5, v3

    .line 853
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 854
    .local v8, "cursor":Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 855
    .local v6, "address":Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 857
    :try_start_0
    const-string/jumbo v3, "address"

    invoke-interface {v8, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 858
    .local v7, "addressIndex":I
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 859
    invoke-interface {v8, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 862
    .end local v6    # "address":Ljava/lang/String;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 866
    .end local v7    # "addressIndex":I
    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 869
    :cond_2
    const v11, 0x7f0b0149

    .line 870
    .local v11, "textId":I
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$3;->val$activity:Landroid/app/Activity;

    invoke-static {v3, v11, v12}, Lcom/sonyericsson/conversations/ui/util/ToastUtil;->showToast(Landroid/content/Context;II)V

    .line 871
    return-void

    .line 861
    .end local v11    # "textId":I
    .restart local v6    # "address":Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 862
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 861
    throw v3

    .line 867
    .end local v6    # "address":Ljava/lang/String;
    :cond_3
    const-string/jumbo v3, "[\\+]?[0-9]+"

    invoke-static {v3, v6}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 874
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$3;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    invoke-static {v3}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->-get2(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;)Lcom/sonyericsson/conversations/model/Message;

    move-result-object v9

    check-cast v9, Lcom/sonyericsson/conversations/model/SmsMessage;

    .line 878
    .local v9, "smsMsg":Lcom/sonyericsson/conversations/model/SmsMessage;
    iget-object v3, v9, Lcom/sonyericsson/conversations/model/SmsMessage;->bodyText:Ljava/lang/String;

    iget-wide v4, v9, Lcom/sonyericsson/conversations/model/SmsMessage;->date:J

    iget v12, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$3;->val$simCardSlotIndex:I

    .line 877
    invoke-static {v6, v3, v4, v5, v12}, Lcom/sonyericsson/conversations/util/SimCardUtils;->copySMSToSimCard(Ljava/lang/String;Ljava/lang/String;JI)Z

    move-result v10

    .line 880
    .local v10, "success":Z
    if-eqz v10, :cond_4

    .line 881
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$3;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$3;->val$activity:Landroid/app/Activity;

    iget v5, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$3;->val$simCardSlotIndex:I

    invoke-static {v3, v4, v5}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->-wrap6(Lcom/sonyericsson/conversations/ui/util/MessageActionsController;Landroid/content/Context;I)V

    .line 849
    :goto_0
    return-void

    .line 886
    :cond_4
    iget-object v3, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$3;->this$0:Lcom/sonyericsson/conversations/ui/util/MessageActionsController;

    iget-object v4, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$3;->val$activity:Landroid/app/Activity;

    iget v5, p0, Lcom/sonyericsson/conversations/ui/util/MessageActionsController$3;->val$simCardSlotIndex:I

    invoke-virtual {v3, v4, v5}, Lcom/sonyericsson/conversations/ui/util/MessageActionsController;->showSimCardFullDialog(Landroid/app/Activity;I)V

    goto :goto_0
.end method
