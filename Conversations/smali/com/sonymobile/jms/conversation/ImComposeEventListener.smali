.class public interface abstract Lcom/sonymobile/jms/conversation/ImComposeEventListener;
.super Ljava/lang/Object;
.source "ImComposeEventListener.java"

# interfaces
.implements Lcom/sonymobile/jms/conversation/ImConversationEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;
    }
.end annotation


# virtual methods
.method public abstract onComposingEventUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/contact/ImContactNumber;Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;)V
.end method
