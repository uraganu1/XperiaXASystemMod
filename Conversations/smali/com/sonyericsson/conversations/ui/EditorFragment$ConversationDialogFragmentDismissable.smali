.class public Lcom/sonyericsson/conversations/ui/EditorFragment$ConversationDialogFragmentDismissable;
.super Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;
.source "EditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConversationDialogFragmentDismissable"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1496
    invoke-direct {p0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 0

    .prologue
    .line 1499
    invoke-super {p0}, Lcom/sonyericsson/conversations/ui/ConversationDialogFragment;->onPause()V

    .line 1500
    invoke-virtual {p0}, Lcom/sonyericsson/conversations/ui/EditorFragment$ConversationDialogFragmentDismissable;->dismiss()V

    .line 1498
    return-void
.end method
