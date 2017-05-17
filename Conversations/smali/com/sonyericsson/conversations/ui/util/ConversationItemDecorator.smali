.class public Lcom/sonyericsson/conversations/ui/util/ConversationItemDecorator;
.super Ljava/lang/Object;
.source "ConversationItemDecorator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setContactImage(Ljava/util/List;Lcom/sonyericsson/conversations/ui/ConversationContactBadge;)V
    .locals 4
    .param p1, "contactBadge"    # Lcom/sonyericsson/conversations/ui/ConversationContactBadge;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;",
            "Lcom/sonyericsson/conversations/ui/ConversationContactBadge;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 47
    .local v0, "nrParticipants":I
    if-nez v0, :cond_1

    .line 48
    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->setVisibility(I)V

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    if-ne v0, v3, :cond_2

    .line 50
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/conversations/model/Participant;

    .line 51
    .local v1, "p":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {p1, v1}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->showContact(Lcom/sonyericsson/conversations/model/Participant;)V

    goto :goto_0

    .line 52
    .end local v1    # "p":Lcom/sonyericsson/conversations/model/Participant;
    :cond_2
    if-le v0, v3, :cond_0

    .line 53
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->showContact(Lcom/sonyericsson/conversations/model/Participant;)V

    goto :goto_0
.end method

.method public static setTitleAndImage(Landroid/content/Context;Ljava/util/List;Landroid/widget/TextView;Lcom/sonyericsson/conversations/ui/ConversationContactBadge;Z)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "textView"    # Landroid/widget/TextView;
    .param p3, "contactBadge"    # Lcom/sonyericsson/conversations/ui/ConversationContactBadge;
    .param p4, "isImGroupConversation"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;",
            "Landroid/widget/TextView;",
            "Lcom/sonyericsson/conversations/ui/ConversationContactBadge;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 25
    .local v1, "nrParticipants":I
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 27
    .local v0, "conversationName":Landroid/text/SpannableStringBuilder;
    if-nez v1, :cond_1

    .line 28
    const/16 v3, 0x8

    invoke-virtual {p3, v3}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->setVisibility(I)V

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 30
    const v4, 0x7f0b00ca

    .line 29
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 39
    :cond_0
    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    return-void

    .line 31
    :cond_1
    if-ne v1, v4, :cond_2

    if-eqz p4, :cond_4

    .line 35
    :cond_2
    if-gt v1, v4, :cond_3

    if-eqz p4, :cond_0

    .line 36
    :cond_3
    invoke-virtual {p3, p1}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->showGroupContact(Ljava/util/List;)V

    .line 37
    invoke-static {v0, p0, p1, v3}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->appendFormattedList(Landroid/text/SpannableStringBuilder;Landroid/content/Context;Ljava/util/List;Z)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 32
    :cond_4
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sonyericsson/conversations/model/Participant;

    .line 33
    .local v2, "p":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {p3, v2}, Lcom/sonyericsson/conversations/ui/ConversationContactBadge;->showContact(Lcom/sonyericsson/conversations/model/Participant;)V

    .line 34
    invoke-static {v0, p0, v2}, Lcom/sonyericsson/conversations/util/ParticipantUtils;->appendFormatted(Landroid/text/SpannableStringBuilder;Landroid/content/Context;Lcom/sonyericsson/conversations/model/Participant;)Landroid/text/SpannableStringBuilder;

    goto :goto_0
.end method
