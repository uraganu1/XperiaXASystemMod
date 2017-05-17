.class Lcom/sonyericsson/conversations/ui/ConversationListItemView$DefaultParticipant;
.super Lcom/sonyericsson/conversations/model/Participant;
.source "ConversationListItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/ConversationListItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultParticipant"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 566
    invoke-direct {p0, p1}, Lcom/sonyericsson/conversations/model/Participant;-><init>(Ljava/lang/String;)V

    .line 565
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/ConversationListItemView$DefaultParticipant;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getContactId()J
    .locals 2

    .prologue
    .line 571
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getPersonName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 576
    const/4 v0, 0x0

    return-object v0
.end method
