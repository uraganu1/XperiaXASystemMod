.class public interface abstract Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask$UpdateRecipientsListener;
.super Ljava/lang/Object;
.source "AbstractUpdateRecipientsTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/recipientlist/AbstractUpdateRecipientsTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UpdateRecipientsListener"
.end annotation


# virtual methods
.method public abstract onJoynGroupRecipientsUpdated(Ljava/util/List;Landroid/text/SpannableStringBuilder;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/recipientlist/RecipientInfo;",
            ">;",
            "Landroid/text/SpannableStringBuilder;",
            "Z)V"
        }
    .end annotation
.end method

.method public abstract onOne2OneRecipientsUpdated(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Z)V
.end method

.method public abstract onXmsGroupRecipientsUpdated(Landroid/text/SpannableStringBuilder;Z)V
.end method
