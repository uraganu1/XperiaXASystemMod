.class public Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;
.super Ljava/lang/Object;
.source "RecipientInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo$RecipientState;
    }
.end annotation


# instance fields
.field private mParticipant:Lcom/sonyericsson/conversations/model/Participant;

.field private mRecipientState:Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo$RecipientState;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/model/Participant;Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo$RecipientState;)V
    .locals 0
    .param p1, "participant"    # Lcom/sonyericsson/conversations/model/Participant;
    .param p2, "recipientState"    # Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo$RecipientState;

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    .line 21
    iput-object p2, p0, Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;->mRecipientState:Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo$RecipientState;

    .line 19
    return-void
.end method


# virtual methods
.method public getParticipant()Lcom/sonyericsson/conversations/model/Participant;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;->mParticipant:Lcom/sonyericsson/conversations/model/Participant;

    return-object v0
.end method

.method public getRecipientState()Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo$RecipientState;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;->mRecipientState:Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo$RecipientState;

    return-object v0
.end method
