.class public interface abstract Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$PopulatorListener;
.super Ljava/lang/Object;
.source "ConversationPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PopulatorListener"
.end annotation


# virtual methods
.method public abstract handleListDoneUpdating(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract handleListUpdateTick(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/ui/dialog/ConversationPickerDialog$ConversationData;",
            ">;)V"
        }
    .end annotation
.end method
