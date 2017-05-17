.class public interface abstract Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener;
.super Ljava/lang/Object;
.source "ImConversationInvitationEventListener.java"

# interfaces
.implements Lcom/sonymobile/jms/conversation/ImConversationEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/jms/conversation/ImConversationInvitationEventListener$ImInvitationStatus;
    }
.end annotation


# virtual methods
.method public abstract onImConversationInvitationReceived(Lcom/sonymobile/jms/conversation/ImTextConversationInvitation;)V
.end method

.method public abstract onImFileMessageInvitationReceived(Lcom/sonymobile/jms/conversation/ImFileMessageInvitation;)V
.end method
