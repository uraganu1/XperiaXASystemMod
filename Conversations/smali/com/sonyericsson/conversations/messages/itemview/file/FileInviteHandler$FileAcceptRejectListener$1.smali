.class Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$FileAcceptRejectListener$1;
.super Ljava/lang/Object;
.source "FileInviteHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$FileAcceptRejectListener;->onImFileMessageAcceptedOrRejected(Lcom/sonymobile/jms/message/ImFileMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$FileAcceptRejectListener;

.field final synthetic val$inviteHandler:Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$FileAcceptRejectListener;Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$FileAcceptRejectListener;
    .param p2, "val$inviteHandler"    # Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$FileAcceptRejectListener$1;->this$1:Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$FileAcceptRejectListener;

    iput-object p2, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$FileAcceptRejectListener$1;->val$inviteHandler:Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler$FileAcceptRejectListener$1;->val$inviteHandler:Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;

    invoke-static {v0}, Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;->-wrap1(Lcom/sonyericsson/conversations/messages/itemview/file/FileInviteHandler;)V

    .line 317
    return-void
.end method
