.class Lcom/sonyericsson/conversations/contact/picker/InvitationFragment$2;
.super Ljava/lang/Object;
.source "InvitationFragment.java"

# interfaces
.implements Lcom/sonyericsson/conversations/conversation/action/InviteToConversationTask$InviteToConversationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;->inviteToGroupConversation(Ljava/util/List;Lcom/sonymobile/jms/conversation/ImGroupConversationId;Lcom/sonymobile/jms/conversation/ImConversationApi;)V
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
    .line 148
    iput-object p1, p0, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment$2;->this$0:Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInviteException(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment$2;->this$0:Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;->-wrap0(Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 162
    return-void
.end method

.method public onInviteSuccessful(Lcom/sonymobile/jms/conversation/ImConversationId;)V
    .locals 1
    .param p1, "result"    # Lcom/sonymobile/jms/conversation/ImConversationId;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment$2;->this$0:Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;->-wrap0(Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 157
    return-void
.end method

.method public onPreInvite()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment$2;->this$0:Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;

    const v1, 0x7f0b00ed

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;->-wrap1(Lcom/sonyericsson/conversations/contact/picker/InvitationFragment;I)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 151
    return-void
.end method
