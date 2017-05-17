.class public interface abstract Lcom/sonyericsson/conversations/conversation/ConversationId;
.super Ljava/lang/Object;
.source "ConversationId.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/conversations/conversation/ConversationId$Type;
    }
.end annotation


# static fields
.field public static final IM_CONVERSATION_ID_NONE:Lcom/sonymobile/jms/conversation/ImConversationId;


# virtual methods
.method public abstract getImConversationId()Lcom/sonymobile/jms/conversation/ImConversationId;
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getThreadId()J
.end method

.method public abstract getType()Lcom/sonyericsson/conversations/conversation/ConversationId$Type;
.end method
