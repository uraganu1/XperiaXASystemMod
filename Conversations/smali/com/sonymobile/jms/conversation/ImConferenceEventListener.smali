.class public interface abstract Lcom/sonymobile/jms/conversation/ImConferenceEventListener;
.super Ljava/lang/Object;
.source "ImConferenceEventListener.java"

# interfaces
.implements Lcom/sonymobile/jms/conversation/ImConversationEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;
    }
.end annotation


# virtual methods
.method public abstract onConferenceEventUpdate(Lcom/sonymobile/jms/conversation/ImConversationId;Lcom/sonymobile/jms/contact/ImContactNumber;Lcom/sonymobile/jms/conversation/ImConferenceEventListener$ImConferenceState;)V
.end method
