.class Lcom/sonyericsson/conversations/ui/EditorFragment$12;
.super Ljava/lang/Object;
.source "EditorFragment.java"

# interfaces
.implements Lcom/sonyericsson/conversations/ui/Composer$ComposerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/ui/EditorFragment;->initWarningTextView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/ui/EditorFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/ui/EditorFragment;

    .prologue
    .line 1554
    iput-object p1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public messageTypeChanged(II)V
    .locals 2
    .param p1, "oldType"    # I
    .param p2, "newType"    # I

    .prologue
    .line 1563
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    iget-object v1, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-get3(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/Composer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonyericsson/conversations/ui/Composer;->isComposingImMessage()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-wrap8(Lcom/sonyericsson/conversations/ui/EditorFragment;Z)V

    .line 1564
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-get10(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->messageTypeChanged(II)V

    .line 1562
    return-void
.end method

.method public smsCounterInfoChanged(Lcom/sonyericsson/conversations/ui/SmsCounterInfo;)V
    .locals 1
    .param p1, "newInfo"    # Lcom/sonyericsson/conversations/ui/SmsCounterInfo;

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/sonyericsson/conversations/ui/EditorFragment$12;->this$0:Lcom/sonyericsson/conversations/ui/EditorFragment;

    invoke-static {v0}, Lcom/sonyericsson/conversations/ui/EditorFragment;->-get10(Lcom/sonyericsson/conversations/ui/EditorFragment;)Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonyericsson/conversations/ui/TextInputInfoBoxHandler;->smsCounterInfoChanged(Lcom/sonyericsson/conversations/ui/SmsCounterInfo;)V

    .line 1557
    return-void
.end method
