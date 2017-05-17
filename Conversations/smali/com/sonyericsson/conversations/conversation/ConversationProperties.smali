.class public Lcom/sonyericsson/conversations/conversation/ConversationProperties;
.super Ljava/lang/Object;
.source "ConversationProperties.java"


# instance fields
.field private mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

.field private mIsMuted:Z


# direct methods
.method public constructor <init>(Lcom/sonyericsson/conversations/conversation/ConversationId;)V
    .locals 1
    .param p1, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationProperties;->mIsMuted:Z

    .line 19
    iput-object p1, p0, Lcom/sonyericsson/conversations/conversation/ConversationProperties;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    .line 18
    return-void
.end method

.method public static createDefault(Lcom/sonyericsson/conversations/conversation/ConversationId;)Lcom/sonyericsson/conversations/conversation/ConversationProperties;
    .locals 1
    .param p0, "conversationId"    # Lcom/sonyericsson/conversations/conversation/ConversationId;

    .prologue
    .line 23
    new-instance v0, Lcom/sonyericsson/conversations/conversation/ConversationProperties;

    invoke-direct {v0, p0}, Lcom/sonyericsson/conversations/conversation/ConversationProperties;-><init>(Lcom/sonyericsson/conversations/conversation/ConversationId;)V

    return-object v0
.end method


# virtual methods
.method public getConversationId()Lcom/sonyericsson/conversations/conversation/ConversationId;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationProperties;->mConversationId:Lcom/sonyericsson/conversations/conversation/ConversationId;

    return-object v0
.end method

.method public isMuted()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/sonyericsson/conversations/conversation/ConversationProperties;->mIsMuted:Z

    return v0
.end method

.method public setIsMuted(Z)V
    .locals 0
    .param p1, "isMuted"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/sonyericsson/conversations/conversation/ConversationProperties;->mIsMuted:Z

    .line 34
    return-void
.end method
