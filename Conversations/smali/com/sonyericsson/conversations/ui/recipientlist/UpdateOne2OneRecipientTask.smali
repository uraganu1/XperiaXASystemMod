.class public Lcom/sonyericsson/conversations/ui/recipientlist/UpdateOne2OneRecipientTask;
.super Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask;
.source "UpdateOne2OneRecipientTask.java"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private final mParticipant:Lcom/sonyericsson/conversations/model/Participant;

.field private mTitle:Landroid/text/SpannableStringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;Lcom/sonyericsson/conversations/model/Participant;ZLcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask$UpdateRecipientsListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p3, "participant"    # Lcom/sonyericsson/conversations/model/Participant;
    .param p4, "isAnimate"    # Z
    .param p5, "updateRecipientsListener"    # Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask$UpdateRecipientsListener;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;ZLcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask$UpdateRecipientsListener;)V

    .line 27
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateOne2OneRecipientTask;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    .line 25
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 31
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateOne2OneRecipientTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateOne2OneRecipientTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateOne2OneRecipientTask;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->getFormatted(Landroid/content/Context;Lcom/sonyericsson/conversations/model/Participant;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateOne2OneRecipientTask;->mTitle:Landroid/text/SpannableStringBuilder;

    .line 33
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateOne2OneRecipientTask;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    invoke-virtual {v0}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateOne2OneRecipientTask;->mAddress:Ljava/lang/String;

    .line 34
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 38
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateOne2OneRecipientTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateOne2OneRecipientTask;->mUpdateRecipientListener:Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask$UpdateRecipientsListener;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateOne2OneRecipientTask;->mTitle:Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateOne2OneRecipientTask;->mAddress:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateOne2OneRecipientTask;->mIsAnimate:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask$UpdateRecipientsListener;->onOne2OneRecipientsUpdated(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Z)V

    .line 38
    return-void
.end method
