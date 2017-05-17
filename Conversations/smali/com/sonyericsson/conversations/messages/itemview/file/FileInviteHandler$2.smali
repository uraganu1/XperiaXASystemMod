.class Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$2;
.super Ljava/lang/Object;
.source "FileInviteHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->showFileSizeWarningDialog(Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;

.field final synthetic val$imConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

.field final synthetic val$messageId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;
    .param p2, "val$imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .param p3, "val$messageId"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$2;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;

    iput-object p2, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$2;->val$imConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    iput-object p3, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$2;->val$messageId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 154
    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$2;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$2;->val$imConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    iget-object v2, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$2;->val$messageId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->-wrap4(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$2;->this$0:Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;

    iget-object v1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$2;->val$imConversationId:Lcom/sonymobile/jms/conversation/ImConversationId;

    iget-object v2, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$2;->val$messageId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->-wrap3(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/lang/String;)V

    goto :goto_0
.end method
