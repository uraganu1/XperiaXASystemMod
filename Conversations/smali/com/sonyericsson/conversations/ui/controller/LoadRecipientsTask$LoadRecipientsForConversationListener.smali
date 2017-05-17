.class public interface abstract Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask$LoadRecipientsForConversationListener;
.super Ljava/lang/Object;
.source "LoadRecipientsTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/controller/LoadRecipientsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "LoadRecipientsForConversationListener"
.end annotation


# virtual methods
.method public abstract onRecipientsLoadedForConversation(Ljava/util/Collection;Lcom/sonyericsson/conversations/conversation/Conversation;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/sonymobile/jms/contact/ImContactNumber;",
            ">;",
            "Lcom/sonyericsson/conversations/conversation/Conversation;",
            ")V"
        }
    .end annotation
.end method
