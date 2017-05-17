.class public Lcom/sonyericsson/conversations/ui/recipientlist/UpdateXmsGroupRecipientsTask;
.super Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask;
.source "UpdateXmsGroupRecipientsTask.java"


# instance fields
.field private final mParticipantList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Landroid/text/SpannableStringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;Ljava/util/List;ZLcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask$UpdateRecipientsListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;
    .param p4, "isAnimate"    # Z
    .param p5, "updateRecipientListener"    # Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask$UpdateRecipientsListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonyericsson/conversations/conversation/ConversationId;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;Z",
            "Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask$UpdateRecipientsListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 26
    .local p3, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask;-><init>(Landroid/content/Context;Lcom/sonyericsson/conversations/conversation/ConversationId;ZLcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask$UpdateRecipientsListener;)V

    .line 27
    iput-object p3, p0, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateXmsGroupRecipientsTask;->mParticipantList:Ljava/util/List;

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
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateXmsGroupRecipientsTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateXmsGroupRecipientsTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateXmsGroupRecipientsTask;->mParticipantList:Ljava/util/List;

    .line 32
    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->getFormattedList(Landroid/content/Context;Ljava/util/List;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateXmsGroupRecipientsTask;->mTitle:Landroid/text/SpannableStringBuilder;

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
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateXmsGroupRecipientsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateXmsGroupRecipientsTask;->mUpdateRecipientListener:Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask$UpdateRecipientsListener;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateXmsGroupRecipientsTask;->mTitle:Landroid/text/SpannableStringBuilder;

    iget-boolean v2, p0, Lcom/sonyericsson/conversations/ui/recipientlist/UpdateXmsGroupRecipientsTask;->mIsAnimate:Z

    invoke-interface {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask$UpdateRecipientsListener;->onXmsGroupRecipientsUpdated(Landroid/text/SpannableStringBuilder;Z)V

    .line 38
    return-void
.end method
