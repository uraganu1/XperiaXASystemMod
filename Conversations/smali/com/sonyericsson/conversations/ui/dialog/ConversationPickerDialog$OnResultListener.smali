.class public interface abstract Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$OnResultListener;
.super Ljava/lang/Object;
.source "ConversationPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnResultListener"
.end annotation


# virtual methods
.method public abstract onCancel()V
.end method

.method public abstract onConversationSelected(Lcom/sonyericsson/conversations/conversation/ConversationId;)V
.end method

.method public abstract onNewMessageClicked()V
.end method
