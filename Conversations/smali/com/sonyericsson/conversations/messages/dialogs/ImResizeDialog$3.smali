.class Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$3;
.super Ljava/lang/Object;
.source "ImResizeDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;


# direct methods
.method constructor <init>(Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$3;->this$0:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 151
    iget-object v0, p0, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog$3;->this$0:Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;

    invoke-static {v0}, Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;->-get1(Lcom/sonyericsson/conversations/messages/dialogs/ImResizeDialog;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 150
    return-void
.end method
