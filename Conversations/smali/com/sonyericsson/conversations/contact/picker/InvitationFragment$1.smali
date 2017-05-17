.class Lcom/sonyericsson/conversations/contact/picker/InvitationFragment$1;
.super Ljava/lang/Object;
.source "InvitationFragment.java"

# interfaces
.implements Lcom/sonyericsson/conversations/conversation/action/StartConversationTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;->startGroupConversation(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment$1;->this$0:Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreConversationStart()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment$1;->this$0:Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;

    const v1, 0x7f0b00ed

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;->-wrap1(Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;I)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 123
    return-void
.end method

.method public onStartConversationException(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment$1;->this$0:Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;->-wrap0(Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 137
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment$1;->this$0:Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;

    invoke-static {v0, p1}, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;->-wrap2(Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;Ljava/lang/Exception;)V

    .line 135
    return-void
.end method

.method public onStartConversationSuccessful(Lcom/sonymobile/jms/conversation/ImConversationId;)V
    .locals 1
    .param p1, "result"    # Lcom/sonymobile/jms/conversation/ImConversationId;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment$1;->this$0:Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;->-wrap0(Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 131
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment$1;->this$0:Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;

    invoke-static {v0, p1}, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;->-wrap3(Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;Lcom/sonymobile/jms/conversation/ImConversationId;)V

    .line 129
    return-void
.end method
