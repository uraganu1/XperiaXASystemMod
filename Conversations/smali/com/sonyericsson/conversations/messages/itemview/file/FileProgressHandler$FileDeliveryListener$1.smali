.class Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener$1;
.super Ljava/lang/Object;
.source "FileProgressHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener;->setProgressValue(Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener;

.field final synthetic val$currValue:J

.field final synthetic val$headerView:Landroid/widget/TextView;

.field final synthetic val$maxValue:J

.field final synthetic val$progressHandler:Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener;Landroid/widget/TextView;Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;JJ)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener;
    .param p2, "val$headerView"    # Landroid/widget/TextView;
    .param p3, "val$progressHandler"    # Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;
    .param p4, "val$currValue"    # J
    .param p6, "val$maxValue"    # J

    .prologue
    .line 168
    iput-object p1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener$1;->this$1:Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener;

    iput-object p2, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener$1;->val$headerView:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener$1;->val$progressHandler:Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;

    iput-wide p4, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener$1;->val$currValue:J

    iput-wide p6, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener$1;->val$maxValue:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener$1;->val$headerView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener$1;->val$progressHandler:Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;

    invoke-static {v1}, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;->-get0(Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;)Landroid/content/Context;

    move-result-object v1

    .line 172
    iget-object v2, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener$1;->val$progressHandler:Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;

    invoke-static {v2}, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;->-get2(Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;)Lcom/sonyericsson/conversations/model/JoynMessage;

    move-result-object v2

    .line 173
    iget-wide v4, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener$1;->val$currValue:J

    iget-wide v6, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler$FileDeliveryListener$1;->val$maxValue:J

    invoke-static {v4, v5, v6, v7}, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;->-wrap0(JJ)I

    move-result v3

    .line 171
    invoke-static {v1, v2, v3}, Lcom/sonyericsson/conversations/messages/itemview/file/FileProgressHandler;->-wrap1(Landroid/content/Context;Lcom/sonyericsson/conversations/model/JoynMessage;I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    return-void
.end method
